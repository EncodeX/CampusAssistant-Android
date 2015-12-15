package com.dy.neu.util;

import com.dy.neu.common.Result;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONUtils
{
  public static Result<List<Map<String, String>>> parse(String paramString)
    throws JSONException
  {
    Result localResult = new Result();
    Object localObject = new JSONObject(paramString);
    if (((JSONObject)localObject).getInt("success") == 0)
    {
      paramString = new ArrayList();
      localResult.setSuccess(true);
      localObject = ((JSONObject)localObject).getString("data");
      if ((localObject == null) || (((String)localObject).trim().length() == 0)) {
        return null;
      }
      localObject = new JSONArray((String)localObject);
      int i = 0;
      while (i < ((JSONArray)localObject).length())
      {
        JSONObject localJSONObject = ((JSONArray)localObject).getJSONObject(i);
        Iterator localIterator = localJSONObject.keys();
        HashMap localHashMap = new HashMap();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localHashMap.put(str, localJSONObject.getString(str));
        }
        paramString.add(localHashMap);
        i += 1;
      }
      localResult.setData(paramString);
      return localResult;
    }
    localResult.setSuccess(false);
    localResult.setErrCode(((JSONObject)localObject).getString("errCode"));
    localResult.setErrMsg(((JSONObject)localObject).getString("errMsg"));
    return localResult;
  }
}


/* Location:              /Users/Encode_X/AndroidStudioProjects/CampusAssistant/res/neu_android/neu_android.jar!/com/dy/neu/util/JSONUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */