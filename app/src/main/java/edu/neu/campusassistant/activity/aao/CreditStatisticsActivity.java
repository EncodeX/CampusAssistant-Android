package edu.neu.campusassistant.activity.aao;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.ListView;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.adapter.CreditListAdapter;
import edu.neu.campusassistant.utils.Constants;

public class CreditStatisticsActivity extends AppCompatActivity {

	@Bind(R.id.app_bar)
	Toolbar mToolBar;
	ActionBar mAppBar;
	@Bind(R.id.credit_list)
	ListView mCreditList;

	private SharedPreferences mSharedPreferences;
	private CreditListAdapter mCreditListAdapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_credit_statistics);

		this.mSharedPreferences = getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);

		initView();
	}

	@Override
	protected void onResume() {
		super.onResume();

		mCreditListAdapter.refreshCreditList();
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

		mCreditListAdapter = new CreditListAdapter(this);
		mCreditList.setAdapter(mCreditListAdapter);
	}
}
