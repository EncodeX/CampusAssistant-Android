package com.dy.neu.common;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public class ListItemLine3Adapter
  extends BaseAdapter
{
  Context ctx;
  List<ListItemLine3> list;
  
  public ListItemLine3Adapter(Context paramContext, List<ListItemLine3> paramList)
  {
    this.ctx = paramContext;
    this.list = paramList;
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
      paramView = LayoutInflater.from(this.ctx).inflate(2130903049, null);
      paramViewGroup = new ListItemView();
      paramViewGroup.line1 = ((TextView)paramView.findViewById(2131230733));
      paramViewGroup.line2 = ((TextView)paramView.findViewById(2131230736));
      paramViewGroup.line3 = ((TextView)paramView.findViewById(2131230737));
      paramViewGroup.rightText = ((TextView)paramView.findViewById(2131230734));
      paramViewGroup.imageRight = ((ImageView)paramView.findViewById(2131230735));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      String str1 = ((ListItemLine3)this.list.get(paramInt)).getLine1();
      String str2 = ((ListItemLine3)this.list.get(paramInt)).getLine2();
      String str3 = ((ListItemLine3)this.list.get(paramInt)).getLine3();
      String str4 = ((ListItemLine3)this.list.get(paramInt)).getDetailText();
      Drawable localDrawable = ((ListItemLine3)this.list.get(paramInt)).getRight();
      paramViewGroup.line1.setText(str1);
      paramViewGroup.line2.setText(str2);
      paramViewGroup.line3.setText(str3);
      paramViewGroup.rightText.setText(str4);
      paramViewGroup.imageRight.setImageDrawable(localDrawable);
      return paramView;
      paramViewGroup = (ListItemView)paramView.getTag();
    }
  }
  
  class ListItemView
  {
    ImageView imageRight;
    TextView line1;
    TextView line2;
    TextView line3;
    TextView rightText;
    
    ListItemView() {}
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/common/ListItemLine3Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */