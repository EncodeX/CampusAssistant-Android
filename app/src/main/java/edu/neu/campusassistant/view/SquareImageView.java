package edu.neu.campusassistant.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/11
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.view
 */
public class SquareImageView extends ImageView {
	public SquareImageView(Context context){
		this(context, null);
	}
	public SquareImageView(Context context, AttributeSet attrs){
		this(context, attrs, 0);
	}
	public SquareImageView(Context context, AttributeSet attrs, int defStyle){
		super(context, attrs, defStyle);
	}

	@Override
	protected void onMeasure(int widthMeasureSpec,int heightMeasureSpec){
		setMeasuredDimension(getDefaultSize(0,widthMeasureSpec),getDefaultSize(0,heightMeasureSpec));
		int childWidthSize = getMeasuredWidth();
		int childHeightSize = getMeasuredHeight();
		if(childHeightSize>childWidthSize){
			heightMeasureSpec = widthMeasureSpec = MeasureSpec.makeMeasureSpec(childWidthSize,MeasureSpec.EXACTLY);
		}else{
			widthMeasureSpec = heightMeasureSpec = MeasureSpec.makeMeasureSpec(childHeightSize,MeasureSpec.EXACTLY);
		}

		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
	}
}
