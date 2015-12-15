package com.dy.neu.common;

import android.graphics.drawable.Drawable;

public class ListItemMenu
{
  private Drawable image;
  private Drawable right;
  private String title;
  
  public Drawable getImage()
  {
    return this.image;
  }
  
  public Drawable getRight()
  {
    return this.right;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public void setImage(Drawable paramDrawable)
  {
    this.image = paramDrawable;
  }
  
  public void setRight(Drawable paramDrawable)
  {
    this.right = paramDrawable;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/common/ListItemMenu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */