package edu.neu.campusassistant.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/9
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.view
 */
public class RevealCircleBackground extends View {
	public RevealCircleBackground(Context context) {
		this(context,null);
	}

	public RevealCircleBackground(Context context, AttributeSet attrs) {
		this(context,attrs,0);
	}

	public RevealCircleBackground(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
	}

	protected void onMeasure(int widthMeasureSpec,int heightMeasureSpec){
		setMeasuredDimension(getDefaultSize(0,widthMeasureSpec),getDefaultSize(0,heightMeasureSpec));
		int childWidthSize = getMeasuredWidth();
		int childHeightSize = getMeasuredHeight();
		widthMeasureSpec = MeasureSpec.makeMeasureSpec(childWidthSize * 3 / 2,MeasureSpec.EXACTLY);
		heightMeasureSpec = MeasureSpec.makeMeasureSpec(childHeightSize * 3 / 2,MeasureSpec.EXACTLY);

		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
	}
}
