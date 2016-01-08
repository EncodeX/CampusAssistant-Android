package edu.neu.campusassistant.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.bean.Grade;

/**
 * Created by JacobKong on 15/12/24.
 */
public class GradeListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder>{

    private final LayoutInflater mLayoutInflater;
    private final Context mContext;
    private List<Grade> mGradeList;

    public void setmGradeList(List<Grade> mGradeList) {
        this.mGradeList = mGradeList;
    }

    public GradeListAdapter(Context mContext) {
        this.mLayoutInflater = LayoutInflater.from(mContext);
        this.mContext = mContext;
        mGradeList = new ArrayList<Grade>();
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new GradeListAdapterViewHolder(mLayoutInflater.inflate(R.layout.grade_list_item, parent, false));

    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
        if(holder instanceof GradeListAdapterViewHolder){
            Grade grade = mGradeList.get(position);
            ((GradeListAdapterViewHolder)holder).mGradeClassTitleTextView.setText(grade.getCourseName());
            ((GradeListAdapterViewHolder)holder).mGradeNormalTextView.setText("平时:" + grade.getScore1());
            ((GradeListAdapterViewHolder)holder).mGradeMiddleTextView.setText("期中:" + grade.getScore2());
            ((GradeListAdapterViewHolder)holder).mGradeFinalTextView.setText("期末:" + grade.getScore3());
            ((GradeListAdapterViewHolder)holder).mGradeTotalTextView.setText(grade.getScore());
        }
    }
    @Override
    public int getItemCount() {
        return mGradeList.size();
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
        @Bind(R.id.grade_total_mark_text_view)
        TextView mGradeTotalTextView;

        public GradeListAdapterViewHolder(View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);
        }
    }


}
