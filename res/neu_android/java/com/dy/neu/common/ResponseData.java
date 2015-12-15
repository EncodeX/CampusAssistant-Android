package com.dy.neu.common;

import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.util.EntityUtils;

public class ResponseData
{
  int resCode;
  String resData;
  
  public ResponseData(HttpResponse paramHttpResponse)
    throws IOException
  {
    this.resCode = paramHttpResponse.getStatusLine().getStatusCode();
    this.resData = EntityUtils.toString(paramHttpResponse.getEntity(), "utf-8");
    this.resData = this.resData.replace("\"data\":\"[{", "\"data\":[{").replace("}]\"}", "}]}");
    if (this.resData.contains("token")) {
      this.resData = this.resData.replace("\"data\":{", "\"data\":[{").replace("}}", "}]}");
    }
  }
  
  public int getResCode()
  {
    return this.resCode;
  }
  
  public String getResData()
  {
    return this.resData;
  }
  
  public void setResCode(int paramInt)
  {
    this.resCode = paramInt;
  }
  
  public void setResData(String paramString)
  {
    this.resData = paramString;
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/common/ResponseData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */