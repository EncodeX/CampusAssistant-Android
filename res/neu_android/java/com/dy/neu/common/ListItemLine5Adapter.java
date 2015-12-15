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

public class ListItemLine5Adapter
  extends BaseAdapter
{
  Context ctx;
  List<ListItemLine5> list;
  
  public ListItemLine5Adapter(Context paramContext, List<ListItemLine5> paramList)
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
    String str;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.ctx).inflate(2130903051, null);
      paramViewGroup = new ListItemView();
      paramViewGroup.line1 = ((TextView)paramView.findViewById(2131230733));
      paramViewGroup.line2 = ((TextView)paramView.findViewById(2131230736));
      paramViewGroup.line3 = ((TextView)paramView.findViewById(2131230737));
      paramViewGroup.line4 = ((TextView)paramView.findViewById(2131230738));
      paramViewGroup.line5 = ((TextView)paramView.findViewById(2131230739));
      paramViewGroup.rightText = ((TextView)paramView.findViewById(2131230734));
      paramViewGroup.imageRight = ((ImageView)paramView.findViewById(2131230735));
      paramView.setTag(paramViewGroup);
      str = ((ListItemLine5)this.list.get(paramInt)).getLine1();
      paramViewGroup.line1.setText(str);
      str = ((ListItemLine5)this.list.get(paramInt)).getLine2();
      paramViewGroup.line2.setText(str);
      str = ((ListItemLine5)this.list.get(paramInt)).getLine3();
      paramViewGroup.line3.setText(str);
      str = ((ListItemLine5)this.list.get(paramInt)).getLine4();
      paramViewGroup.line4.setText(str);
      str = ((ListItemLine5)this.list.get(paramInt)).getLine5();
      if (8 != ((ListItemLine5)this.list.get(paramInt)).getLine5Visibility()) {
        break label346;
      }
      paramViewGroup.line5.setVisibility(8);
    }
    for (;;)
    {
      str = ((ListItemLine5)this.list.get(paramInt)).getDetailText();
      Drawable localDrawable = ((ListItemLine5)this.list.get(paramInt)).getRight();
      paramViewGroup.rightText.setText(str);
      paramViewGroup.imageRight.setImageDrawable(localDrawable);
      return paramView;
      paramViewGroup = (ListItemView)paramView.getTag();
      break;
      label346:
      if (((ListItemLine5)this.list.get(paramInt)).getLine5Visibility() == 0)
      {
        paramViewGroup.line5.setVisibility(0);
        paramViewGroup.line5.setText(str);
      }
      else if (4 == ((ListItemLine5)this.list.get(paramInt)).getLine5Visibility())
      {
        paramViewGroup.line5.setVisibility(4);
      }
    }
  }
  
  class ListItemView
  {
    ImageView imageRight;
    TextView line1;
    TextView line2;
    TextView line3;
    TextView line4;
    TextView line5;
    TextView rightText;
    
    ListItemView() {}
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/common/ListItemLine5Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */