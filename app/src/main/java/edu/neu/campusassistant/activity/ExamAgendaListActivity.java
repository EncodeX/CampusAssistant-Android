package edu.neu.campusassistant.activity;

import android.content.SharedPreferences;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.adapter.ExamAgendaListAdapter;
import edu.neu.campusassistant.bean.Exam;
import edu.neu.campusassistant.bean.Grade;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;

public class ExamAgendaListActivity extends AppCompatActivity {

    @Bind(R.id.app_bar)
    Toolbar mToolBar;
    ActionBar mAppBar;
    @Bind(R.id.exam_list)
    RecyclerView mRecyclerView;

    SharedPreferences mSharedPreferences;

    private List<Exam> mExamList;
    private ExamAgendaListAdapter mExamAgendaListAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_exam_agenda_list);
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
        mExamAgendaListAdapter = new ExamAgendaListAdapter(this);
        mRecyclerView.setLayoutManager(new LinearLayoutManager(this));//这里用线性显示 类似于listview
        mRecyclerView.setAdapter(mExamAgendaListAdapter);

        initExamList();
    }

    private void initExamList(){
        mSharedPreferences = this.getSharedPreferences(Constants.SHARED_PREFS_KEY, MODE_PRIVATE);
        String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");
        mExamList = new ArrayList<Exam>();

        if (!token.equals("")) {
            Log.d("ExamAgendaListActivity", token);
            String requestString = "http://202.118.31.241:8080/api/v1/examSchedule?token="+token;

            JsonObjectRequest request = new JsonObjectRequest(
                    requestString,
                    new Response.Listener<JSONObject>() {
                        @Override
                        public void onResponse(JSONObject response) {
                            JSONArray data = response.optJSONArray("data");
                            if (data != null) {
                                int nextCourse = 0, dayOfWeek = 0;
                                mExamList.clear();
                                if (data.length() == 0){
                                    Toast.makeText(getApplicationContext(), "目前没有任何考试安排", Toast.LENGTH_LONG).show();
                                }else {
                                    for (int i = 0; i < data.length(); i++) {
                                        Exam exam = new Exam();
                                        JSONObject gradeInfo = data.optJSONObject(i);
                                        exam.setCourseName(gradeInfo.optString("courseName"));
                                        exam.setTime(gradeInfo.optString("time"));
                                        exam.setClassroom(gradeInfo.optString("classroom"));
                                        mExamList.add(exam);
                                    }
                                }
                                mExamAgendaListAdapter.setmExamList(mExamList);
                                mExamAgendaListAdapter.notifyDataSetChanged();
                            }
                            Log.d("ExamAgendaListActivity", mExamList.toString());
                            Log.d("ExamAgendaListActivity", response.toString());
                        }
                    },
                    new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            Toast.makeText(getApplicationContext(), "获取考试时间失败，请检查网络连接", Toast.LENGTH_LONG).show();
                            Log.d("ExamAgendaListActivity", "Error: " + error.getMessage());
                        }
                    }
            );

            AppController.getInstance().addToRequestQueue(request);
        }else {
            Toast.makeText(getApplicationContext(), "登录过期，请返回重新登录", Toast.LENGTH_LONG).show();
            Log.d("ExamAgendaListActivity", "token empty");
        }
    }
}
