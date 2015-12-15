package com.dy.neu.activity;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine3;
import com.dy.neu.common.ListItemLine3Adapter;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class StudentScheduleActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/courseSchedule2";
  private static String MODULE_URL_FOR_TEACHER = "/courseScheduleForTeacher2";
  protected int aveWidth;
  protected RelativeLayout course_table_layout;
  protected TextView empty;
  protected TextView friColum;
  protected int gridHeight = 80;
  protected TextView monColum;
  protected TextView satColum;
  protected int screenWidth;
  protected TextView sunColum;
  protected TextView thrusColum;
  protected TextView tueColum;
  protected TextView wedColum;
  
  private void init()
  {
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        StudentScheduleActivity.this.finish();
      }
    });
    boolean bool = getIntent().getBooleanExtra("isTeacher", false);
    this.empty = ((TextView)findViewById(2131230780));
    this.monColum = ((TextView)findViewById(2131230781));
    this.tueColum = ((TextView)findViewById(2131230782));
    this.wedColum = ((TextView)findViewById(2131230783));
    this.thrusColum = ((TextView)findViewById(2131230784));
    this.friColum = ((TextView)findViewById(2131230785));
    this.satColum = ((TextView)findViewById(2131230786));
    this.sunColum = ((TextView)findViewById(2131230787));
    this.course_table_layout = ((RelativeLayout)findViewById(2131230789));
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = localDisplayMetrics.widthPixels;
    int j = i / 8;
    this.empty.setWidth(j * 3 / 4);
    this.monColum.setWidth(j * 33 / 32 + 1);
    this.tueColum.setWidth(j * 33 / 32 + 1);
    this.wedColum.setWidth(j * 33 / 32 + 1);
    this.thrusColum.setWidth(j * 33 / 32 + 1);
    this.friColum.setWidth(j * 33 / 32 + 1);
    this.satColum.setWidth(j * 33 / 32 + 1);
    this.sunColum.setWidth(j * 33 / 32 + 1);
    this.screenWidth = i;
    this.aveWidth = j;
    if (bool)
    {
      getData(MODULE_URL_FOR_TEACHER, "");
      return;
    }
    getData(MODULE_URL, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (TitleView)findViewById(2131230720);
    Object localObject = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
    this.gridHeight = ((((DisplayMetrics)localObject).heightPixels - paramString.getHeight() - this.monColum.getHeight() - 44) / 6);
    int k = 0;
    int i = 1;
    while (i <= 8)
    {
      int j = 1;
      if (j <= 6)
      {
        TextView localTextView = new TextView(this);
        localTextView.setId((j - 1) * 8 + i);
        label126:
        RelativeLayout.LayoutParams localLayoutParams;
        if (i < 8)
        {
          localTextView.setBackgroundDrawable(getResources().getDrawable(2130837505));
          localLayoutParams = new RelativeLayout.LayoutParams(this.aveWidth * 33 / 32 + 1, this.gridHeight);
          localTextView.setGravity(17);
          if (i != 1) {
            break label295;
          }
          localTextView.setText(String.valueOf(j * 2 - 1) + "\n|\n" + String.valueOf(j * 2));
          localLayoutParams.width = (this.aveWidth * 3 / 4);
          if (j != 1) {
            break label279;
          }
          localLayoutParams.addRule(3, this.empty.getId());
        }
        for (;;)
        {
          localTextView.setLayoutParams(localLayoutParams);
          this.course_table_layout.addView(localTextView);
          j += 1;
          break;
          localTextView.setBackgroundDrawable(getResources().getDrawable(2130837504));
          break label126;
          label279:
          localLayoutParams.addRule(3, (j - 1) * 8);
        }
        label295:
        localLayoutParams.addRule(1, (j - 1) * 8 + i - 1);
        localLayoutParams.addRule(6, (j - 1) * 8 + i - 1);
        paramString = (Map)paramList.get(k);
        if ((paramString.get("name") != null) && (((String)paramString.get("name")).length() > 0))
        {
          final String str = (String)paramString.get("room");
          localObject = (String)paramString.get("name");
          paramString = (String)localObject;
          if (((String)localObject).endsWith(";")) {
            paramString = ((String)localObject).substring(0, ((String)localObject).length() - 1);
          }
          localTextView.setText(paramString);
          localTextView.setBackgroundColor(getResources().getColor(17170454));
          localTextView.setTextColor(getResources().getColor(17170443));
          localTextView.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              new AlertDialog.Builder(StudentScheduleActivity.this).setTitle("课程详细").setMessage(str).setPositiveButton("确定", new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
              }).show();
            }
          });
        }
        for (;;)
        {
          k += 1;
          break;
          localTextView.setText("");
        }
      }
      i += 1;
    }
  }
  
  protected void fetchData1(List<Map<String, String>> paramList, String paramString)
  {
    paramString = (ListView)findViewById(2131230779);
    boolean bool = getIntent().getBooleanExtra("isTeacher", false);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramList.size())
    {
      Map localMap = (Map)paramList.get(i);
      ListItemLine3 localListItemLine3 = new ListItemLine3();
      localListItemLine3.setLine1((String)localMap.get("courseName"));
      localListItemLine3.setLine2("周：" + (String)localMap.get("weeks") + "  " + (String)localMap.get("dayOfWeek") + "  " + (String)localMap.get("time") + "节");
      if (bool) {
        localListItemLine3.setLine3((String)localMap.get("classroom") + "  学时：" + (String)localMap.get("hours") + "  人数：" + (String)localMap.get("number"));
      }
      for (;;)
      {
        localArrayList.add(localListItemLine3);
        i += 1;
        break;
        localListItemLine3.setLine3((String)localMap.get("classroom"));
      }
    }
    paramString.setAdapter(new ListItemLine3Adapter(this, localArrayList));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903073);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/StudentScheduleActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */