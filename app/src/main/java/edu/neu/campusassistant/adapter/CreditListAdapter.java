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
import edu.neu.campusassistant.bean.CreditCourseGroup;
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 16/1/9
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.adapter
 */
public class CreditListAdapter extends BaseAdapter {
	private List<CreditCourseGroup> mCourseGroupList;
	private Context mContext;
	private SharedPreferences mSharedPreferences;

	private CreditListRefreshListener mCreditListRefreshListener;

	public CreditListAdapter(Context context) {
		this.mCourseGroupList = new ArrayList<>();
		this.mContext = context;

		this.mSharedPreferences = context.getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);
	}

	@Override
	public int getCount() {
		return mCourseGroupList.size();
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
			view = LayoutInflater.from(mContext).inflate(R.layout.credit_list_item, viewGroup, false);
			viewHolderItem = new ViewHolderItem(view);
			view.setTag(viewHolderItem);
		} else {
			viewHolderItem = (ViewHolderItem) view.getTag();
		}

		final CreditCourseGroup creditCourseGroup = mCourseGroupList.get(i);
		final String label = "计划学分: " + creditCourseGroup.getGraduationStandard() +
				"  已修学分: " + creditCourseGroup.getHaveCredit() + "  学分差: " + creditCourseGroup.getCreditDiff();
		final String subLabel = "不及格学分和: " + creditCourseGroup.getFailCredit() +
				"  不及格课程数量: " + creditCourseGroup.getFailCourse();
		viewHolderItem.textTitle.setText(creditCourseGroup.getCourseGroup());
		viewHolderItem.textLabel.setText(label);
		viewHolderItem.subTextLabel.setText(subLabel);

		return view;
	}

	public void setCreditListRefreshListener(CreditListRefreshListener creditListRefreshListener) {
		this.mCreditListRefreshListener = creditListRefreshListener;
	}

	public void refreshCreditList(){
		final String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");
		JsonObjectRequest request = new JsonObjectRequest(
				"http://202.118.31.241:8080/api/v1/academicWarning?token=" + token,
				new CourseJsonObjectListener(),
				new Response.ErrorListener() {
					@Override
					public void onErrorResponse(VolleyError error) {
						Log.d("PlanCourseListAdapter", "获取课程群列表失败");
						if(mCreditListRefreshListener != null) mCreditListRefreshListener.onRefreshListFailed();
					}
				}
		);

		AppController.getInstance().addToRequestQueue(request);
	}

	static class ViewHolderItem {
		@Bind(R.id.text_title)
		TextView textTitle;
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
				mCourseGroupList.clear();

				for(int i=0; i<data.length() ; ++i){
					JSONObject object = data.optJSONObject(i);
					if(object == null) continue;

					mCourseGroupList.add(new CreditCourseGroup(object));
				}

				notifyDataSetChanged();
				if(mCreditListRefreshListener != null) mCreditListRefreshListener.onRefreshListSucceeded();
			}
		}
	}

	public interface CreditListRefreshListener {
		void onRefreshListSucceeded();
		void onRefreshListFailed();
	}
}
