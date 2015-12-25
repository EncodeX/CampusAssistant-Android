package edu.neu.campusassistant.activity;

import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.View;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.adapter.ExamAgendaListAdapter;

public class ExamAgendaListActivity extends AppCompatActivity {

    @Bind(R.id.app_bar)
    Toolbar mToolBar;
    ActionBar mAppBar;
    @Bind(R.id.exam_list)
    RecyclerView mRecyclerView;

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

        mRecyclerView.setLayoutManager(new LinearLayoutManager(this));//这里用线性显示 类似于listview
        mRecyclerView.setAdapter(new ExamAgendaListAdapter(this));
    }
}
