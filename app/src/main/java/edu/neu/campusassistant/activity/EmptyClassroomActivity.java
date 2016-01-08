package edu.neu.campusassistant.activity;

import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.adapter.BuildingListAdapter;
import edu.neu.campusassistant.adapter.ClassroomListAdapter;

public class EmptyClassroomActivity extends AppCompatActivity {

	@Bind(R.id.app_bar)
	Toolbar mToolBar;
	ActionBar mAppBar;
	@Bind(R.id.building_spinner)
	AppCompatSpinner mBuildingSpinner;
	@Bind(R.id.classroom_list)
	GridView mClassroomList;

	private BuildingListAdapter mBuildingListAdapter;
	private ClassroomListAdapter mClassroomListAdapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_empty_classroom);

		initView();
	}

	@Override
	protected void onResume() {
		super.onResume();

		mBuildingListAdapter.refreshBuildingList();
	}

	private void initView() {

		ButterKnife.bind(this);

		setSupportActionBar(mToolBar);
		mAppBar = getSupportActionBar();

		if (mAppBar != null) mAppBar.setDisplayHomeAsUpEnabled(true);
		mToolBar.setNavigationOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				onBackPressed();
			}
		});

		mBuildingListAdapter = new BuildingListAdapter(this);
		mClassroomListAdapter = new ClassroomListAdapter(this);

		mBuildingListAdapter.setListRefreshListener(new BuildingListAdapter.BuildingListRefreshListener() {
			@Override
			public void onRefreshListSucceeded() {
				mClassroomListAdapter.refreshClassroomList(mBuildingListAdapter.getBuildingId(0));
			}

			@Override
			public void onRefreshListFailed() {
				Log.d("EmptyClassroomActivity","获取教学楼列表失败");
			}
		});

		mBuildingSpinner.setAdapter(mBuildingListAdapter);
		mClassroomList.setAdapter(mClassroomListAdapter);

		mBuildingSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
			@Override
			public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
				mClassroomListAdapter.refreshClassroomList(mBuildingListAdapter.getBuildingId(i));
			}

			@Override
			public void onNothingSelected(AdapterView<?> adapterView) {

			}
		});
	}
}
