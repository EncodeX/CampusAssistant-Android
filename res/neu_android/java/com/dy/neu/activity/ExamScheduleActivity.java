package com.dy.neu.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine3;
import com.dy.neu.common.ListItemLine3Adapter;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ExamScheduleActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/examSchedule";
  
  private void init()
  {
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ExamScheduleActivity.this.finish();
      }
    });
    getData(MODULE_URL, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230724);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine3 localListItemLine3 = new ListItemLine3();
      localListItemLine3.setLine1((String)localMap.get("courseName"));
      localListItemLine3.setLine2((String)localMap.get("time"));
      localListItemLine3.setLine3((String)localMap.get("classroom"));
      localArrayList.add(localListItemLine3);
      i += 1;
    }
    paramString.setAdapter(new ListItemLine3Adapter(this, localArrayList));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903042);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/ExamScheduleActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */