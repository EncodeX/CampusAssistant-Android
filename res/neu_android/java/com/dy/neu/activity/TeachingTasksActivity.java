package com.dy.neu.activity;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine3;
import com.dy.neu.common.ListItemLine3Adapter;
import com.dy.neu.common.ResponseData;
import com.dy.neu.common.Result;
import com.dy.neu.common.SpinnerData;
import com.dy.neu.util.CommonUtils;
import com.dy.neu.util.JSONUtils;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public class TeachingTasksActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/termTask/";
  private static String MODULE_URL_FOR_TEACHER = "/termTaskForTeacher/";
  private ProgressDialog dialog;
  
  private void fetchTerm()
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
              if (!TeachingTasksActivity.this.checkResult(paramAnonymousMessage))
              {
                if (TeachingTasksActivity.this.dialog.isShowing()) {
                  TeachingTasksActivity.this.dialog.dismiss();
                }
                return;
              }
            }
            catch (JSONException paramAnonymousMessage)
            {
              do
              {
                Toast.makeText(TeachingTasksActivity.this.getApplicationContext(), "获取数据错误", 1).show();
                Log.e("", "JSONException", paramAnonymousMessage);
              } while (!TeachingTasksActivity.this.dialog.isShowing());
              TeachingTasksActivity.this.dialog.dismiss();
              return;
            }
            Object localObject = (List)paramAnonymousMessage.getData();
            paramAnonymousMessage = new ArrayList();
            paramAnonymousMessage.add(new SpinnerData("请选择", "0"));
            int i = 0;
            while (i < ((List)localObject).size())
            {
              Map localMap = (Map)((List)localObject).get(i);
              paramAnonymousMessage.add(new SpinnerData((String)localMap.get("termName"), (String)localMap.get("termId")));
              i += 1;
            }
            localObject = new ArrayAdapter(TeachingTasksActivity.this.getBaseContext(), 17367048, paramAnonymousMessage);
            ((ArrayAdapter)localObject).setDropDownViewResource(17367049);
            this.val$mSpinner.setAdapter((SpinnerAdapter)localObject);
            this.val$mSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
            {
              public void onItemSelected(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
              {
                paramAnonymous2AdapterView = (ListView)TeachingTasksActivity.this.findViewById(2131230800);
                if ((paramAnonymous2AdapterView.getAdapter() != null) && (!paramAnonymous2AdapterView.getAdapter().isEmpty())) {
                  paramAnonymous2AdapterView.setAdapter(null);
                }
                paramAnonymous2AdapterView = (SpinnerData)paramAnonymousMessage.get(paramAnonymous2Int);
                if (paramAnonymous2AdapterView.getValue() != "0")
                {
                  if (TeachingTasksActivity.this.getIntent().getBooleanExtra("isTeacher", false)) {
                    TeachingTasksActivity.this.getData(TeachingTasksActivity.MODULE_URL_FOR_TEACHER + paramAnonymous2AdapterView.getValue(), "");
                  }
                }
                else {
                  return;
                }
                TeachingTasksActivity.this.getData(TeachingTasksActivity.MODULE_URL + paramAnonymous2AdapterView.getValue(), "");
              }
              
              public void onNothingSelected(AdapterView<?> paramAnonymous2AdapterView) {}
            });
          } while (!TeachingTasksActivity.this.dialog.isShowing());
          TeachingTasksActivity.this.dialog.dismiss();
          return;
        }
        if (TeachingTasksActivity.this.dialog.isShowing()) {
          TeachingTasksActivity.this.dialog.dismiss();
        }
        Toast.makeText(TeachingTasksActivity.this.getApplicationContext(), "获取数据错误", 1);
      }
    };
    this.dialog = ProgressDialog.show(this, null, getString(2131034117), true, true, new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        Toast.makeText(TeachingTasksActivity.this.getApplicationContext(), "用户取消操作", 1).show();
      }
    });
    new Thread()
    {
      public void run()
      {
        ResponseData localResponseData = TeachingTasksActivity.this.getGetData("/termList", null);
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
        TeachingTasksActivity.this.finish();
      }
    });
    fetchTerm();
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230800);
    boolean bool = getIntent().getBooleanExtra("isTeacher", false);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine3 localListItemLine3 = new ListItemLine3();
      localListItemLine3.setLine1(CommonUtils.paddingText("任务：" + (String)localMap.get("taskId"), 9));
      localListItemLine3.setLine1(localListItemLine3.getLine1() + "  " + "课程：" + (String)localMap.get("courseId"));
      if (bool)
      {
        localListItemLine3.setLine1(localListItemLine3.getLine1() + "  " + (String)localMap.get("degree"));
        localListItemLine3.setLine3(CommonUtils.paddingText(new StringBuilder().append("教师：").append((String)localMap.get("teacherName")).toString(), 8) + "  学时：" + (String)localMap.get("hours") + "  人数：" + (String)localMap.get("number"));
      }
      for (;;)
      {
        localListItemLine3.setLine2((String)localMap.get("courseName"));
        localArrayList.add(localListItemLine3);
        i += 1;
        break;
        localListItemLine3.setLine3(CommonUtils.paddingText(new StringBuilder().append("教师：").append((String)localMap.get("teacherName")).toString(), 8) + "  " + (String)localMap.get("degree"));
      }
    }
    paramString.setAdapter(new ListItemLine3Adapter(this, localArrayList));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903076);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/TeachingTasksActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */