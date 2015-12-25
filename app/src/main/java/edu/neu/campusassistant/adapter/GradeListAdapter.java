package edu.neu.campusassistant.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;

/**
 * Created by JacobKong on 15/12/24.
 */
public class GradeListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder>{
    private final LayoutInflater mLayoutInflater;
    private final Context mContext;

    public GradeListAdapter(Context mContext) {
        this.mLayoutInflater = LayoutInflater.from(mContext);
        this.mContext = mContext;
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new GradeListAdapterViewHolder(mLayoutInflater.inflate(R.layout.grade_list_item, parent, false));

    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
        if(holder instanceof GradeListAdapterViewHolder){
//            Declare temp = mDeclareList.get(position);
//            String salary =temp.getSalary() + "元";
//            String address= temp.getServiceProvince()+ temp.getServiceCity() + temp.getServiceCounty() + temp.getServiceAddress();
//            ((GrabListViewHolder) holder).mServiceTypeTextView.setText(temp.getServiceType());
//            ((GrabListViewHolder)holder).mAccountTextView.setText(temp.getCustomerName());
//            ((GrabListViewHolder)holder).mTimeTextView.setText(temp.getServiceTime());
//            ((GrabListViewHolder)holder).mMoneyTextView.setText(salary);
//            ((GrabListViewHolder) holder).mContactTextView.setText(temp.getPhoneNo());
//            ((GrabListViewHolder) holder).mAddressTextView.setText(address);
//            ((GrabListViewHolder)holder).mRemarkTextView.setText(temp.getRemark());
//            ((GrabListViewHolder)holder).mGrabButton.setOnClickListener(new View.OnClickListener() {
//                @Override
//                public void onClick(View view) {
//                    grabDeclare(position);
//                }
//            });
        }
    }
    @Override
    public int getItemCount() {
        return 2;
    }

    static class GradeListAdapterViewHolder extends RecyclerView.ViewHolder {
        @Bind(R.id.grade_class_title_text_view)
        TextView mGradeClassTitleTextView;
        @Bind(R.id.grade_normal_mark_text_view)
        TextView mGradeNormalTextView;
        @Bind(R.id.grade_middle_mark_text_view)
        TextView mGradeMiddleTextView;
        @Bind(R.id.grade_final_mark_text_view)
        TextView mGradeFinalTextView;

        public GradeListAdapterViewHolder(View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);
        }
    }


}
