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

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.bean.Exam;

/**
 * Created by JacobKong on 15/12/24.
 */
public class ExamAgendaListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private final LayoutInflater mLayoutInflater;
    private final Context mContext;
    private List<Exam> mExamList;

    public void setmExamList(List<Exam> mExamList) {
        this.mExamList = mExamList;
    }

    public ExamAgendaListAdapter(Context mContext) {
        this.mLayoutInflater = LayoutInflater.from(mContext);
        this.mContext = mContext;
        mExamList = new ArrayList<Exam>();
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new ExamAgandeListViewHolder(mLayoutInflater.inflate(R.layout.exam_list_item, parent, false));

    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
        if(holder instanceof ExamAgandeListViewHolder){
            Exam exam = mExamList.get(position);
            ((ExamAgandeListViewHolder)holder).mExamTitleTextView.setText(exam.getCourseName());
            ((ExamAgandeListViewHolder)holder).mExamTimeTextView.setText(exam.getTime());
            ((ExamAgandeListViewHolder)holder).mExamRoomTextView.setText(exam.getClassroom());
//            ((ExamAgandeListViewHolder)holder).mExamTitleTextView.setText(exam.getCourseName());
        }
    }
    @Override
    public int getItemCount() {
        return mExamList.size();
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
