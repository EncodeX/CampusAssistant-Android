package com.dy.neu.activity;

import android.content.Intent;
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

public class FreeClassroomDetailActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/freeTimes/";
  
  private void init()
  {
    Object localObject = getIntent();
    String str = ((Intent)localObject).getStringExtra("classroomsName");
    TitleView localTitleView = (TitleView)findViewById(2131230720);
    localTitleView.setTitleName(str);
    localTitleView.getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FreeClassroomDetailActivity.this.finish();
      }
    });
    localObject = ((Intent)localObject).getStringExtra("classroomsId");
    getData(MODULE_URL + (String)localObject, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230727);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine2 localListItemLine2 = new ListItemLine2();
      localListItemLine2.setLine1("教室：" + (String)localMap.get("classroomsId") + "  " + (String)localMap.get("classroomsName"));
      localListItemLine2.setLine2("节次：" + (String)localMap.get("freeTimes") + "  状态：" + (String)localMap.get("status"));
      localArrayList.add(localListItemLine2);
      i += 1;
    }
    paramString.setAdapter(new ListItemLine2Adapter(this, localArrayList));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903044);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/FreeClassroomDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */