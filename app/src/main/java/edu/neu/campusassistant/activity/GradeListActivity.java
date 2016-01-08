package edu.neu.campusassistant.activity;

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

    private List<String> mTermNameList;
    private List<String> mTermIdList;
    private List<Grade> mGradeList;
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
        mRecyclerView.setAdapter(new GradeListAdapter(this));

        mSemesterSpinnerAdapter = new SemesterSpinnerAdapter(this);
        mSemesterSpinner.setAdapter(mSemesterSpinnerAdapter);
        mSemesterSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                View rootView= parent.getChildAt(0);
                ((TextView)rootView.findViewById(R.id.semester_spinner_item_text_view)).setTextColor(Color.WHITE);

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
                                Log.d("GradeListActivity", mTermNameList.toString());
                                Log.d("GradeListActivity", mTermIdList.toString());
                            }
                            mSemesterSpinnerAdapter.setmTermNameList(mTermNameList);
                            mSemesterSpinnerAdapter.notifyDataSetChanged();
                        }
                    },
                    new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            Toast.makeText(getApplicationContext(), "获取学期列表失败 请检查网络连接", Toast.LENGTH_LONG).show();
                            Log.d("GradeListActivity", "Error: " + error.getMessage());
                        }
                    }
            );

            AppController.getInstance().addToRequestQueue(request);
        }else {
            Log.d("GradeListActivity", "token empty");
        }
    }

    private void initGradeList(){
        mSharedPreferences = this.getSharedPreferences(Constants.SHARED_PREFS_KEY, MODE_PRIVATE);
        String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");

        mGradeList = new ArrayList<Grade>();

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

                            }

                        }
                    },
                    new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            Toast.makeText(getApplicationContext(), "获取学期列表失败 请检查网络连接", Toast.LENGTH_LONG).show();
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
