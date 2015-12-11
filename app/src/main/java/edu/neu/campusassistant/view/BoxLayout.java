package edu.neu.campusassistant.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.RelativeLayout;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/11
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.view
 */
public class BoxLayout extends RelativeLayout {
	public BoxLayout(Context context) {
		this(context, null);
	}

	public BoxLayout(Context context, AttributeSet attrs) {
		this(context, attrs, 0);
	}

	public BoxLayout(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
	}

	@Override
	protected void onMeasure(int widthMeasureSpec,int heightMeasureSpec){
		setMeasuredDimension(getDefaultSize(0,widthMeasureSpec),getDefaultSize(0,heightMeasureSpec));

		if(getParent() instanceof CircularRevealLayout && Build.VERSION.SDK_INT >= 21){
			int childWidthSize = ((CircularRevealLayout)getParent()).getMeasuredWidth() * 2 / 3;
			int childHeightSize = getMeasuredHeight();
			widthMeasureSpec = MeasureSpec.makeMeasureSpec(childWidthSize,MeasureSpec.EXACTLY);
			heightMeasureSpec = MeasureSpec.makeMeasureSpec(childHeightSize,MeasureSpec.EXACTLY);
		}

		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
	}

	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		super.onLayout(changed, l, t, r, b);
	}
}
