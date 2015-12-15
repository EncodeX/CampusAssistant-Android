package com.dy.neu.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.dy.neu.common.BaseActivity;
import com.dy.neu.view.TitleView;
import java.util.List;
import java.util.Map;

public class SchoolRollActivity
  extends BaseActivity
{
  private static String MODULE_URL = "/schoolRoll";
  
  private void init()
  {
    ((TitleView)findViewById(2131230720)).getBackImage().setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SchoolRollActivity.this.finish();
      }
    });
    getData(MODULE_URL, "");
  }
  
  protected void fetchData(List<Map<String, String>> paramList, String paramString)
  {
    paramList = (Map)paramList.get(0);
    ((TextView)findViewById(2131230776)).setText(String.format(getString(2131034114), new Object[] { paramList.get("examId"), paramList.get("StudentId"), paramList.get("StudentName"), paramList.get("englishName"), paramList.get("sex"), paramList.get("birth"), paramList.get("idCard"), paramList.get("political"), paramList.get("nation"), paramList.get("professionId"), paramList.get("professionName"), paramList.get("collegeName"), paramList.get("professionType"), paramList.get("className"), paramList.get("level"), paramList.get("StudyForm"), paramList.get("standard"), paramList.get("startDate"), paramList.get("endDate") }));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903068);
    init();
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/activity/SchoolRollActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */