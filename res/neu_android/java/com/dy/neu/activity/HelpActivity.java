package com.dy.neu.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.dy.neu.view.TitleView;

public class HelpActivity
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903045);
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        HelpActivity.this.finish();
      }
    });
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/HelpActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */