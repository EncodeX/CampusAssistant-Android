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
import com.dy.neu.common.ListItemLine1;
import com.dy.neu.common.ListItemLine1Adapter;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProfessionDevelopPlanBatchActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/professionDevelopPlan/";
  
  private void init()
  {
    String str = getIntent().getStringExtra("batchId");
    TitleView localTitleView = (TitleView)findViewById(2131230720);
    localTitleView.setTitleName(str + "培养计划");
    localTitleView.getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProfessionDevelopPlanBatchActivity.this.finish();
      }
    });
    getData(MODULE_URL + str, "");
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
      ListItemLine1 localListItemLine1 = new ListItemLine1();
      localListItemLine1.setListItemId((String)localMap.get("professionId"));
      localListItemLine1.setListItemName((String)localMap.get("professionName"));
      localListItemLine1.setLine1((String)localMap.get("professionId") + "  " + (String)localMap.get("professionName"));
      localListItemLine1.setRemark1((String)localMap.get("professionIntroduce"));
      localListItemLine1.setRight(localResources.getDrawable(2130837532));
      localArrayList.add(localListItemLine1);
      i += 1;
    }
    paramString.setAdapter(new ListItemLine1Adapter(this, localArrayList));
    paramString.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (ListItemLine1)((ListView)paramAnonymousAdapterView).getItemAtPosition(paramAnonymousInt);
        paramAnonymousView = paramAnonymousAdapterView.getListItemId();
        String str = paramAnonymousAdapterView.getListItemName();
        Log.i("professionId", paramAnonymousView);
        Intent localIntent = new Intent(ProfessionDevelopPlanBatchActivity.this, ProfessionDevelopPlanProfessionActivity.class);
        localIntent.putExtra("batchId", ProfessionDevelopPlanBatchActivity.this.getIntent().getStringExtra("batchId"));
        localIntent.putExtra("professionId", paramAnonymousView);
        localIntent.putExtra("professionName", str);
        localIntent.putExtra("professionIntroduce", paramAnonymousAdapterView.getRemark1());
        ProfessionDevelopPlanBatchActivity.this.startActivity(localIntent);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903058);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/ProfessionDevelopPlanBatchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */