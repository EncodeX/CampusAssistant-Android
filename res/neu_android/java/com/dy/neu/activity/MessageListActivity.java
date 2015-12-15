package com.dy.neu.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine2;
import com.dy.neu.common.ListItemLine2Adapter;
import com.dy.neu.util.CommonUtils;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.message.BasicNameValuePair;

public class MessageListActivity
  extends BaseActivity
{
  private static String MODULE_URL_MESSAGE = "/message";
  private static String MODULE_URL_NOTICE = "/notice";
  private boolean isLoading = false;
  private View loadMoreView;
  private LinearLayout loading;
  private Handler mhHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      MessageListActivity.access$002(MessageListActivity.this, false);
      MessageListActivity.this.more.setVisibility(0);
      MessageListActivity.this.loading.setVisibility(8);
      MessageListActivity.this.mva.notifyDataSetChanged();
    }
  };
  private TextView more;
  private String msgFlag;
  ListItemLine2Adapter mva;
  private int page = 1;
  
  private void init()
  {
    Object localObject = (TitleView)findViewById(2131230720);
    ((TitleView)localObject).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        MessageListActivity.this.finish();
      }
    });
    this.msgFlag = getIntent().getStringExtra("msgFlag");
    Resources localResources = getResources();
    if ("0".equals(this.msgFlag))
    {
      ((TitleView)localObject).setTitleName("系统公告");
      localObject = new ArrayList();
      ((List)localObject).add(new BasicNameValuePair("page", String.valueOf(this.page)));
      ((List)localObject).add(new BasicNameValuePair("pageSize", String.valueOf(localResources.getInteger(2131165184))));
      getData(MODULE_URL_NOTICE, (List)localObject, false, "");
      return;
    }
    localObject = new ArrayList();
    ((List)localObject).add(new BasicNameValuePair("page", String.valueOf(this.page)));
    ((List)localObject).add(new BasicNameValuePair("pageSize", String.valueOf(localResources.getInteger(2131165184))));
    getData(MODULE_URL_MESSAGE, (List)localObject, false, "");
  }
  
  private List<ListItemLine2> makeList(List<Map<String, String>> paramList)
  {
    if (paramList == null) {
      localObject = null;
    }
    Resources localResources;
    ArrayList localArrayList;
    int i;
    do
    {
      return (List<ListItemLine2>)localObject;
      localResources = getResources();
      localArrayList = new ArrayList();
      i = 0;
      localObject = localArrayList;
    } while (i >= paramList.size());
    Object localObject = (Map)paramList.get(i);
    ListItemLine2 localListItemLine2 = new ListItemLine2();
    localListItemLine2.setListItemId((String)((Map)localObject).get("publishId"));
    localListItemLine2.setLine1(CommonUtils.paddingText((String)((Map)localObject).get("date"), 10) + "  " + (String)((Map)localObject).get("title"));
    localListItemLine2.setLine2(CommonUtils.paddingText((String)((Map)localObject).get("publisher1"), 13));
    if ("1".equals(this.msgFlag)) {
      if (!"1".equals(((Map)localObject).get("readFlag"))) {
        break label214;
      }
    }
    label214:
    for (localObject = "已读";; localObject = "未读")
    {
      localListItemLine2.setDetailText((String)localObject);
      localListItemLine2.setRight(localResources.getDrawable(2130837532));
      localArrayList.add(localListItemLine2);
      i += 1;
      break;
    }
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230765);
    paramList = makeList(paramList);
    if ((paramList == null) || (paramList.size() < getResources().getInteger(2131165184))) {
      paramString.removeFooterView(this.loadMoreView);
    }
    if ((this.mva == null) || (this.mva.getCount() == 0)) {
      this.mva = new ListItemLine2Adapter(this, paramList);
    }
    for (;;)
    {
      this.loadMoreView = View.inflate(this, 2130903052, null);
      this.more = ((TextView)this.loadMoreView.findViewById(2131230740));
      this.loading = ((LinearLayout)this.loadMoreView.findViewById(2131230741));
      this.more.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (MessageListActivity.this.isLoading) {
            return;
          }
          MessageListActivity.this.more.setVisibility(8);
          MessageListActivity.this.loading.setVisibility(0);
          MessageListActivity.access$002(MessageListActivity.this, true);
          MessageListActivity.access$308(MessageListActivity.this);
          paramAnonymousView = new ArrayList();
          paramAnonymousView.add(new BasicNameValuePair("page", String.valueOf(MessageListActivity.this.page)));
          paramAnonymousView.add(new BasicNameValuePair("pageSize", String.valueOf(MessageListActivity.this.getResources().getInteger(2131165184))));
          MessageListActivity.this.getData(MessageListActivity.MODULE_URL_NOTICE, paramAnonymousView, "");
          MessageListActivity.this.mhHandler.sendEmptyMessage(273);
        }
      });
      if ((paramString.getFooterViewsCount() == 0) && (paramList.size() == getResources().getInteger(2131165184))) {
        paramString.addFooterView(this.loadMoreView);
      }
      paramString.setAdapter(this.mva);
      paramString.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = ((ListItemLine2)((ListView)paramAnonymousAdapterView).getItemAtPosition(paramAnonymousInt)).getListItemId();
          Log.i("messageId", paramAnonymousAdapterView);
          paramAnonymousView = new Intent(MessageListActivity.this, MessageDetailActivity.class);
          paramAnonymousView.putExtra("messageId", paramAnonymousAdapterView);
          paramAnonymousView.putExtra("msgFlag", MessageListActivity.this.msgFlag);
          MessageListActivity.this.startActivityForResult(paramAnonymousView, 1);
        }
      });
      return;
      this.mva.addItems(paramList);
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.mva = null;
    paramIntent = getResources();
    if ("0".equals(this.msgFlag))
    {
      localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("page", String.valueOf(this.page)));
      localArrayList.add(new BasicNameValuePair("pageSize", String.valueOf(paramIntent.getInteger(2131165184))));
      getData(MODULE_URL_NOTICE, localArrayList, false, "");
      return;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("page", String.valueOf(this.page)));
    localArrayList.add(new BasicNameValuePair("pageSize", String.valueOf(paramIntent.getInteger(2131165184))));
    getData(MODULE_URL_MESSAGE, localArrayList, false, "");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903057);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/MessageListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */