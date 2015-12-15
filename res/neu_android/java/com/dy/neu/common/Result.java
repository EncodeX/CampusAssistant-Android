package com.dy.neu.common;

public class Result<T>
{
  public static final int SUCCESS = 0;
  private T data;
  private String errCode;
  private String errMsg;
  private boolean success;
  
  public T getData()
  {
    return (T)this.data;
  }
  
  public String getErrCode()
  {
    return this.errCode;
  }
  
  public String getErrMsg()
  {
    return this.errMsg;
  }
  
  public boolean isSuccess()
  {
    return this.success;
  }
  
  public void setData(T paramT)
  {
    this.data = paramT;
  }
  
  public void setErrCode(String paramString)
  {
    this.errCode = paramString;
  }
  
  public void setErrMsg(String paramString)
  {
    this.errMsg = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/common/Result.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */