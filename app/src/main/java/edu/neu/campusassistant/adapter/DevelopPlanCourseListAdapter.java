package edu.neu.campusassistant.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

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
import edu.neu.campusassistant.bean.DevelopPlanCourse;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 16/1/9
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.adapter
 */
public class DevelopPlanCourseListAdapter extends BaseAdapter {
	private List<DevelopPlanCourse> mCourseList;
	private Context mContext;
	private SharedPreferences mSharedPreferences;

	private CourseListRefreshListener mCourseListRefreshListener;

	public DevelopPlanCourseListAdapter(Context context) {
		this.mCourseList = new ArrayList<>();
		this.mContext = context;

		this.mSharedPreferences = context.getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);
	}

	@Override
	public int getCount() {
		return mCourseList.size();
	}

	@Override
	public Object getItem(int i) {
		return null;
	}

	@Override
	public long getItemId(int i) {
		return i;
	}

	@Override
	public View getView(int i, View view, ViewGroup viewGroup) {
		ViewHolderItem viewHolderItem;
		if (view == null) {
			view = LayoutInflater.from(mContext).inflate(R.layout.develop_plan_course_item, viewGroup, false);
			viewHolderItem = new ViewHolderItem(view);
			view.setTag(viewHolderItem);
		} else {
			viewHolderItem = (ViewHolderItem) view.getTag();
		}

		final String label = "第" + mCourseList.get(i).getTermName() + "学期 " + mCourseList.get(i).getCourseProperty();
		viewHolderItem.textLabel.setText(label);
		viewHolderItem.subTextLabel.setText(mCourseList.get(i).getCourseName());

		return view;
	}

	public String getCourseId(int index){
		return mCourseList.get(index).getCourseId();
	}

	public String getCourseName(int index){
		return mCourseList.get(index).getCourseName();
	}

	public void setCourseListRefreshListener(CourseListRefreshListener courseListRefreshListener) {
		this.mCourseListRefreshListener = courseListRefreshListener;
	}

	public void refreshCourseList(String batchId, String professionId){
		final String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");
		JsonObjectRequest request = new JsonObjectRequest(
				"http://202.118.31.241:8080/api/v1/professionDevelopPlan/" + batchId + "/" + professionId + "?token=" + token,
				new CourseJsonObjectListener(),
				new Response.ErrorListener() {
					@Override
					public void onErrorResponse(VolleyError error) {
						Log.d("PlanCourseListAdapter", "获取课程列表失败");
						if(mCourseListRefreshListener != null) mCourseListRefreshListener.onRefreshListFailed();
					}
				}
		);

		AppController.getInstance().addToRequestQueue(request);
	}

	static class ViewHolderItem {
		@Bind(R.id.text_label)
		TextView textLabel;
		@Bind(R.id.sub_text_label)
		TextView subTextLabel;

		public ViewHolderItem(View itemView) {
			ButterKnife.bind(this, itemView);
		}
	}

	private class CourseJsonObjectListener implements Response.Listener<JSONObject>{
		@Override
		public void onResponse(JSONObject response) {
			Log.d("ProfessionListAdapter",response.toString());
			JSONArray data = response.optJSONArray("data");

			if (data != null) {
				mCourseList.clear();

				for(int i=0; i<data.length() ; ++i){
					JSONObject object = data.optJSONObject(i);
					if(object == null) continue;

					mCourseList.add(new DevelopPlanCourse(object));
				}

				notifyDataSetChanged();
				if(mCourseListRefreshListener != null) mCourseListRefreshListener.onRefreshListSucceeded();
			}
		}
	}

	public interface CourseListRefreshListener{
		void onRefreshListSucceeded();
		void onRefreshListFailed();
	}
}
