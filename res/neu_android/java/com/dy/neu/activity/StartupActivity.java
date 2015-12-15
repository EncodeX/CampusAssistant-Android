package com.dy.neu.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class StartupActivity
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    startActivity(new Intent(this, LoginActivity.class));
    finish();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/StartupActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */