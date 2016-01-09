package edu.neu.campusassistant.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
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
 * Date: 16/1/9
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.adapter
 */
public class ProfessionListAdapter extends BaseAdapter implements SpinnerAdapter{

	private List<String> mProfessionIdList, mProfessionNameList;
	private Context mContext;
	private SharedPreferences mSharedPreferences;

	private ProfessionListRefreshListener mProfessionListRefreshListener;

	public ProfessionListAdapter(Context context) {
		this.mProfessionIdList = new ArrayList<>();
		this.mProfessionNameList = new ArrayList<>();
		this.mContext = context;

		this.mSharedPreferences = context.getSharedPreferences(Constants.SHARED_PREFS_KEY, Context.MODE_PRIVATE);
	}

	@Override
	public int getCount() {
		return mProfessionIdList.size();
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
			view = LayoutInflater.from(mContext).inflate(R.layout.default_spinner_item_selected, viewGroup, false);
			viewHolderItem = new ViewHolderItem(view);
			view.setTag(viewHolderItem);
		} else {
			viewHolderItem = (ViewHolderItem) view.getTag();
		}

		viewHolderItem.textLabel.setText(mProfessionNameList.get(i));

		return view;
	}

	@Override
	public View getDropDownView(int position, View convertView, ViewGroup parent) {
		ViewHolderItem viewHolderItem;
		if (convertView == null) {
			convertView = LayoutInflater.from(mContext).inflate(R.layout.default_spinner_item, parent, false);
			viewHolderItem = new ViewHolderItem(convertView);
			convertView.setTag(viewHolderItem);
		} else {
			viewHolderItem = (ViewHolderItem) convertView.getTag();
		}

		viewHolderItem.textLabel.setText(mProfessionNameList.get(position));

		return convertView;
	}

	public String getProfessionId(int index){
		return mProfessionIdList.get(index);
	}

	public String getProfessionName(int index){
		return mProfessionNameList.get(index);
	}

	public void setProfessionListRefreshListener(ProfessionListRefreshListener professionListRefreshListener) {
		this.mProfessionListRefreshListener = professionListRefreshListener;
	}

	public void refreshProfessionList(){
		final String token = mSharedPreferences.getString(Constants.AAO_TOKEN, "");
		final String batchId = mSharedPreferences.getString(Constants.AAO_PLAN_BATCH_ID, "");

		JsonObjectRequest request = new JsonObjectRequest(
				"http://202.118.31.241:8080/api/v1/professionDevelopPlan/" + batchId + "?token=" + token,
				new ProfessionJsonObjectListener(),
				new Response.ErrorListener() {
					@Override
					public void onErrorResponse(VolleyError error) {
						Log.d("ProfessionListAdapter", "获取专业列表失败");
						if(mProfessionListRefreshListener != null) mProfessionListRefreshListener.onRefreshListFailed();
					}
				}
		);

		AppController.getInstance().addToRequestQueue(request);
	}

	static class ViewHolderItem {
		@Bind(R.id.text_label)
		TextView textLabel;

		public ViewHolderItem(View itemView) {
			ButterKnife.bind(this, itemView);
		}
	}

	private class ProfessionJsonObjectListener implements Response.Listener<JSONObject>{
		@Override
		public void onResponse(JSONObject response) {
			Log.d("ProfessionListAdapter",response.toString());
			JSONArray data = response.optJSONArray("data");

			if (data != null) {
				mProfessionIdList.clear();
				mProfessionNameList.clear();

				mProfessionIdList.add("");
				mProfessionNameList.add("请选择专业");

				for(int i=0; i<data.length() ; ++i){
					JSONObject object = data.optJSONObject(i);
					if(object == null) continue;

					mProfessionIdList.add(object.optString("professionId"));
					mProfessionNameList.add(object.optString("professionName"));
				}

				notifyDataSetChanged();
				if(mProfessionListRefreshListener != null) mProfessionListRefreshListener.onRefreshListSucceeded();
			}
		}
	}

	public interface ProfessionListRefreshListener{
		void onRefreshListSucceeded();
		void onRefreshListFailed();
	}
}
