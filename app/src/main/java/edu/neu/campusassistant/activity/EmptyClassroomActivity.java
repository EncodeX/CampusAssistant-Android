package edu.neu.campusassistant.activity;

import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;

public class EmptyClassroomActivity extends AppCompatActivity {

	@Bind(R.id.app_bar)
	Toolbar mToolBar;
	ActionBar mAppBar;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_empty_classroom);

		initView();
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
	}
}
