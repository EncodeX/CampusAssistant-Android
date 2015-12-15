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
import com.dy.neu.util.CommonUtils;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProfessionDevelopPlanBatchListActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/professionDevelopPlan";
  
  private void init()
  {
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProfessionDevelopPlanBatchListActivity.this.finish();
      }
    });
    getData(MODULE_URL, "");
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
      ListItemLine2 localListItemLine2 = new ListItemLine2();
      localListItemLine2.setListItemId((String)localMap.get("planBatchId"));
      localListItemLine2.setLine1(CommonUtils.paddingText("批次：" + (String)localMap.get("planBatchId"), 8));
      localListItemLine2.setLine2(CommonUtils.paddingText("名称：" + (String)localMap.get("planBatchName"), 13));
      localListItemLine2.setDetailText((String)localMap.get("level"));
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
        Log.i("batchId", paramAnonymousAdapterView);
        paramAnonymousView = new Intent(ProfessionDevelopPlanBatchListActivity.this, ProfessionDevelopPlanBatchActivity.class);
        paramAnonymousView.putExtra("batchId", paramAnonymousAdapterView);
        ProfessionDevelopPlanBatchListActivity.this.startActivity(paramAnonymousView);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903059);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/ProfessionDevelopPlanBatchListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */