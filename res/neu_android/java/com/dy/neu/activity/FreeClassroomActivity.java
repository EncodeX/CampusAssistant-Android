package com.dy.neu.activity;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
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
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine1;
import com.dy.neu.common.ListItemLine1Adapter;
import com.dy.neu.common.ListItemLine2;
import com.dy.neu.common.ResponseData;
import com.dy.neu.common.Result;
import com.dy.neu.common.SpinnerData;
import com.dy.neu.util.JSONUtils;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public class FreeClassroomActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/freeClassrooms/";
  private ProgressDialog dialog;
  
  private void fetchBuildings()
  {
    final Handler local2 = new Handler()
    {
      public void handleMessage(final Message paramAnonymousMessage)
      {
        super.handleMessage(paramAnonymousMessage);
        if (paramAnonymousMessage.what == 0) {
          paramAnonymousMessage = (ResponseData)paramAnonymousMessage.obj;
        }
        while (paramAnonymousMessage.what != -1)
        {
          do
          {
            try
            {
              paramAnonymousMessage = JSONUtils.parse(paramAnonymousMessage.getResData());
              if (!FreeClassroomActivity.this.checkResult(paramAnonymousMessage))
              {
                if (FreeClassroomActivity.this.dialog.isShowing()) {
                  FreeClassroomActivity.this.dialog.dismiss();
                }
                return;
              }
            }
            catch (JSONException paramAnonymousMessage)
            {
              do
              {
                Toast.makeText(FreeClassroomActivity.this.getApplicationContext(), "获取数据错误", 1).show();
                Log.e("", "JSONException", paramAnonymousMessage);
              } while (!FreeClassroomActivity.this.dialog.isShowing());
              FreeClassroomActivity.this.dialog.dismiss();
              return;
            }
            Object localObject = (List)paramAnonymousMessage.getData();
            paramAnonymousMessage = new ArrayList();
            paramAnonymousMessage.add(new SpinnerData("请选择", "0"));
            int i = 0;
            while (i < ((List)localObject).size())
            {
              Map localMap = (Map)((List)localObject).get(i);
              paramAnonymousMessage.add(new SpinnerData((String)localMap.get("buildingName"), (String)localMap.get("buildingId")));
              i += 1;
            }
            localObject = new ArrayAdapter(FreeClassroomActivity.this.getBaseContext(), 17367048, paramAnonymousMessage);
            ((ArrayAdapter)localObject).setDropDownViewResource(17367049);
            this.val$mSpinner.setAdapter((SpinnerAdapter)localObject);
            this.val$mSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
            {
              public void onItemSelected(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
              {
                paramAnonymous2AdapterView = (ListView)FreeClassroomActivity.this.findViewById(2131230726);
                if ((paramAnonymous2AdapterView.getAdapter() != null) && (!paramAnonymous2AdapterView.getAdapter().isEmpty())) {
                  paramAnonymous2AdapterView.setAdapter(null);
                }
                paramAnonymous2AdapterView = (SpinnerData)paramAnonymousMessage.get(paramAnonymous2Int);
                if (paramAnonymous2AdapterView.getValue() != "0") {
                  FreeClassroomActivity.this.getData(FreeClassroomActivity.MODULE_URL + paramAnonymous2AdapterView.getValue(), "");
                }
              }
              
              public void onNothingSelected(AdapterView<?> paramAnonymous2AdapterView) {}
            });
          } while (!FreeClassroomActivity.this.dialog.isShowing());
          FreeClassroomActivity.this.dialog.dismiss();
          return;
        }
        if (FreeClassroomActivity.this.dialog.isShowing()) {
          FreeClassroomActivity.this.dialog.dismiss();
        }
        Toast.makeText(FreeClassroomActivity.this.getApplicationContext(), "获取数据错误", 1);
      }
    };
    this.dialog = ProgressDialog.show(this, null, getString(2131034117), true, true, new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        Toast.makeText(FreeClassroomActivity.this.getApplicationContext(), "用户取消操作", 1).show();
      }
    });
    new Thread()
    {
      public void run()
      {
        ResponseData localResponseData = FreeClassroomActivity.this.getGetData("/buildings", null);
        Message localMessage = new Message();
        localMessage.obj = localResponseData;
        if (localResponseData == null) {}
        for (localMessage.what = -1;; localMessage.what = 0)
        {
          local2.sendMessage(localMessage);
          return;
        }
      }
    }.start();
  }
  
  private void init()
  {
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FreeClassroomActivity.this.finish();
      }
    });
    fetchBuildings();
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230726);
    Resources localResources = getResources();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine2 localListItemLine2 = new ListItemLine2();
      localListItemLine2.setListItemId((String)localMap.get("classroomsId"));
      localListItemLine2.setListItemName((String)localMap.get("classroomsName"));
      localListItemLine2.setLine1("教室：" + (String)localMap.get("classroomsId") + "  " + (String)localMap.get("classroomsName"));
      localListItemLine2.setRight(localResources.getDrawable(2130837532));
      localArrayList.add(localListItemLine2);
      i += 1;
    }
    paramString.setAdapter(new ListItemLine1Adapter(this, localArrayList));
    paramString.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousView = (ListItemLine1)((ListView)paramAnonymousAdapterView).getItemAtPosition(paramAnonymousInt);
        paramAnonymousAdapterView = paramAnonymousView.getListItemId();
        paramAnonymousView = paramAnonymousView.getListItemName();
        Log.i("classroomsId", paramAnonymousAdapterView);
        Intent localIntent = new Intent(FreeClassroomActivity.this, FreeClassroomDetailActivity.class);
        localIntent.putExtra("classroomsId", paramAnonymousAdapterView);
        localIntent.putExtra("classroomsName", paramAnonymousView);
        FreeClassroomActivity.this.startActivity(localIntent);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903043);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/FreeClassroomActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */