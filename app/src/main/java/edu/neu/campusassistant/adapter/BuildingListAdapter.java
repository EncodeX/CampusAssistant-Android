package edu.neu.campusassistant.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
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
public class BuildingListAdapter extends BaseAdapter implements SpinnerAdapter {

	private List<String> mBuildingNameList;
	private List<String> mBuildingIdList;
	private Context mContext;
	private SharedPreferences mSharedPreferences;

	private ListRefreshListener mListRefreshListener;

	public BuildingListAdapter(Context context) {
		this.mBuildingIdList = new ArrayList<>();
		this.mBuildingNameList = new ArrayList<>();
		this.mContext = context;

		this.mSharedPreferences = context.getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);
	}

	@Override
	public int getCount() {
		return mBuildingIdList.size();
	}

	@Override
	public Object getItem(int i) {
		// 暂时没有用
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
			view = LayoutInflater.from(mContext).inflate(R.layout.building_spinner_item_selected, viewGroup, false);
			viewHolderItem = new ViewHolderItem(view);
			view.setTag(viewHolderItem);
		} else {
			viewHolderItem = (ViewHolderItem) view.getTag();
		}

		viewHolderItem.buildingNameLabel.setText(mBuildingNameList.get(i));

		return view;
	}

	@Override
	public View getDropDownView(int position, View convertView, ViewGroup parent) {
		ViewHolderItem viewHolderItem;
		if (convertView == null) {
			convertView = LayoutInflater.from(mContext).inflate(R.layout.building_spinner_item, parent, false);
			viewHolderItem = new ViewHolderItem(convertView);
			convertView.setTag(viewHolderItem);
		} else {
			viewHolderItem = (ViewHolderItem) convertView.getTag();
		}

		viewHolderItem.buildingNameLabel.setText(mBuildingNameList.get(position));

		return convertView;
	}

	public void setListRefreshListener(ListRefreshListener listRefreshListener) {
		this.mListRefreshListener = listRefreshListener;
	}

	public void refreshBuildingList() {
		final String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");

		if (token.equals("")) {
			if(mListRefreshListener != null) mListRefreshListener.onRefreshListFailed();
			return;
		}

		JsonObjectRequest request = new JsonObjectRequest(
				"http://202.118.31.241:8080/api/v1/buildings?token=" + token,
				new BuildingJSONObjectListener(),
				new Response.ErrorListener() {
					@Override
					public void onErrorResponse(VolleyError error) {
						if(mListRefreshListener != null) mListRefreshListener.onRefreshListFailed();
					}
				}
		);

		AppController.getInstance().addToRequestQueue(request);
	}

	static class ViewHolderItem {
		@Bind(R.id.building_name_label)
		TextView buildingNameLabel;

		public ViewHolderItem(View itemView) {
			ButterKnife.bind(this, itemView);
		}
	}

	public interface ListRefreshListener{
		void onRefreshListSucceeded();
		void onRefreshListFailed();
	}

	private class BuildingJSONObjectListener implements Response.Listener<JSONObject> {
		@Override
		public void onResponse(JSONObject response) {
			JSONArray data = response.optJSONArray("data");

			if(data!=null){
				mBuildingIdList.clear();
				mBuildingNameList.clear();

				for(int i=0; i<data.length(); ++i){
					JSONObject object = data.optJSONObject(i);
					if(object == null) continue;
					mBuildingIdList.add(object.optString("buildingId"));
					mBuildingNameList.add(object.optString("buildingName"));
				}

				if(mListRefreshListener != null) mListRefreshListener.onRefreshListSucceeded();
				notifyDataSetChanged();
			}
		}
	}
}
