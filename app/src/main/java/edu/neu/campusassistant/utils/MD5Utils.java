package edu.neu.campusassistant.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created with Android Studio.
 * Author: Enex Tapper
 * Date: 15/12/16
 * Project: CampusAssistant
 * Package: edu.neu.campusassistant.utils
 */
public class MD5Utils {
	public static String generateMD5(String string)
	{
		try
		{
			byte[] result = MessageDigest.getInstance("MD5").digest(string.getBytes("UTF-8"));
			StringBuilder localStringBuilder = new StringBuilder(result.length * 2);
			int j = result.length;
			int i = 0;
			while (i < j)
			{
				int k = result[i];
				if ((k & 0xFF) < 16) {
					localStringBuilder.append("0");
				}
				localStringBuilder.append(Integer.toHexString(k & 0xFF));
				i += 1;
			}
			return localStringBuilder.toString();
		}
		catch (NoSuchAlgorithmException | UnsupportedEncodingException e)
		{
			e.printStackTrace();
		}

		return null;
	}
}
