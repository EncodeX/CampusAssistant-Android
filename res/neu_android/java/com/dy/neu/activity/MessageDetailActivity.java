package com.dy.neu.activity;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.view.TitleView;
import java.util.List;
import java.util.Map;

public class MessageDetailActivity
  extends BaseActivity
{
  private static String MODULE_URL_MESSAGE = "/message/";
  private static String MODULE_URL_MESSAGE_CONFIRM = "/confirmMessage/";
  private static String MODULE_URL_NOTICE = "/notice/";
  
  private void init()
  {
    final TitleView localTitleView = (TitleView)findViewById(2131230720);
    localTitleView.getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        MessageDetailActivity.this.finish();
      }
    });
    Object localObject = getIntent();
    final String str = ((Intent)localObject).getStringExtra("messageId");
    localObject = ((Intent)localObject).getStringExtra("msgFlag");
    localTitleView.getRightTextButton().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        new AlertDialog.Builder(MessageDetailActivity.this).setTitle("确认提示框").setMessage("确认收到该消息？").setPositiveButton(17039370, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            new Thread()
            {
              public void run()
              {
                MessageDetailActivity.this.getGetData(MessageDetailActivity.MODULE_URL_MESSAGE_CONFIRM + MessageDetailActivity.2.this.val$messageId, null);
              }
            }.start();
            MessageDetailActivity.2.this.val$titleView.getRightTextButton().setVisibility(4);
          }
        }).setNegativeButton(17039360, null).show();
      }
    });
    if ("0".equals(localObject))
    {
      localTitleView.setTitleName("系统公告");
      localTitleView.getRightImgButton().setVisibility(4);
      localTitleView.getRightTextButton().setVisibility(4);
      getData(MODULE_URL_NOTICE + str, "");
      return;
    }
    getData(MODULE_URL_MESSAGE + str, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramList = (Map)paramList.get(0);
    ((TextView)findViewById(2131230761)).setText((CharSequence)paramList.get("title"));
    ((TextView)findViewById(2131230762)).setText((String)paramList.get("publisher1") + "  " + (String)paramList.get("publisher2"));
    ((TextView)findViewById(2131230763)).setText((CharSequence)paramList.get("date"));
    ((TextView)findViewById(2131230764)).setText((CharSequence)paramList.get("content"));
    if ("1".equals(paramList.get("readFlag"))) {
      ((TitleView)findViewById(2131230720)).getRightTextButton().setVisibility(4);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903056);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/MessageDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */