package edu.neu.campusassistant.adapter;

import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;

/**
 * Created by JacobKong on 16/1/6.
 */
public class SemesterSpinnerAdapter extends BaseAdapter implements SpinnerAdapter{
    List<String> mTermNameList;
    @Bind(R.id.semester_spinner_item_text_view)
    TextView mSemesterSpinnerItemTextView;

    Context mContext;
//    String[] mItems;

    public void setmTermNameList(List<String> mTermNameList) {
        this.mTermNameList = mTermNameList;
    }

    public SemesterSpinnerAdapter(Context mContext) {
        this.mContext = mContext;
        mTermNameList = new ArrayList<String>();
//        mItems = mContext.getResources().getStringArray(R.array.spinnername);
    }


    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public Object getItem(int position) {
        return mTermNameList.get(position);
    }

    @Override
    public int getCount() {
        return mTermNameList.size();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View view = LayoutInflater.from(mContext).inflate(R.layout.spinner_item, null);
        ButterKnife.bind(this, view);
        mSemesterSpinnerItemTextView.setText(mTermNameList.get(position));
        return view;
    }
}
