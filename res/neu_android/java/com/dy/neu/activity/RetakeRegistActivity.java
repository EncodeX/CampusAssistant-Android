package com.dy.neu.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine2;
import com.dy.neu.common.ListItemLine2Adapter;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class RetakeRegistActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/retakeRegist";
  
  private void init()
  {
    TitleView localTitleView = (TitleView)findViewById(2131230720);
    localTitleView.setTitleName("重考报名");
    localTitleView.getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        RetakeRegistActivity.this.finish();
      }
    });
    getData(MODULE_URL, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230771);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine2 localListItemLine2 = new ListItemLine2();
      localListItemLine2.setLine1("批次：" + (String)localMap.get("batchId") + " " + (String)localMap.get("courseName"));
      localListItemLine2.setLine2((String)localMap.get("courseId") + "  教师：" + (String)localMap.get("teacherName") + "  上课对象：" + (String)localMap.get("targer"));
      localArrayList.add(localListItemLine2);
      i += 1;
    }
    paramString.setAdapter(new ListItemLine2Adapter(this, localArrayList));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903064);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/RetakeRegistActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */