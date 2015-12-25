package edu.neu.campusassistant.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;

/**
 * Created by JacobKong on 15/12/24.
 */
public class ExamAgendaListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private final LayoutInflater mLayoutInflater;
    private final Context mContext;

    public ExamAgendaListAdapter(Context mContext) {
        this.mLayoutInflater = LayoutInflater.from(mContext);
        this.mContext = mContext;
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new ExamAgandeListViewHolder(mLayoutInflater.inflate(R.layout.exam_list_item, parent, false));

    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
        if(holder instanceof ExamAgandeListViewHolder){
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

    static class ExamAgandeListViewHolder extends RecyclerView.ViewHolder {
        @Bind(R.id.exam_title_text_view)
        TextView mExamTitleTextView;
        @Bind(R.id.exam_time_text_view)
        TextView mExamTimeTextView;
        @Bind(R.id.exam_room_text_view)
        TextView mExamRoomTextView;
        @Bind(R.id.exam_left_day_text_view)
        TextView mExamLeftDaysTextView;

        public ExamAgandeListViewHolder(View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);
        }
    }

}
