package com.dy.neu.common;

public class SpinnerData
{
  private String text;
  private String value;
  
  public SpinnerData() {}
  
  public SpinnerData(String paramString1, String paramString2)
  {
    this.value = paramString2;
    this.text = paramString1;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public String toString()
  {
    return this.text;
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/common/SpinnerData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */