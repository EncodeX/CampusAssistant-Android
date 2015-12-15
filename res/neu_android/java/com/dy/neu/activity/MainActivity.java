package com.dy.neu.activity;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemMenu;
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

public class MainActivity
  extends BaseActivity
{
  private static final int DOWNLOAD = 1;
  private static final int DOWNLOAD_FINISH = 2;
  private boolean cancelUpdate = false;
  ProgressDialog dialog;
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
        MainActivity.this.mProgress.setProgress(MainActivity.this.progress);
        return;
      }
      MainActivity.this.installApk();
    }
  };
  HashMap<String, String> mHashMap;
  private ProgressBar mProgress;
  private String mSavePath;
  private int progress;
  private String updateUrl;
  
  private void downloadApk()
  {
    new downloadApkThread(null).start();
  }
  
  private void init()
  {
    ListView localListView = (ListView)findViewById(2131230757);
    ArrayList localArrayList = new ArrayList();
    Resources localResources = getResources();
    final boolean bool = getIntent().getBooleanExtra("isTeacher", false);
    TypedArray localTypedArray;
    if (bool) {
      localTypedArray = localResources.obtainTypedArray(2131099649);
    }
    for (String[] arrayOfString = localResources.getStringArray(2131099648);; arrayOfString = localResources.getStringArray(2131099650))
    {
      int i = 0;
      while (i < arrayOfString.length)
      {
        ListItemMenu localListItemMenu = new ListItemMenu();
        localListItemMenu.setTitle(arrayOfString[i]);
        localListItemMenu.setImage(localTypedArray.getDrawable(i));
        localListItemMenu.setRight(localResources.getDrawable(2130837532));
        localArrayList.add(localListItemMenu);
        i += 1;
      }
      localTypedArray = localResources.obtainTypedArray(2131099651);
    }
    localListView.setAdapter(new MainListViewAdapter(localArrayList));
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (!bool)
        {
          switch (paramAnonymousInt)
          {
          default: 
            return;
          case 0: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, MessageListActivity.class);
            paramAnonymousAdapterView.putExtra("msgFlag", "0");
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 1: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, MessageListActivity.class);
            paramAnonymousAdapterView.putExtra("msgFlag", "1");
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 2: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, ProfessionDevelopPlanBatchListActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 3: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, TeachingTasksActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 4: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, StudentScheduleActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 5: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, StudentScoreActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 6: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, InnovationCreditsActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 7: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, SchoolRollActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 8: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, ExamScheduleActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 9: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, SelectCourseRecord.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 10: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, RetakeRegistActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          case 11: 
            paramAnonymousAdapterView = new Intent(MainActivity.this, AcademicWarningActivity.class);
            MainActivity.this.startActivity(paramAnonymousAdapterView);
            return;
          }
          paramAnonymousAdapterView = new Intent(MainActivity.this, FreeClassroomActivity.class);
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        }
        switch (paramAnonymousInt)
        {
        default: 
          return;
        case 0: 
          paramAnonymousAdapterView = new Intent(MainActivity.this, MessageListActivity.class);
          paramAnonymousAdapterView.putExtra("msgFlag", "0");
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        case 1: 
          paramAnonymousAdapterView = new Intent(MainActivity.this, MessageListActivity.class);
          paramAnonymousAdapterView.putExtra("msgFlag", "1");
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        case 2: 
          paramAnonymousAdapterView = new Intent(MainActivity.this, ProfessionDevelopPlanBatchListActivity.class);
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        case 3: 
          paramAnonymousAdapterView = new Intent(MainActivity.this, TeachingTasksActivity.class);
          paramAnonymousAdapterView.putExtra("isTeacher", bool);
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        case 4: 
          paramAnonymousAdapterView = new Intent(MainActivity.this, StudentScheduleActivity.class);
          paramAnonymousAdapterView.putExtra("isTeacher", bool);
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        case 5: 
          paramAnonymousAdapterView = new Intent(MainActivity.this, ExamScheduleActivity.class);
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        case 6: 
          paramAnonymousAdapterView = new Intent(MainActivity.this, TeachingEvaluationActivity.class);
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        case 7: 
          paramAnonymousAdapterView = new Intent(MainActivity.this, RollBookTaskActivity.class);
          MainActivity.this.startActivity(paramAnonymousAdapterView);
          return;
        }
        paramAnonymousAdapterView = new Intent(MainActivity.this, StudentScoreActivity.class);
        MainActivity.this.startActivity(paramAnonymousAdapterView);
      }
    });
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
        MainActivity.access$702(MainActivity.this, true);
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
        MainActivity.this.showDownloadDialog();
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
    if ((paramList == null) || (paramList.isEmpty()))
    {
      if (this.dialog.isShowing()) {
        this.dialog.dismiss();
      }
      Toast.makeText(getApplicationContext(), 2131034120, 1).show();
    }
    for (;;)
    {
      return;
      this.updateUrl = ((String)((Map)paramList.get(0)).get("appUrl"));
      if ((this.updateUrl != null) && (this.updateUrl.trim().length() > 0)) {
        showNoticeDialog();
      }
      while (this.dialog.isShowing())
      {
        this.dialog.dismiss();
        return;
        Toast.makeText(getApplicationContext(), 2131034120, 1).show();
      }
    }
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
    setContentView(2130903054);
    init();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    paramMenu.add(0, 0, 0, "检查更新");
    paramMenu.add(0, 1, 1, "重新登录");
    paramMenu.add(0, 2, 2, "退出应用");
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 0))
    {
      if (System.currentTimeMillis() - this.exitTime > 2000L)
      {
        Toast.makeText(getApplicationContext(), "再按一次退出程序", 0).show();
        this.exitTime = System.currentTimeMillis();
      }
      for (;;)
      {
        return true;
        finish();
        System.exit(0);
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getGroupId();
    int j = paramMenuItem.getItemId();
    if (i == 0)
    {
      if (j != 0) {
        break label54;
      }
      this.dialog = ProgressDialog.show(this, null, "正在检查更新...", true, true, new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          Toast.makeText(MainActivity.this.getApplicationContext(), "用户取消操作", 1).show();
        }
      });
      checkUpdate();
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      label54:
      if (j == 1)
      {
        clearUserInfo();
        startActivity(new Intent(this, LoginActivity.class));
        finish();
      }
      else if (j == 2)
      {
        finish();
        System.exit(0);
      }
    }
  }
  
  class ListItemView
  {
    ImageView imageRight;
    ImageView imageView;
    TextView textView;
    
    ListItemView() {}
  }
  
  class MainListViewAdapter
    extends BaseAdapter
  {
    List<ListItemMenu> list;
    
    public MainListViewAdapter()
    {
      List localList;
      this.list = localList;
    }
    
    public int getCount()
    {
      return this.list.size();
    }
    
    public Object getItem(int paramInt)
    {
      return this.list.get(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null)
      {
        paramView = LayoutInflater.from(MainActivity.this).inflate(2130903055, null);
        paramViewGroup = new MainActivity.ListItemView(MainActivity.this);
        paramViewGroup.imageView = ((ImageView)paramView.findViewById(2131230758));
        paramViewGroup.textView = ((TextView)paramView.findViewById(2131230759));
        paramViewGroup.imageRight = ((ImageView)paramView.findViewById(2131230760));
        paramView.setTag(paramViewGroup);
      }
      for (;;)
      {
        Drawable localDrawable1 = ((ListItemMenu)this.list.get(paramInt)).getImage();
        String str = ((ListItemMenu)this.list.get(paramInt)).getTitle();
        Drawable localDrawable2 = ((ListItemMenu)this.list.get(paramInt)).getRight();
        paramViewGroup.imageView.setImageDrawable(localDrawable1);
        paramViewGroup.textView.setText(str);
        paramViewGroup.imageRight.setImageDrawable(localDrawable2);
        return paramView;
        paramViewGroup = (MainActivity.ListItemView)paramView.getTag();
      }
    }
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
            MainActivity.access$402(MainActivity.this, (String)localObject1 + "neu");
            localObject1 = (HttpURLConnection)new URL(MainActivity.this.updateUrl).openConnection();
            ((HttpURLConnection)localObject1).connect();
            int j = ((HttpURLConnection)localObject1).getContentLength();
            localObject1 = ((HttpURLConnection)localObject1).getInputStream();
            localObject2 = new File(MainActivity.this.mSavePath);
            if (!((File)localObject2).exists()) {
              ((File)localObject2).mkdir();
            }
            localObject2 = new FileOutputStream(new File(MainActivity.this.mSavePath, "neu.apk"));
            int i = 0;
            arrayOfByte = new byte['Ѐ'];
            k = ((InputStream)localObject1).read(arrayOfByte);
            i += k;
            MainActivity.access$002(MainActivity.this, (int)(i / j * 100.0F));
            MainActivity.this.mHandler.sendEmptyMessage(1);
            if (k > 0) {
              continue;
            }
            MainActivity.this.mHandler.sendEmptyMessage(2);
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
        MainActivity.this.mDownloadDialog.dismiss();
        return;
        ((FileOutputStream)localObject2).write(arrayOfByte, 0, k);
        bool = MainActivity.this.cancelUpdate;
        if (!bool) {}
      }
    }
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/MainActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */