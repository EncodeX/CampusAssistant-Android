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
import android.widget.TextView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine3;
import com.dy.neu.common.ListItemLine3Adapter;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProfessionDevelopPlanProfessionActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/professionDevelopPlan/";
  
  private void init()
  {
    final Object localObject = getIntent();
    String str1 = ((Intent)localObject).getStringExtra("batchId");
    String str2 = ((Intent)localObject).getStringExtra("professionId");
    final String str3 = ((Intent)localObject).getStringExtra("professionName");
    localObject = ((Intent)localObject).getStringExtra("professionIntroduce");
    TitleView localTitleView = (TitleView)findViewById(2131230720);
    localTitleView.setTitleTextSize(22.0F);
    localTitleView.setTitleName(str3);
    localTitleView.getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProfessionDevelopPlanProfessionActivity.this.finish();
      }
    });
    localTitleView.getRightTextButton().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(ProfessionDevelopPlanProfessionActivity.this, ProfessionIntroduceActivity.class);
        paramAnonymousView.putExtra("professionIntroduce", localObject);
        paramAnonymousView.putExtra("professionName", str3);
        ProfessionDevelopPlanProfessionActivity.this.startActivity(paramAnonymousView);
      }
    });
    getData(MODULE_URL + str1 + "/" + str2, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230765);
    Resources localResources = getResources();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine3 localListItemLine3 = new ListItemLine3();
      localListItemLine3.setListItemId((String)localMap.get("courseId"));
      localListItemLine3.setListItemName((String)localMap.get("courseName"));
      localListItemLine3.setLine1("学年学期：" + (String)localMap.get("termName"));
      localListItemLine3.setLine2("课程：" + (String)localMap.get("courseId") + "  " + (String)localMap.get("courseProperty"));
      localListItemLine3.setLine3((String)localMap.get("courseName"));
      localListItemLine3.setRight(localResources.getDrawable(2130837532));
      localListItemLine3.setRemark1((String)localMap.get("courseIntroduce"));
      localArrayList.add(localListItemLine3);
      i += 1;
    }
    paramString.setAdapter(new ListItemLine3Adapter(this, localArrayList));
    paramString.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (ListItemLine3)((ListView)paramAnonymousAdapterView).getItemAtPosition(paramAnonymousInt);
        paramAnonymousView = paramAnonymousAdapterView.getListItemId();
        String str1 = paramAnonymousAdapterView.getListItemName();
        Log.i("courseId", paramAnonymousView);
        Intent localIntent = new Intent(ProfessionDevelopPlanProfessionActivity.this, ProfessionDevelopPlanCourseActivity.class);
        Object localObject = ProfessionDevelopPlanProfessionActivity.this.getIntent();
        String str2 = ((Intent)localObject).getStringExtra("batchId");
        localObject = ((Intent)localObject).getStringExtra("professionId");
        localIntent.putExtra("batchId", str2);
        localIntent.putExtra("professionId", (String)localObject);
        localIntent.putExtra("courseId", paramAnonymousView);
        localIntent.putExtra("courseName", str1);
        localIntent.putExtra("courseIntroduce", paramAnonymousAdapterView.getRemark1());
        ProfessionDevelopPlanProfessionActivity.this.startActivity(localIntent);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903061);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/ProfessionDevelopPlanProfessionActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */