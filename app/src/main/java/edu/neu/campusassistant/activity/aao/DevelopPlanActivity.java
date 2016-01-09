package edu.neu.campusassistant.activity.aao;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONArray;
import org.json.JSONObject;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.adapter.DevelopPlanCourseListAdapter;
import edu.neu.campusassistant.adapter.ProfessionListAdapter;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;

public class DevelopPlanActivity extends AppCompatActivity {

	@Bind(R.id.app_bar)
	Toolbar mToolBar;
	ActionBar mAppBar;
	@Bind(R.id.profession_spinner)
	AppCompatSpinner mProfessionSpinner;
	@Bind(R.id.course_list)
	ListView mCourseList;
	@Bind(R.id.hint_text)
	TextView mHintText;

	private SharedPreferences mSharedPreferences;

	private ProfessionListAdapter mProfessionListAdapter;
	private DevelopPlanCourseListAdapter mCourseListAdapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_develop_plan);

		this.mSharedPreferences = getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);

		initView();
	}

	@Override
	protected void onResume() {
		super.onResume();
		getBatchList();
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

		mProfessionListAdapter = new ProfessionListAdapter(this);
		mCourseListAdapter = new DevelopPlanCourseListAdapter(this);

		mProfessionSpinner.setAdapter(mProfessionListAdapter);
		mCourseList.setAdapter(mCourseListAdapter);

		mProfessionSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
			@Override
			public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
				if(i == 0) return;

				final String batchId = mSharedPreferences.getString(Constants.AAO_PLAN_BATCH_ID, "");
				if(batchId.equals("")) return;

				mCourseListAdapter.refreshCourseList(
						batchId,
						mProfessionListAdapter.getProfessionId(i)
				);

				SharedPreferences.Editor editor = mSharedPreferences.edit();
				editor.putString(Constants.AAO_PLAN_PROFESSION_ID, mProfessionListAdapter.getProfessionId(i));
				editor.apply();
			}

			@Override
			public void onNothingSelected(AdapterView<?> adapterView) {

			}
		});

		mProfessionListAdapter.setProfessionListRefreshListener(new ProfessionListAdapter.ProfessionListRefreshListener() {
			@Override
			public void onRefreshListSucceeded() {
				final String savedId = mSharedPreferences.getString(Constants.AAO_PLAN_PROFESSION_ID, "");
				if(savedId.equals("")) return;

				for(int i=0;i<mProfessionListAdapter.getCount();i++){
					if(mProfessionListAdapter.getProfessionId(i).equals(savedId)){
						mProfessionSpinner.setSelection(i);
						break;
					}
				}
			}

			@Override
			public void onRefreshListFailed() {

			}
		});

		mCourseList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
				final String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");
				final String batchId = mSharedPreferences.getString(Constants.AAO_PLAN_BATCH_ID, "");
				final String professionId = mSharedPreferences.getString(Constants.AAO_PLAN_PROFESSION_ID, "");

				JsonObjectRequest request = new JsonObjectRequest(
						"http://202.118.31.241:8080/api/v1/professionDevelopPlan/" +
								batchId + "/" + professionId + "/" +
								mCourseListAdapter.getCourseId(i) + "?token=" + token,
						new CourseJSONObjectListener(i),
						new Response.ErrorListener() {
							@Override
							public void onErrorResponse(VolleyError error) {
								Log.d("DevelopPlanActivity", "获取课程信息失败");
							}
						}
				);

				AppController.getInstance().addToRequestQueue(request);
			}
		});
	}

	private void getBatchList() {
		final String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");
		if (!token.equals("")) {
			JsonObjectRequest request = new JsonObjectRequest(
					"http://202.118.31.241:8080/api/v1/professionDevelopPlan?token=" + token,
					new BatchJSONObjectListener(),
					new Response.ErrorListener() {
						@Override
						public void onErrorResponse(VolleyError error) {
							Log.d("DevelopPlanActivity", "获取批次信息失败");
						}
					}
			);

			AppController.getInstance().addToRequestQueue(request);
		}
	}

	private class BatchJSONObjectListener implements Response.Listener<JSONObject> {
		@Override
		public void onResponse(JSONObject response) {
			JSONArray data = response.optJSONArray("data");

			if (data != null) {
				final JSONObject object = data.optJSONObject(0);

				if (object != null) {
					final String hint = "批次: " + object.optString("planBatchId") + " " + object.optString("level");
					mHintText.setText(hint);

					SharedPreferences.Editor editor = mSharedPreferences.edit();
					editor.putString(Constants.AAO_PLAN_BATCH_ID, object.optString("planBatchId"));
					editor.apply();

					mProfessionListAdapter.refreshProfessionList();
				}
			}
		}
	}

	private class CourseJSONObjectListener implements Response.Listener<JSONObject>{
		int index;

		public CourseJSONObjectListener(int index) {
			this.index = index;
		}

		@Override
		public void onResponse(JSONObject response) {
			JSONArray data = response.optJSONArray("data");

			if (data != null) {
				JSONObject object = data.optJSONObject(0);
				String message = "";

				message += "课程ID: " + object.optString("courseId") + "\n";
				message += "授课学期: 第" + object.optString("grade") + "学年";
				if(object.optInt("term") == 1) message += "上学期\n";
				else  message += "下学期\n";
				message += "考试类型: " + object.optString("examMode") + "\n";
				message += "所属课程群: " + object.optString("courseGroup") + "\n";
				message += "学时: " + object.optString("hours") + "学时\n";
				message += "学分: " + object.optString("credit") + "学分\n";
				message += "是否为学位课: " + object.optString("isDegree") + "\n";
				message += "课程类别: " + object.optString("courseType") + "\n";
				message += "课程模式: " + object.optString("courseMode");

				AlertDialog.Builder builder = new AlertDialog.Builder(DevelopPlanActivity.this);

				builder.setMessage(message)
						.setTitle(mCourseListAdapter.getCourseName(index));

				AlertDialog dialog = builder.create();
				dialog.show();
			}
		}
	}
}
