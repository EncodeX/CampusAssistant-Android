package edu.neu.campusassistant.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/9
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.view
 */
public class CircularRevealLayout extends FrameLayout {
	public CircularRevealLayout(Context context) {
		this(context,null);
	}

	public CircularRevealLayout(Context context, AttributeSet attrs) {
		this(context,attrs,0);
	}

	public CircularRevealLayout(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
	}

	@Override
	protected void onMeasure(int widthMeasureSpec,int heightMeasureSpec){
		setMeasuredDimension(getDefaultSize(0,widthMeasureSpec),getDefaultSize(0,heightMeasureSpec));

		if(Build.VERSION.SDK_INT >= 21){
			int childWidthSize = getMeasuredWidth() * 3 / 2;
			int childHeightSize = getMeasuredHeight();
			widthMeasureSpec = MeasureSpec.makeMeasureSpec(childWidthSize,MeasureSpec.EXACTLY);
			heightMeasureSpec = MeasureSpec.makeMeasureSpec(childHeightSize,MeasureSpec.EXACTLY);
		}

		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
	}
}
