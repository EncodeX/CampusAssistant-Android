package com.dy.neu.util;

public class CommonUtils
{
  public static String paddingText(String paramString, int paramInt)
  {
    String str;
    if (paramString == null) {
      str = paramString;
    }
    do
    {
      do
      {
        return str;
        str = paramString;
      } while ("".equals(paramString));
      str = paramString;
    } while (paramString.length() >= paramInt);
    int j = paramString.length();
    int i = 0;
    for (;;)
    {
      str = paramString;
      if (i >= paramInt - j) {
        break;
      }
      paramString = paramString.concat("  ");
      i += 1;
    }
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/util/CommonUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */