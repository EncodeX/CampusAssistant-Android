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
import edu.neu.campusassistant.utils.AppController;
import edu.neu.campusassistant.utils.Constants;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 16/1/8
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.adapter
 */
public class ClassroomListAdapter extends BaseAdapter {
	private List<String> mClassroomNameList, mClassroomIdList;
	private Context mContext;
	private SharedPreferences mSharedPreferences;

	private ClassroomListRefreshListener mClassroomListRefreshListener;

	public ClassroomListAdapter(Context context) {
		this.mClassroomIdList = new ArrayList<>();
		this.mClassroomNameList = new ArrayList<>();

		this.mContext = context;
		this.mSharedPreferences = context.getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);
	}

	@Override
	public int getCount() {
		return mClassroomIdList.size();
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
			view = LayoutInflater.from(mContext).inflate(R.layout.classroom_list_item, viewGroup, false);
			viewHolderItem = new ViewHolderItem(view);
			view.setTag(viewHolderItem);
		} else {
			viewHolderItem = (ViewHolderItem) view.getTag();
		}

		viewHolderItem.classroomLabel.setText(mClassroomNameList.get(i));

		return view;
	}

	public void setClassroomListRefreshListener(ClassroomListRefreshListener classroomListRefreshListener) {
		this.mClassroomListRefreshListener = classroomListRefreshListener;
	}

	public void refreshClassroomList(String buildingId) {
		final String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");

		if (token.equals("")) {
			if (mClassroomListRefreshListener != null)
				mClassroomListRefreshListener.onRefreshListFailed();
			return;
		}

		JsonObjectRequest request = new JsonObjectRequest(
				"http://202.118.31.241:8080/api/v1/freeClassrooms/" + buildingId + "?token=" + token,
				new ClassroomJSONObjectListener(),
				new Response.ErrorListener() {
					@Override
					public void onErrorResponse(VolleyError error) {
						if (mClassroomListRefreshListener != null)
							mClassroomListRefreshListener.onRefreshListFailed();
					}
				}
		);

		AppController.getInstance().addToRequestQueue(request);
	}

	static class ViewHolderItem {
		@Bind(R.id.classroom_label)
		TextView classroomLabel;

		public ViewHolderItem(View itemView) {
			ButterKnife.bind(this, itemView);
		}
	}

	public interface ClassroomListRefreshListener {
		void onRefreshListSucceeded();

		void onRefreshListFailed();
	}

	private class ClassroomJSONObjectListener implements Response.Listener<JSONObject> {
		@Override
		public void onResponse(JSONObject response) {
			JSONArray data = response.optJSONArray("data");

			if (data != null) {
				mClassroomIdList.clear();
				mClassroomNameList.clear();

				for (int i = 0; i < data.length(); ++i) {
					JSONObject object = data.optJSONObject(i);
					if (object == null) continue;
					mClassroomIdList.add(object.optString("classroomsId"));
					mClassroomNameList.add(object.optString("classroomsName"));
				}

				if (mClassroomListRefreshListener != null)
					mClassroomListRefreshListener.onRefreshListSucceeded();
				notifyDataSetChanged();
			}
		}
	}
}
