package edu.neu.campusassistant.activity;

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
import android.widget.GridView;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONArray;
import org.json.JSONObject;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.adapter.BuildingListAdapter;
import edu.neu.campusassistant.adapter.ClassroomListAdapter;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;

public class EmptyClassroomActivity extends AppCompatActivity {

	@Bind(R.id.app_bar)
	Toolbar mToolBar;
	ActionBar mAppBar;
	@Bind(R.id.building_spinner)
	AppCompatSpinner mBuildingSpinner;
	@Bind(R.id.classroom_list)
	GridView mClassroomList;

	private SharedPreferences mSharedPreferences;

	private BuildingListAdapter mBuildingListAdapter;
	private ClassroomListAdapter mClassroomListAdapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_empty_classroom);

		this.mSharedPreferences = getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);

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
				Log.d("EmptyClassroomActivity", "获取教学楼列表失败");
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

		mClassroomList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
				final String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");

				if (token.equals("")) {
					return;
				}

				JsonObjectRequest request = new JsonObjectRequest(
						"http://202.118.31.241:8080/api/v1/freeTimes/" +
								mClassroomListAdapter.getClassroomId(i) + "?token=" + token,
						new ClassroomJSONObjectListener(i),
						new Response.ErrorListener() {
							@Override
							public void onErrorResponse(VolleyError error) {

							}
						}
				);

				AppController.getInstance().addToRequestQueue(request);
			}
		});
	}

	private class ClassroomJSONObjectListener implements Response.Listener<JSONObject>{
		int index;

		public ClassroomJSONObjectListener(int index) {
			this.index = index;
		}

		@Override
		public void onResponse(JSONObject response) {
			JSONArray data = response.optJSONArray("data");

			if (data != null) {
				String message = "";
				int j = 0;
				for (int i = 0; i < data.length(); ++i) {
					JSONObject object = data.optJSONObject(i);
					if (object == null) continue;

					message += ++j + " - " + ++j + "节\t" + object.optString("status") + "\n";
				}
				AlertDialog.Builder builder = new AlertDialog.Builder(EmptyClassroomActivity.this);

				builder.setMessage(message)
						.setTitle(mClassroomListAdapter.getClassroomName(index));

				AlertDialog dialog = builder.create();
				dialog.show();
			}
		}
	}
}
