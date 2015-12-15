package com.dy.neu.util;

import com.dy.neu.common.HttpTransException;
import com.dy.neu.common.ResponseData;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public class HttpUtils
{
  private static HttpClient httpClient = new DefaultHttpClient();
  
  public static ResponseData get(String paramString, List<BasicNameValuePair> paramList)
    throws HttpTransException
  {
    paramList = URLEncodedUtils.format(paramList, "UTF-8");
    paramString = new HttpPost(paramString + "?" + paramList);
    try
    {
      paramString = new ResponseData(httpClient.execute(paramString));
      return paramString;
    }
    catch (ClientProtocolException paramString)
    {
      throw new HttpTransException();
    }
    catch (IOException paramString)
    {
      throw new HttpTransException();
    }
  }
  
  public static ResponseData post(String paramString, List<BasicNameValuePair> paramList)
    throws HttpTransException
  {
    paramString = new HttpPost(paramString);
    if (paramList != null) {}
    try
    {
      paramString.setEntity(new UrlEncodedFormEntity(paramList, "UTF-8"));
      paramString = new ResponseData(httpClient.execute(paramString));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new HttpTransException();
    }
    catch (ClientProtocolException paramString)
    {
      throw new HttpTransException();
    }
    catch (IOException paramString)
    {
      throw new HttpTransException();
    }
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/util/HttpUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */