package com.dy.neu.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import com.dy.neu.view.TitleView;

public class ProfessionIntroduceActivity
  extends Activity
{
  private void init()
  {
    Object localObject = getIntent();
    String str = ((Intent)localObject).getStringExtra("professionIntroduce");
    localObject = ((Intent)localObject).getStringExtra("professionName");
    TitleView localTitleView = (TitleView)findViewById(2131230720);
    localTitleView.setTitleTextSize(22.0F);
    localTitleView.setTitleName((String)localObject + "介绍");
    localTitleView.getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProfessionIntroduceActivity.this.finish();
      }
    });
    localObject = (WebView)findViewById(2131230768);
    ((WebView)localObject).loadUrl(str);
    ((WebView)localObject).setWebViewClient(new WebViewClient()
    {
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        paramAnonymousWebView.loadUrl(paramAnonymousString);
        return true;
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903062);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/ProfessionIntroduceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */