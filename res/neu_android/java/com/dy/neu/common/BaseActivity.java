package com.dy.neu.common;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;
import com.dy.neu.util.HttpUtils;
import com.dy.neu.util.JSONUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;

public abstract class BaseActivity
  extends Activity
{
  public static final int METHOD_GET = 2;
  public static final int METHOD_POST = 1;
  private ProgressDialog dialog;
  protected String errMsg;
  
  private List<BasicNameValuePair> checkToken(List<BasicNameValuePair> paramList)
  {
    String str = getToken();
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new ArrayList();
    }
    if ((str != null) && (!"".equals(str))) {
      ((List)localObject).add(new BasicNameValuePair("token", str));
    }
    return (List<BasicNameValuePair>)localObject;
  }
  
  protected boolean checkResult(Result<List<Map<String, String>>> paramResult)
  {
    if (paramResult == null)
    {
      Toast.makeText(getApplicationContext(), "系统繁忙，请稍候再试", 1).show();
      return false;
    }
    if (!paramResult.isSuccess())
    {
      Toast.makeText(getApplicationContext(), paramResult.getErrMsg(), 1).show();
      return false;
    }
    paramResult = (List)paramResult.getData();
    if ((paramResult == null) || (paramResult.isEmpty()))
    {
      Toast.makeText(getApplicationContext(), "没有数据记录", 1).show();
      return false;
    }
    return true;
  }
  
  protected void clearUserInfo()
  {
    SharedPreferences.Editor localEditor = getSharedPreferences("userInfo", 0).edit();
    localEditor.clear();
    localEditor.commit();
  }
  
  protected abstract void fetchData(List<Map<String, String>> paramList, String paramString);
  
  protected void getData(String paramString1, String paramString2)
  {
    getData(paramString1, null, 2, true, paramString2);
  }
  
  protected void getData(String paramString1, List<BasicNameValuePair> paramList, int paramInt, String paramString2)
  {
    getData(paramString1, paramList, paramInt, true, paramString2);
  }
  
  protected void getData(final String paramString1, final List<BasicNameValuePair> paramList, final int paramInt, final boolean paramBoolean, final String paramString2)
  {
    paramString2 = new Handler()
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        super.handleMessage(paramAnonymousMessage);

        if (paramAnonymousMessage.what == 0) {
          paramAnonymousMessage = (ResponseData)paramAnonymousMessage.obj;
        }

        while (paramAnonymousMessage.what != -1) {

          for (;;)
          {
            try
            {
              paramAnonymousMessage = JSONUtils.parse(paramAnonymousMessage.getResData());
              if ((paramBoolean) && (!BaseActivity.this.checkResult(paramAnonymousMessage)))
              {
                if (BaseActivity.this.dialog.isShowing()) {
                  BaseActivity.this.dialog.dismiss();
                }
                return;
              }
            }
            catch (JSONException paramAnonymousMessage)
            {
              Toast.makeText(BaseActivity.this.getApplicationContext(), "系统繁忙，请稍候再试", 1).show();
              Log.e("", "JSONException", paramAnonymousMessage);
              if (!BaseActivity.this.dialog.isShowing()) {
                continue;
              }
              BaseActivity.this.dialog.dismiss();
              return;
            }
            if (paramAnonymousMessage == null) {
              BaseActivity.this.fetchData(null, paramString2);
            }
            for (BaseActivity.this.errMsg = ""; BaseActivity.this.dialog.isShowing(); BaseActivity.this.errMsg = paramAnonymousMessage.getErrMsg())
            {
              BaseActivity.this.dialog.dismiss();
              return;
              BaseActivity.this.fetchData((List)paramAnonymousMessage.getData(), paramString2);
            }
          }

        }
        if (BaseActivity.this.dialog.isShowing()) {
          BaseActivity.this.dialog.dismiss();
        }
        Toast.makeText(BaseActivity.this.getApplicationContext(), "系统繁忙，请稍候再试", 1).show();
      }
    };

    this.dialog = ProgressDialog.show(this, null, getString(2131034117), true, true, new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        Toast.makeText(BaseActivity.this.getApplicationContext(), "用户取消操作", 1).show();
      }
    });

    new Thread()
    {
      public void run()
      {
        ResponseData localResponseData;
        Message localMessage;
        if (paramInt == 1)
        {
          localResponseData = BaseActivity.this.getPostData(paramString1, paramList);
          localMessage = new Message();
          localMessage.obj = localResponseData;
          if (localResponseData != null) {
            break label75;
          }
        }
        label75:
        for (localMessage.what = -1;; localMessage.what = 0)
        {
          paramString2.sendMessage(localMessage);
          return;
          localResponseData = BaseActivity.this.getGetData(paramString1, paramList);
          break;
        }
      }
    }.start();
  }
  
  protected void getData(String paramString1, List<BasicNameValuePair> paramList, String paramString2)
  {
    getData(paramString1, paramList, true, paramString2);
  }
  
  protected void getData(String paramString1, List<BasicNameValuePair> paramList, boolean paramBoolean, String paramString2)
  {
    getData(paramString1, paramList, 2, paramBoolean, paramString2);
  }
  
  protected void getData(String paramString1, boolean paramBoolean, String paramString2)
  {
    getData(paramString1, null, 2, paramBoolean, paramString2);
  }
  
  protected ResponseData getGetData(String paramString, List<BasicNameValuePair> paramList)
  {
    paramList = checkToken(paramList);
    String str = getUrl(paramString);
    paramString = null;
    try
    {
      paramList = HttpUtils.get(str, paramList);
      paramString = paramList;
    }
    catch (HttpTransException paramList)
    {
      for (;;)
      {
        Log.e("", "获取数据错误", paramList);
      }
    }
    paramList = paramString;
    if (paramString == null) {
      paramList = null;
    }
    return paramList;
  }
  
  protected ResponseData getPostData(String paramString, List<BasicNameValuePair> paramList)
  {
    paramList = checkToken(paramList);
    String str = getUrl(paramString);
    paramString = null;
    try
    {
      paramList = HttpUtils.post(str, paramList);
      paramString = paramList;
    }
    catch (HttpTransException paramList)
    {
      for (;;)
      {
        Log.e("", "获取数据错误");
      }
    }
    paramList = paramString;
    if (paramString == null) {
      paramList = null;
    }
    return paramList;
  }
  
  protected String getRealName()
  {
    return getSharedPreferences("userInfo", 0).getString("realName", "");
  }
  
  protected String getToken()
  {
    return getSharedPreferences("userInfo", 0).getString("token", "");
  }
  
  protected String getUrl(String paramString)
  {
    return getString(2131034115) + getString(2131034116) + paramString;
  }
  
  protected String getUserInfo(String paramString)
  {
    return getSharedPreferences("userInfo", 0).getString(paramString, "");
  }
  
  protected String getUserName()
  {
    return getSharedPreferences("userInfo", 0).getString("userName", "");
  }
  
  protected boolean isTeacher()
  {
    return getSharedPreferences("userInfo", 0).getString("isTeacher", "").equals("1");
  }
  
  protected void setUserInfo(Map<String, String> paramMap)
  {
    SharedPreferences.Editor localEditor = getSharedPreferences("userInfo", 0).edit();
    localEditor.putString("userName", (String)paramMap.get("userName"));
    localEditor.putString("realName", (String)paramMap.get("realName"));
    localEditor.putString("isTeacher", (String)paramMap.get("isTeacher"));
    localEditor.putString("token", (String)paramMap.get("token"));
    if ((paramMap.get("pwd") != null) && (((String)paramMap.get("pwd")).length() > 0)) {
      localEditor.putString("pwd", (String)paramMap.get("pwd"));
    }
    localEditor.commit();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/common/BaseActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */