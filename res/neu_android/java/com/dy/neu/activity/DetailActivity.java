package com.dy.neu.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.dy.neu.view.TitleView;

public class DetailActivity
  extends Activity
{
  public static final String DETAIL_DATA = "detailData";
  
  private void init()
  {
    Intent localIntent = getIntent();
    Object localObject = localIntent.getStringExtra("detailData");
    ((TextView)findViewById(2131230723)).setText((CharSequence)localObject);
    localObject = (TitleView)findViewById(2131230720);
    ((TitleView)localObject).setTitleName(localIntent.getStringExtra("titleName"));
    ((TitleView)localObject).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        DetailActivity.this.finish();
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/DetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */