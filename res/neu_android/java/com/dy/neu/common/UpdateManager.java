package com.dy.neu.common;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

public class UpdateManager
{
  private static final int DOWNLOAD = 1;
  private static final int DOWNLOAD_FINISH = 2;
  private boolean cancelUpdate = false;
  private Context mContext;
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
        UpdateManager.this.mProgress.setProgress(UpdateManager.this.progress);
        return;
      }
      UpdateManager.this.installApk();
    }
  };
  HashMap<String, String> mHashMap;
  private ProgressBar mProgress;
  private String mSavePath;
  private int progress;
  
  public UpdateManager(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  private void downloadApk()
  {
    new downloadApkThread(null).start();
  }
  
  private void installApk()
  {
    File localFile = new File(this.mSavePath, (String)this.mHashMap.get("name"));
    if (!localFile.exists()) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.parse("file://" + localFile.toString()), "application/vnd.android.package-archive");
    this.mContext.startActivity(localIntent);
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
            UpdateManager.access$402(UpdateManager.this, (String)localObject1 + "download");
            localObject1 = (HttpURLConnection)new URL((String)UpdateManager.this.mHashMap.get("url")).openConnection();
            ((HttpURLConnection)localObject1).connect();
            int j = ((HttpURLConnection)localObject1).getContentLength();
            localObject1 = ((HttpURLConnection)localObject1).getInputStream();
            localObject2 = new File(UpdateManager.this.mSavePath);
            if (!((File)localObject2).exists()) {
              ((File)localObject2).mkdir();
            }
            localObject2 = new FileOutputStream(new File(UpdateManager.this.mSavePath, (String)UpdateManager.this.mHashMap.get("name")));
            int i = 0;
            arrayOfByte = new byte['Ѐ'];
            k = ((InputStream)localObject1).read(arrayOfByte);
            i += k;
            UpdateManager.access$002(UpdateManager.this, (int)(i / j * 100.0F));
            UpdateManager.this.mHandler.sendEmptyMessage(1);
            if (k > 0) {
              continue;
            }
            UpdateManager.this.mHandler.sendEmptyMessage(2);
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
        UpdateManager.this.mDownloadDialog.dismiss();
        return;
        ((FileOutputStream)localObject2).write(arrayOfByte, 0, k);
        bool = UpdateManager.this.cancelUpdate;
        if (!bool) {}
      }
    }
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/common/UpdateManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */