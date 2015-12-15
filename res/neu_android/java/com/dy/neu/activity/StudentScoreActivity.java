package com.dy.neu.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.common.ListItemLine5;
import com.dy.neu.common.ListItemLine5Adapter;
import com.dy.neu.common.SpinnerData;
import com.dy.neu.util.CommonUtils;
import com.dy.neu.view.TitleView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class StudentScoreActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/score/";
  private static String MODULE_URL_TERM_LIST = "/termList";
  
  private void init()
  {
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        StudentScoreActivity.this.finish();
      }
    });
    if (isTeacher())
    {
      ((Spinner)findViewById(2131230794)).setVisibility(8);
      final EditText localEditText = (EditText)findViewById(2131230791);
      localEditText.setOnEditorActionListener(new TextView.OnEditorActionListener()
      {
        public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if ((paramAnonymousInt == 3) || ((paramAnonymousKeyEvent != null) && (paramAnonymousKeyEvent.getKeyCode() == 66)))
          {
            if ("".equals(localEditText.getText().toString().trim())) {
              Toast.makeText(StudentScoreActivity.this.getApplicationContext(), "请输入学号", 1).show();
            }
          }
          else {
            return false;
          }
          StudentScoreActivity.this.getData(StudentScoreActivity.MODULE_URL + localEditText.getText().toString(), "");
          return true;
        }
      });
      ((ImageButton)findViewById(2131230792)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if ("".equals(localEditText.getText().toString().trim()))
          {
            Toast.makeText(StudentScoreActivity.this.getApplicationContext(), "请输入学号", 1).show();
            return;
          }
          StudentScoreActivity.this.getData(StudentScoreActivity.MODULE_URL + localEditText.getText().toString(), "");
        }
      });
      return;
    }
    findViewById(2131230790).setVisibility(8);
    getData(MODULE_URL_TERM_LIST, "termList");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    if ("termList".equals(paramString))
    {
      paramString = (Spinner)findViewById(2131230794);
      localArrayList = new ArrayList();
      localArrayList.add(new SpinnerData("请选择", "0"));
      i = 0;
      while (i < paramList.size())
      {
        localObject1 = (Map)paramList.get(i);
        localArrayList.add(new SpinnerData((String)((Map)localObject1).get("termName"), (String)((Map)localObject1).get("termId")));
        i += 1;
      }
      paramList = new ArrayAdapter(getBaseContext(), 17367048, localArrayList);
      paramList.setDropDownViewResource(17367049);
      paramString.setAdapter(paramList);
      paramString.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (ListView)StudentScoreActivity.this.findViewById(2131230797);
          if ((paramAnonymousAdapterView.getAdapter() != null) && (!paramAnonymousAdapterView.getAdapter().isEmpty())) {
            paramAnonymousAdapterView.setAdapter(null);
          }
          paramAnonymousAdapterView = (SpinnerData)localArrayList.get(paramAnonymousInt);
          if ((paramAnonymousAdapterView.getValue() == "0") || (StudentScoreActivity.this.getIntent().getBooleanExtra("isTeacher", false))) {
            return;
          }
          StudentScoreActivity.this.getData(StudentScoreActivity.MODULE_URL + paramAnonymousAdapterView.getValue(), "");
        }
        
        public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      return;
    }
    paramString = (ListView)findViewById(2131230797);
    final ArrayList localArrayList = new ArrayList();
    boolean bool = isTeacher();
    Object localObject2 = (LinearLayout)findViewById(2131230795);
    Object localObject1 = (TextView)findViewById(2131230796);
    if (bool) {
      ((LinearLayout)localObject2).setVisibility(8);
    }
    int i = 0;
    if (i < paramList.size())
    {
      localObject2 = (Map)paramList.get(i);
      ListItemLine5 localListItemLine5 = new ListItemLine5();
      localListItemLine5.setLine1((String)((Map)localObject2).get("termName"));
      if (!bool) {
        localListItemLine5.setLine1(localListItemLine5.getLine1() + "  " + CommonUtils.paddingText(new StringBuilder().append("课群：").append((String)((Map)localObject2).get("courseGroup")).toString(), 6));
      }
      if ((i == 0) && (!bool)) {
        ((TextView)localObject1).setText("平均学分绩点：" + (String)((Map)localObject2).get("point"));
      }
      localListItemLine5.setLine2((String)((Map)localObject2).get("courseName"));
      localListItemLine5.setLine3(CommonUtils.paddingText(new StringBuilder().append("学分：").append((String)((Map)localObject2).get("credit")).toString(), 7) + "  " + "考试类型：" + (String)((Map)localObject2).get("examType"));
      localListItemLine5.setLine4(CommonUtils.paddingText(new StringBuilder().append("平时：").append((String)((Map)localObject2).get("score1")).toString(), 6) + "  " + CommonUtils.paddingText(new StringBuilder().append("期中：").append((String)((Map)localObject2).get("score2")).toString(), 6) + "  " + "期末：" + (String)((Map)localObject2).get("score3"));
      if (!bool) {
        localListItemLine5.setLine5(CommonUtils.paddingText(CommonUtils.paddingText(new StringBuilder().append("★总成绩：").append((String)((Map)localObject2).get("score")).toString(), 6) + "  课程类型：" + (String)((Map)localObject2).get("courseType"), 6));
      }
      for (;;)
      {
        localArrayList.add(localListItemLine5);
        i += 1;
        break;
        localListItemLine5.setLine5(CommonUtils.paddingText("★总成绩：" + (String)((Map)localObject2).get("score"), 6));
      }
    }
    paramString.setAdapter(new ListItemLine5Adapter(this, localArrayList));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903074);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/StudentScoreActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */