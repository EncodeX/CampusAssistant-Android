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

public class RetakeRegistBatchActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/retakeRegistBatch";
  
  private void init()
  {
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        RetakeRegistBatchActivity.this.finish();
      }
    });
    getData(MODULE_URL, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230772);
    Resources localResources = getResources();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine1 localListItemLine1 = new ListItemLine1();
      localListItemLine1.setListItemId((String)localMap.get("batchId"));
      localListItemLine1.setLine1("批次：" + (String)localMap.get("batchId"));
      localListItemLine1.setRight(localResources.getDrawable(2130837532));
      localArrayList.add(localListItemLine1);
      i += 1;
    }
    paramString.setAdapter(new ListItemLine1Adapter(this, localArrayList));
    paramString.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = ((ListItemLine1)((ListView)paramAnonymousAdapterView).getItemAtPosition(paramAnonymousInt)).getListItemId();
        Log.i("batchId", paramAnonymousAdapterView);
        paramAnonymousView = new Intent(RetakeRegistBatchActivity.this, RetakeRegistActivity.class);
        paramAnonymousView.putExtra("batchId", paramAnonymousAdapterView);
        RetakeRegistBatchActivity.this.startActivity(paramAnonymousView);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903065);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/RetakeRegistBatchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */