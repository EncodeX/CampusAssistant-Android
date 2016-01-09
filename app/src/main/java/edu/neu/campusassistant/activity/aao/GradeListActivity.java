package edu.neu.campusassistant.activity.aao;

import android.content.SharedPreferences;
import android.graphics.Color;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.StringTokenizer;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.adapter.ExamAgendaListAdapter;
import edu.neu.campusassistant.adapter.GradeListAdapter;
import edu.neu.campusassistant.adapter.SemesterSpinnerAdapter;
import edu.neu.campusassistant.bean.Course;
import edu.neu.campusassistant.bean.Grade;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;

public class GradeListActivity extends AppCompatActivity {
    @Bind(R.id.app_bar)
    Toolbar mToolBar;
    ActionBar mAppBar;
    @Bind(R.id.grade_list)
    RecyclerView mRecyclerView;
    @Bind(R.id.grade_semester_spinner)
    Spinner mSemesterSpinner;
    @Bind(R.id.grade_average_point)
    TextView mAveragePointTextView;

    private List<String> mTermNameList;
    private List<String> mTermIdList;
    private List<Grade> mGradeList;
    private GradeListAdapter mGradeAdapter;
    private SemesterSpinnerAdapter mSemesterSpinnerAdapter;

    SharedPreferences mSharedPreferences;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_grade_list);

        ButterKnife.bind(this);

        setSupportActionBar(mToolBar);
        mAppBar = getSupportActionBar();

        if(mAppBar!=null) mAppBar.setDisplayHomeAsUpEnabled(true);
        mToolBar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                onBackPressed();
            }
        });

        mRecyclerView.setLayoutManager(new LinearLayoutManager(this));//这里用线性显示 类似于listview
        mGradeAdapter = new GradeListAdapter(this);
        mRecyclerView.setAdapter(mGradeAdapter);

        mSemesterSpinnerAdapter = new SemesterSpinnerAdapter(this);
        mSemesterSpinner.setAdapter(mSemesterSpinnerAdapter);
        mSemesterSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                View rootView= parent.getChildAt(0);
                ((TextView)rootView.findViewById(R.id.semester_spinner_item_text_view)).setTextColor(Color.WHITE);
                initGradeList(position);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });
        initSemesterList();
    }

    private void initSemesterList(){
        mSharedPreferences = this.getSharedPreferences(Constants.SHARED_PREFS_KEY, MODE_PRIVATE);
        String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");

        mTermNameList = new ArrayList<String>();
        mTermIdList = new ArrayList<String>();

        if (!token.equals("")) {
            Log.d("GradeListActivity", token);
            String requestString = "http://202.118.31.241:8080/api/v1/termList?token="+token;

            JsonObjectRequest request = new JsonObjectRequest(
                    requestString,
                    new Response.Listener<JSONObject>() {
                        @Override
                        public void onResponse(JSONObject response) {
                            JSONArray data = response.optJSONArray("data");
                            for (int i = 0; i < data.length(); i++) {
                                String termName = data.optJSONObject(i).optString("termName");
                                String termId = data.optJSONObject(i).optString("termId");
                                mTermNameList.add(termName);
                                mTermIdList.add(termId);
                            }
                            String errorMsg = response.optString("errMsg");
                            if (!errorMsg.equals("")){
                                Toast.makeText(getApplicationContext(), "登录过期，请返回重新登录", Toast.LENGTH_LONG).show();
                            }
                            mSemesterSpinnerAdapter.setmTermNameList(mTermNameList);
                            mSemesterSpinnerAdapter.notifyDataSetChanged();
                        }
                    },
                    new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            Toast.makeText(getApplicationContext(), "获取学期列表失败，请检查网络连接", Toast.LENGTH_LONG).show();
                            Log.d("GradeListActivity", "Error: " + error.getMessage());
                        }
                    }
            );

            AppController.getInstance().addToRequestQueue(request);
        }else {
            Toast.makeText(getApplicationContext(), "登录过期，请返回重新登录", Toast.LENGTH_LONG).show();
            Log.d("GradeListActivity", "token empty");
        }
    }

    private void initGradeList(int position){
        mSharedPreferences = this.getSharedPreferences(Constants.SHARED_PREFS_KEY, MODE_PRIVATE);
        String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");
        String termId = mTermIdList.get(position);
        mGradeList = new ArrayList<Grade>();

        if (!token.equals("") && !termId.equals("")) {
            Log.d("GradeListActivity", token);
            String requestString = "http://202.118.31.241:8080/api/v1/score/"+termId+ "?token="+token;

            JsonObjectRequest request = new JsonObjectRequest(
                    requestString,
                    new Response.Listener<JSONObject>() {
                        @Override
                        public void onResponse(JSONObject response) {
                            JSONArray data = response.optJSONArray("data");
                            if (data != null) {
                                int nextCourse = 0, dayOfWeek = 0;
                                mGradeList.clear();
                                if (data.length() == 0){
                                    Toast.makeText(getApplicationContext(), "该学期没有任何成绩公布", Toast.LENGTH_LONG).show();
                                }else {
                                    for (int i = 0; i < data.length(); i++) {
                                        Grade grade = new Grade();
                                        JSONObject gradeInfo = data.optJSONObject(i);
                                        grade.setTermName(gradeInfo.optString("termName"));
                                        grade.setCourseName(gradeInfo.optString("courseName"));
                                        grade.setCredit(gradeInfo.optString("credit"));
                                        grade.setExamType(gradeInfo.optString("examType"));
                                        grade.setScore(gradeInfo.optString("score"));
                                        grade.setScore1(gradeInfo.optString("score1"));
                                        grade.setScore2(gradeInfo.optString("score2"));
                                        grade.setScore3(gradeInfo.optString("score3"));
                                        grade.setCourseType(gradeInfo.optString("courseType"));
                                        grade.setCourseGroup(gradeInfo.optString("courseGroup"));
                                        mGradeList.add(grade);
                                    }
                                    String point = data.optJSONObject(0).optString("point");
                                    mAveragePointTextView.setText("平均学分绩点 "+ point);
                                }
                                mGradeAdapter.setmGradeList(mGradeList);
                                mGradeAdapter.notifyDataSetChanged();
                            }
                            Log.d("GradeListActivity", response.toString());
                        }
                    },
                    new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            Toast.makeText(getApplicationContext(), "获取成绩失败，请检查网络连接", Toast.LENGTH_LONG).show();
                            Log.d("GradeListActivity", "Error: " + error.getMessage());
                        }
                    }
            );

            AppController.getInstance().addToRequestQueue(request);
        }else {
            Log.d("GradeListActivity", "token empty");
        }
    }

}
