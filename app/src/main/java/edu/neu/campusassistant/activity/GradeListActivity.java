package edu.neu.campusassistant.activity;

import android.graphics.Color;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;

import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.adapter.ExamAgendaListAdapter;
import edu.neu.campusassistant.adapter.GradeListAdapter;
import edu.neu.campusassistant.adapter.SemesterSpinnerAdapter;

public class GradeListActivity extends AppCompatActivity {
    @Bind(R.id.app_bar)
    Toolbar mToolBar;
    ActionBar mAppBar;
    @Bind(R.id.grade_list)
    RecyclerView mRecyclerView;
    @Bind(R.id.grade_semester_spinner)
    Spinner mSemesterSpinner;

    private List<String> mSemesterList;


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

//        adapter = new ArrayAdapter<String>(this ,android.R.layout.simple_spinner_item, mItems);
        mSemesterSpinner.setAdapter(new SemesterSpinnerAdapter(this));
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
    }

}
