package edu.neu.campusassistant.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

import butterknife.Bind;
import butterknife.ButterKnife;
import edu.neu.campusassistant.R;
import edu.neu.campusassistant.utils.Constants;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/11
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.view
 */
public class FunctionButton extends RelativeLayout {
	private Context mContext;

	private String mText;
	private int mTextColor;
	private String mTextStyle;
	private int mTextSize;
	private int mSrc;
	private String mScaleType;

	private String mIntentActivity;     // exp: "edu.neu.campusassistant.activity.MainActivity"

	@Bind(R.id.function_button_icon)
	SquareImageView mButtonIcon;
	@Bind(R.id.function_button_label)
	TextView mButtonLabel;

	public FunctionButton(Context context) {
		this(context, null);
	}

	public FunctionButton(Context context, AttributeSet attrs) {
		this(context, attrs, 0);
	}

	public FunctionButton(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
		init(context, attrs);
	}

	public String getIntentActivity() {
		return mIntentActivity;
	}

	public void setIntentActivity(String intentActivity) {
		this.mIntentActivity = intentActivity;
	}

	private void init(@NonNull Context context, @NonNull AttributeSet attrs){
		inflate(getContext(), R.layout.view_function_button, this);

		mContext = context;
		ButterKnife.bind(this);

		TypedArray attributes = context.obtainStyledAttributes(attrs, R.styleable.FunctionButton);

		mText = attributes.getString(R.styleable.FunctionButton_fb_text);
		mTextColor = attributes.getColor(R.styleable.FunctionButton_fb_text_color, getResources().getColor(R.color.colorBlack));
//		mTextStyle = attributes.getNonResourceString(R.styleable.FunctionButton_fb_text_style);
		mTextSize = (int)attributes.getDimensionPixelSize(R.styleable.FunctionButton_fb_text_size,getResources().getDimensionPixelSize(R.dimen.fb_text_size));
		mSrc = attributes.getResourceId(R.styleable.FunctionButton_fb_src, R.drawable.weather_sun);
//		mScaleType = attributes.getNonResourceString(R.styleable.FunctionButton_fb_scale_type);

		mIntentActivity = attributes.getString(R.styleable.FunctionButton_fb_intent_activity);

		attributes.recycle();

		mButtonIcon.setImageResource(mSrc);
//		mButtonIcon.setScaleType();

		mButtonLabel.setText(mText);
		mButtonLabel.setTextColor(mTextColor);
		TextPaint textPaint = mButtonLabel.getPaint();
		textPaint.setTextSize(mTextSize);

		this.setClickable(true);
		setBackgroundResource(R.drawable.card_foreground);

		this.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				Class<?> intentActivity = null;
				if(mIntentActivity!=null && !mIntentActivity.equals("")){
					try {
						intentActivity = Class.forName(Constants.PACKAGE_NAME + mIntentActivity);
						if(intentActivity!=null)
							mContext.startActivity(new Intent(mContext,intentActivity));
					} catch (ClassNotFoundException e) {
						e.printStackTrace();
					}
				}
			}
		});
	}
}
