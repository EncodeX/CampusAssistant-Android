package com.dy.neu.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine2;
import com.dy.neu.common.ListItemLine2Adapter;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class RollBookTaskActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/rollBookTask";
  
  private void init()
  {
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        RollBookTaskActivity.this.finish();
      }
    });
    getData(MODULE_URL, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230774);
    Resources localResources = getResources();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine2 localListItemLine2 = new ListItemLine2();
      localListItemLine2.setListItemId((String)localMap.get("taskId"));
      localListItemLine2.setLine1("任务：" + (String)localMap.get("taskId") + "  课程：" + (String)localMap.get("courseId"));
      localListItemLine2.setLine2((String)localMap.get("courseName"));
      localListItemLine2.setRight(localResources.getDrawable(2130837532));
      localArrayList.add(localListItemLine2);
      i += 1;
    }
    paramString.setAdapter(new ListItemLine2Adapter(this, localArrayList));
    paramString.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = ((ListItemLine2)((ListView)paramAnonymousAdapterView).getItemAtPosition(paramAnonymousInt)).getListItemId();
        Log.i("taskId", paramAnonymousAdapterView);
        paramAnonymousView = new Intent(RollBookTaskActivity.this, RollBookActivity.class);
        paramAnonymousView.putExtra("taskId", paramAnonymousAdapterView);
        RollBookTaskActivity.this.startActivity(paramAnonymousView);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903067);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/RollBookTaskActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */