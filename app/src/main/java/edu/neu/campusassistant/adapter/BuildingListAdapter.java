package edu.neu.campusassistant.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;

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

	public BuildingListAdapter(Context context) {
		this.mBuildingIdList = new ArrayList<>();
		this.mBuildingNameList = new ArrayList<>();
		this.mContext = context;
	}

	@Override
	public int getCount() {
		return 10;
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
		if(view ==null){
			view = LayoutInflater.from(mContext).inflate(R.layout.building_spinner_item_selected, viewGroup, false);
			viewHolderItem = new ViewHolderItem(view);
			view.setTag(viewHolderItem);
		}else {
			viewHolderItem = (ViewHolderItem)view.getTag();
		}

		viewHolderItem.buildingNameLabel.setText("TEST TEST TEST TEST"+i);

		return view;
	}

	@Override
	public View getDropDownView(int position, View convertView, ViewGroup parent) {
		ViewHolderItem viewHolderItem;
		if(convertView == null){
			convertView = LayoutInflater.from(mContext).inflate(R.layout.building_spinner_item, parent, false);
			viewHolderItem = new ViewHolderItem(convertView);
			convertView.setTag(viewHolderItem);
		}else {
			viewHolderItem = (ViewHolderItem)convertView.getTag();
		}

		viewHolderItem.buildingNameLabel.setText("TEST TEST TEST TEST"+position);

		return convertView;
	}

	static class ViewHolderItem{
		@Bind(R.id.building_name_label)TextView buildingNameLabel;

		public ViewHolderItem(View itemView) {
			ButterKnife.bind(this,itemView);
		}
	}
}
