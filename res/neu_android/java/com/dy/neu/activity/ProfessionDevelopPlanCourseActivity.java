package com.dy.neu.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.view.TitleView;
import java.util.List;
import java.util.Map;

public class ProfessionDevelopPlanCourseActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/professionDevelopPlan/";
  
  private void init()
  {
    final Intent localIntent = getIntent();
    String str1 = localIntent.getStringExtra("batchId");
    String str2 = localIntent.getStringExtra("professionId");
    String str3 = localIntent.getStringExtra("courseId");
    String str4 = localIntent.getStringExtra("courseName");
    TitleView localTitleView = (TitleView)findViewById(2131230720);
    localTitleView.setTitleTextSize(16.0F);
    localTitleView.setTitleName(str4);
    localTitleView.getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProfessionDevelopPlanCourseActivity.this.finish();
      }
    });
    ((Button)findViewById(2131230766)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(ProfessionDevelopPlanCourseActivity.this, DetailActivity.class);
        paramAnonymousView.putExtra("titleName", "课程简介");
        paramAnonymousView.putExtra("detailData", localIntent.getStringExtra("courseIntroduce"));
        ProfessionDevelopPlanCourseActivity.this.startActivity(paramAnonymousView);
      }
    });
    getData(MODULE_URL + str1 + "/" + str2 + "/" + str3, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramList = (Map)paramList.get(0);
    ((TextView)findViewById(2131230767)).setText(String.format(getResources().getString(2131034113), new Object[] { paramList.get("courseId"), paramList.get("courseName"), paramList.get("grade"), paramList.get("term"), paramList.get("examMode"), paramList.get("courseGroup"), paramList.get("hours"), paramList.get("credit"), paramList.get("isDegree"), paramList.get("courseType"), paramList.get("courseMode") }));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903060);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/ProfessionDevelopPlanCourseActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */