package com.dy.neu.activity;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.MD5Exception;
import com.dy.neu.common.ResponseData;
import com.dy.neu.common.Result;
import com.dy.neu.util.JSONUtils;
import com.dy.neu.util.MD5;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;

public class LoginActivity
  extends BaseActivity
{
  private static final int DOWNLOAD = 1;
  private static final int DOWNLOAD_FINISH = 2;
  private static String MODULE_URL_LOGIN = "/login";
  private boolean cancelUpdate = false;
  private ProgressDialog dialog;
  private long exitTime = 0L;
  private Dialog mDownloadDialog;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      case 1: 
        LoginActivity.this.mProgress.setProgress(LoginActivity.this.progress);
        return;
      }
      LoginActivity.this.installApk();
    }
  };
  HashMap<String, String> mHashMap;
  private ProgressBar mProgress;
  private String mSavePath;
  private int progress;
  private String updateUrl;
  
  private void autoLogin()
  {
    if ((getUserInfo("pwd") != null) && (getUserInfo("pwd").trim().length() > 0))
    {
      final Handler local11 = new Handler()
      {
        public void handleMessage(Message paramAnonymousMessage)
        {
          super.handleMessage(paramAnonymousMessage);
          if (paramAnonymousMessage.what == 0) {
            paramAnonymousMessage = (ResponseData)paramAnonymousMessage.obj;
          }
          while ((paramAnonymousMessage.what != -1) || (!LoginActivity.this.dialog.isShowing()))
          {
            try
            {
              paramAnonymousMessage = JSONUtils.parse(paramAnonymousMessage.getResData());
              if (!LoginActivity.this.checkResult(paramAnonymousMessage))
              {
                if (LoginActivity.this.dialog.isShowing()) {
                  LoginActivity.this.dialog.dismiss();
                }
                return;
              }
            }
            catch (JSONException paramAnonymousMessage)
            {
              do
              {
                Log.e("", "JSONException", paramAnonymousMessage);
              } while (!LoginActivity.this.dialog.isShowing());
              LoginActivity.this.dialog.dismiss();
              return;
            }
            paramAnonymousMessage = (List)paramAnonymousMessage.getData();
            if (LoginActivity.this.dialog.isShowing()) {
              LoginActivity.this.dialog.dismiss();
            }
            LoginActivity.this.fetchData(paramAnonymousMessage, "autoLogin");
            return;
          }
          LoginActivity.this.dialog.dismiss();
        }
      };
      this.dialog = ProgressDialog.show(this, null, getString(2131034119), true, true, new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          Toast.makeText(LoginActivity.this.getApplicationContext(), "用户取消操作", 1).show();
        }
      });
      new Thread()
      {
        public void run()
        {
          Object localObject = new ArrayList();
          ((List)localObject).add(new BasicNameValuePair("userName", LoginActivity.this.getUserName()));
          ((List)localObject).add(new BasicNameValuePair("passwd", LoginActivity.this.getUserInfo("pwd")));
          localObject = LoginActivity.this.getGetData(LoginActivity.MODULE_URL_LOGIN, (List)localObject);
          Message localMessage = new Message();
          localMessage.obj = localObject;
          if (localObject == null) {}
          for (localMessage.what = -1;; localMessage.what = 0)
          {
            local11.sendMessage(localMessage);
            return;
          }
        }
      }.start();
      return;
    }
    fetchNotice();
  }
  
  private void downloadApk()
  {
    new downloadApkThread(null).start();
  }
  
  private void fetchNotice()
  {
    final Handler local6 = new Handler()
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        super.handleMessage(paramAnonymousMessage);
        if (paramAnonymousMessage.what == 0) {
          paramAnonymousMessage = (ResponseData)paramAnonymousMessage.obj;
        }
        label278:
        while ((paramAnonymousMessage.what != -1) || (!LoginActivity.this.dialog.isShowing()))
        {
          do
          {
            try
            {
              paramAnonymousMessage = JSONUtils.parse(paramAnonymousMessage.getResData());
              if (!LoginActivity.this.checkResult(paramAnonymousMessage))
              {
                if (LoginActivity.this.dialog.isShowing()) {
                  LoginActivity.this.dialog.dismiss();
                }
                return;
              }
            }
            catch (JSONException paramAnonymousMessage)
            {
              do
              {
                Log.e("", "JSONException", paramAnonymousMessage);
              } while (!LoginActivity.this.dialog.isShowing());
              LoginActivity.this.dialog.dismiss();
              return;
            }
            List localList = (List)paramAnonymousMessage.getData();
            int i = 0;
            if (i < localList.size())
            {
              Map localMap = (Map)localList.get(i);
              if (i == 0) {
                paramAnonymousMessage = (TextView)LoginActivity.this.findViewById(2131230750);
              }
              for (;;)
              {
                paramAnonymousMessage.setText((CharSequence)localMap.get("title"));
                paramAnonymousMessage.setTag(localMap.get("publishId"));
                paramAnonymousMessage.setOnClickListener(new View.OnClickListener()
                {
                  public void onClick(View paramAnonymous2View)
                  {
                    Intent localIntent = new Intent(LoginActivity.this, MessageDetailActivity.class);
                    localIntent.putExtra("messageId", (String)paramAnonymous2View.getTag());
                    localIntent.putExtra("msgFlag", "0");
                    LoginActivity.this.startActivity(localIntent);
                  }
                });
                i += 1;
                break;
                if (i == 1)
                {
                  paramAnonymousMessage = (TextView)LoginActivity.this.findViewById(2131230751);
                }
                else if (i == 2)
                {
                  paramAnonymousMessage = (TextView)LoginActivity.this.findViewById(2131230752);
                }
                else if (i == 3)
                {
                  paramAnonymousMessage = (TextView)LoginActivity.this.findViewById(2131230753);
                }
                else
                {
                  if (i != 4) {
                    break label278;
                  }
                  paramAnonymousMessage = (TextView)LoginActivity.this.findViewById(2131230754);
                }
              }
            }
          } while (!LoginActivity.this.dialog.isShowing());
          LoginActivity.this.dialog.dismiss();
          return;
        }
        LoginActivity.this.dialog.dismiss();
      }
    };
    this.dialog = ProgressDialog.show(this, null, getString(2131034118), true, true, new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        Toast.makeText(LoginActivity.this.getApplicationContext(), "用户取消操作", 1).show();
      }
    });
    new Thread()
    {
      public void run()
      {
        Object localObject = new ArrayList();
        ((List)localObject).add(new BasicNameValuePair("page", "1"));
        ((List)localObject).add(new BasicNameValuePair("pageSize", String.valueOf(LoginActivity.this.getResources().getInteger(2131165185))));
        localObject = LoginActivity.this.getGetData("/notice", (List)localObject);
        Message localMessage = new Message();
        localMessage.obj = localObject;
        if (localObject == null) {}
        for (localMessage.what = -1;; localMessage.what = 0)
        {
          local6.sendMessage(localMessage);
          return;
        }
      }
    }.start();
  }
  
  private void init()
  {
    ((Button)findViewById(2131230748)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = LoginActivity.this.getSharedPreferences("loginTimes", 0);
        long l;
        String str;
        if (paramAnonymousView.getBoolean("locked", false))
        {
          l = paramAnonymousView.getLong("lockedDate", 0L);
          l = System.currentTimeMillis() - l;
          if (l > 300000L)
          {
            paramAnonymousView = paramAnonymousView.edit();
            paramAnonymousView.putBoolean("locked", false);
            paramAnonymousView.putInt("times", 0);
            paramAnonymousView.putLong("lockedDate", 0L);
            paramAnonymousView.commit();
          }
        }
        else
        {
          str = ((EditText)LoginActivity.this.findViewById(2131230746)).getText().toString();
          localObject = ((EditText)LoginActivity.this.findViewById(2131230747)).getText().toString();
          if ((!"".equals(str.trim())) && (!"".equals(((String)localObject).trim()))) {
            break label220;
          }
          Toast.makeText(LoginActivity.this, "请输入用户名和密码", 1).show();
          return;
        }
        int i = (int)(l / 1000L / 60L);
        Toast.makeText(LoginActivity.this, "帐户已被锁定，请" + (5 - i) + "分钟后再试", 1).show();
        return;
        label220:
        paramAnonymousView = null;
        try
        {
          localObject = MD5.encrypt((String)localObject);
          paramAnonymousView = (View)localObject;
        }
        catch (MD5Exception localMD5Exception)
        {
          for (;;)
          {
            Log.e("", "登录失败", localMD5Exception);
            Toast.makeText(LoginActivity.this, "登录失败，请重新登录", 1).show();
          }
        }
        Object localObject = new ArrayList();
        ((List)localObject).add(new BasicNameValuePair("userName", str));
        ((List)localObject).add(new BasicNameValuePair("passwd", paramAnonymousView));
        LoginActivity.this.getData(LoginActivity.MODULE_URL_LOGIN, (List)localObject, 2, false, "login");
      }
    });
    ((TextView)findViewById(2131230742)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(LoginActivity.this, HelpActivity.class);
        LoginActivity.this.startActivity(paramAnonymousView);
      }
    });
    this.dialog = ProgressDialog.show(this, null, "正在检查更新...", true, true, new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        Toast.makeText(LoginActivity.this.getApplicationContext(), "用户取消操作", 1).show();
      }
    });
    checkUpdate();
  }
  
  private void installApk()
  {
    File localFile = new File(this.mSavePath, "neu.apk");
    if (!localFile.exists()) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.parse("file://" + localFile.toString()), "application/vnd.android.package-archive");
    startActivity(localIntent);
  }
  
  private void isUpdate()
  {
    int i = getVersionCode(getApplicationContext());
    String str = Build.VERSION.RELEASE;
    this.updateUrl = null;
    getData("/checkUpdate/2/" + str + "/" + i, false, "checkUpdate");
  }
  
  private void showDownloadDialog()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131034125);
    View localView = LayoutInflater.from(this).inflate(2130903070, null);
    this.mProgress = ((ProgressBar)localView.findViewById(2131230778));
    localBuilder.setView(localView);
    localBuilder.setNegativeButton(2131034126, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
        LoginActivity.access$202(LoginActivity.this, true);
      }
    });
    this.mDownloadDialog = localBuilder.create();
    this.mDownloadDialog.show();
    downloadApk();
  }
  
  private void showNoticeDialog()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131034121);
    localBuilder.setMessage(2131034122);
    localBuilder.setPositiveButton(2131034123, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
        LoginActivity.this.showDownloadDialog();
      }
    });
    localBuilder.setNegativeButton(2131034124, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    localBuilder.create().show();
  }
  
  public void checkUpdate()
  {
    isUpdate();
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    if ((paramString != null) && (paramString.equals("checkUpdate")))
    {
      if ((paramList == null) || (paramList.isEmpty()))
      {
        if (this.dialog.isShowing()) {
          this.dialog.dismiss();
        }
        autoLogin();
        return;
      }
      this.updateUrl = ((String)((Map)paramList.get(0)).get("appUrl"));
      if ((this.updateUrl != null) && (this.updateUrl.trim().length() > 0))
      {
        if (this.dialog.isShowing()) {
          this.dialog.dismiss();
        }
        showNoticeDialog();
        return;
      }
      if (this.dialog.isShowing()) {
        this.dialog.dismiss();
      }
      autoLogin();
      return;
    }
    if ((paramList == null) || (paramList.isEmpty()))
    {
      paramList = getSharedPreferences("loginTimes", 0);
      int i = paramList.getInt("times", 0) + 1;
      paramList = paramList.edit();
      paramList.putInt("times", i);
      if (i == 5)
      {
        paramList.putBoolean("locked", true);
        paramList.putLong("lockedDate", System.currentTimeMillis());
      }
      paramList.commit();
      if (i == 5)
      {
        Toast.makeText(this, this.errMsg + "\n" + "输入错误次数：" + i + "次，请5分钟后再试", 1).show();
        return;
      }
      Toast.makeText(this, this.errMsg + "\n" + "输入错误次数：" + i + "次", 1).show();
      return;
    }
    paramString = getSharedPreferences("loginTimes", 0).edit();
    paramString.putInt("times", 0);
    paramString.commit();
    Map localMap = (Map)paramList.get(0);
    paramList = null;
    try
    {
      paramString = MD5.encrypt(((EditText)findViewById(2131230747)).getText().toString());
      paramList = paramString;
    }
    catch (MD5Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
    if (((EditText)findViewById(2131230747)).getText().length() > 0) {
      localMap.put("pwd", paramList);
    }
    setUserInfo(localMap);
    paramList = new Intent(this, MainActivity.class);
    paramList.putExtra("isTeacher", isTeacher());
    startActivity(paramList);
    finish();
  }
  
  protected int getVersionCode(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo("com.dy.neu", 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903053);
    init();
  }
  
  private class downloadApkThread
    extends Thread
  {
    private downloadApkThread() {}
    
    public void run()
    {
      for (;;)
      {
        try
        {
          if (Environment.getExternalStorageState().equals("mounted"))
          {
            Object localObject1 = Environment.getExternalStorageDirectory() + "/";
            LoginActivity.access$402(LoginActivity.this, (String)localObject1 + "neu");
            localObject1 = (HttpURLConnection)new URL(LoginActivity.this.updateUrl).openConnection();
            ((HttpURLConnection)localObject1).connect();
            int j = ((HttpURLConnection)localObject1).getContentLength();
            localObject1 = ((HttpURLConnection)localObject1).getInputStream();
            localObject2 = new File(LoginActivity.this.mSavePath);
            if (!((File)localObject2).exists()) {
              ((File)localObject2).mkdir();
            }
            localObject2 = new FileOutputStream(new File(LoginActivity.this.mSavePath, "neu.apk"));
            int i = 0;
            arrayOfByte = new byte['Ѐ'];
            k = ((InputStream)localObject1).read(arrayOfByte);
            i += k;
            LoginActivity.access$602(LoginActivity.this, (int)(i / j * 100.0F));
            LoginActivity.this.mHandler.sendEmptyMessage(1);
            if (k > 0) {
              continue;
            }
            LoginActivity.this.mHandler.sendEmptyMessage(2);
            ((FileOutputStream)localObject2).close();
            ((InputStream)localObject1).close();
          }
        }
        catch (MalformedURLException localMalformedURLException)
        {
          Object localObject2;
          byte[] arrayOfByte;
          int k;
          boolean bool;
          localMalformedURLException.printStackTrace();
          continue;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          continue;
        }
        LoginActivity.this.mDownloadDialog.dismiss();
        return;
        ((FileOutputStream)localObject2).write(arrayOfByte, 0, k);
        bool = LoginActivity.this.cancelUpdate;
        if (!bool) {}
      }
    }
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/LoginActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */