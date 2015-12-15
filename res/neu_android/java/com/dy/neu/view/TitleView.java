package com.dy.neu.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.dy.neu.R.styleable;

public class TitleView
  extends LinearLayout
{
  private ImageView imgBack;
  private ImageView imgRight;
  private RelativeLayout relaMain;
  private TextView tvRight;
  private TextView tvTitleName;
  
  public TitleView(Context paramContext)
  {
    super(paramContext);
  }
  
  public TitleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext, paramAttributeSet);
  }
  
  @SuppressLint({"NewApi"})
  public TitleView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext, paramAttributeSet);
  }
  
  private void init(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.attrsTitleView);
    int i = paramAttributeSet.getColor(0, -1);
    String str1 = paramAttributeSet.getString(1);
    int j = paramAttributeSet.getInteger(2, 0);
    String str2 = paramAttributeSet.getString(3);
    int k = paramAttributeSet.getResourceId(4, -1);
    boolean bool = paramAttributeSet.getBoolean(5, true);
    paramContext = (LinearLayout)LayoutInflater.from(paramContext).inflate(2130903077, null);
    this.relaMain = ((RelativeLayout)paramContext.findViewById(2131230801));
    this.imgBack = ((ImageView)paramContext.findViewById(2131230802));
    this.tvTitleName = ((TextView)paramContext.findViewById(2131230805));
    this.tvRight = ((TextView)paramContext.findViewById(2131230803));
    this.imgRight = ((ImageView)paramContext.findViewById(2131230804));
    if (bool)
    {
      this.imgBack.setVisibility(0);
      if (j != 0) {
        break label226;
      }
      this.imgRight.setVisibility(4);
      this.tvRight.setVisibility(0);
      this.tvRight.setText(str2);
    }
    for (;;)
    {
      if (this.tvTitleName != null) {
        this.tvTitleName.setText(str1);
      }
      if (i > 0) {
        this.imgBack.setBackgroundColor(i);
      }
      addView(paramContext);
      paramAttributeSet.recycle();
      return;
      this.imgBack.setVisibility(8);
      break;
      label226:
      if (j == 1)
      {
        this.imgRight.setVisibility(0);
        this.tvRight.setVisibility(4);
        this.imgRight.setBackgroundResource(k);
      }
      else
      {
        this.imgRight.setVisibility(4);
        this.tvRight.setVisibility(4);
      }
    }
  }
  
  public ImageView getBackImage()
  {
    return this.imgBack;
  }
  
  public ImageView getRightImgButton()
  {
    return this.imgRight;
  }
  
  public TextView getRightTextButton()
  {
    return this.tvRight;
  }
  
  public void setMainBackColor(int paramInt)
  {
    this.relaMain.setBackgroundColor(paramInt);
  }
  
  public void setTitleName(String paramString)
  {
    this.tvTitleName.setText(paramString);
  }
  
  public void setTitleTextSize(float paramFloat)
  {
    this.tvTitleName.setTextSize(1, paramFloat);
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/view/TitleView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */