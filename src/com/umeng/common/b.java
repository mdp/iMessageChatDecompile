package com.umeng.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class b
{
  protected static final String a = b.class.getName();

  private static int a(Object paramObject, String paramString)
  {
    try
    {
      Field localField = DisplayMetrics.class.getDeclaredField(paramString);
      localField.setAccessible(true);
      int i = localField.getInt(paramObject);
      return i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return -1;
  }

  public static String a()
  {
    String str1 = null;
    try
    {
      FileReader localFileReader = new FileReader("/proc/cpuinfo");
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(localFileReader, 1024);
        str1 = localBufferedReader.readLine();
        localBufferedReader.close();
        localFileReader.close();
        str2 = str1;
        if (str2 != null)
          str2 = str2.substring(1 + str2.indexOf(':'));
        return str2.trim();
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          a.b(a, "Could not read from file /proc/cpuinfo", localIOException);
          str2 = str1;
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        a.b(a, "Could not open file /proc/cpuinfo", localFileNotFoundException);
        String str2 = str1;
      }
    }
  }

  public static String a(Context paramContext)
  {
    try
    {
      String str = String.valueOf(paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode);
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return "Unknown";
  }

  public static String a(Date paramDate)
  {
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(paramDate);
  }

  public static boolean a(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }

  public static String b(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return "Unknown";
  }

  public static boolean b()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public static String c(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager == null)
      a.d(a, "No IMEI.");
    try
    {
      if (a(paramContext, "android.permission.READ_PHONE_STATE"))
      {
        String str2 = localTelephonyManager.getDeviceId();
        str1 = str2;
        if (TextUtils.isEmpty(str1))
        {
          a.d(a, "No IMEI.");
          str1 = l(paramContext);
          if (TextUtils.isEmpty(str1))
          {
            a.d(a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
            str1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
            a.a(a, "getDeviceId: Secure.ANDROID_ID: " + str1);
          }
        }
        return str1;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.d(a, "No IMEI.", localException);
        String str1 = "";
      }
    }
  }

  public static String d(Context paramContext)
  {
    return com.umeng.common.util.b.b(c(paramContext));
  }

  public static String[] e(Context paramContext)
  {
    String[] arrayOfString = { "Unknown", "Unknown" };
    if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0)
    {
      arrayOfString[0] = "Unknown";
      return arrayOfString;
    }
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null)
    {
      arrayOfString[0] = "Unknown";
      return arrayOfString;
    }
    if (localConnectivityManager.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED)
    {
      arrayOfString[0] = "Wi-Fi";
      return arrayOfString;
    }
    NetworkInfo localNetworkInfo = localConnectivityManager.getNetworkInfo(0);
    if (localNetworkInfo.getState() == NetworkInfo.State.CONNECTED)
    {
      arrayOfString[0] = "2G/3G";
      arrayOfString[1] = localNetworkInfo.getSubtypeName();
      return arrayOfString;
    }
    return arrayOfString;
  }

  public static boolean f(Context paramContext)
  {
    return "Wi-Fi".equals(e(paramContext)[0]);
  }

  public static Location g(Context paramContext)
  {
    try
    {
      LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
      if (a(paramContext, "android.permission.ACCESS_FINE_LOCATION"))
      {
        Location localLocation2 = localLocationManager.getLastKnownLocation("gps");
        if (localLocation2 != null)
        {
          a.c(a, "get location from gps:" + localLocation2.getLatitude() + "," + localLocation2.getLongitude());
          return localLocation2;
        }
      }
      if (a(paramContext, "android.permission.ACCESS_COARSE_LOCATION"))
      {
        Location localLocation1 = localLocationManager.getLastKnownLocation("network");
        if (localLocation1 != null)
        {
          a.c(a, "get location from network:" + localLocation1.getLatitude() + "," + localLocation1.getLongitude());
          return localLocation1;
        }
      }
    }
    catch (Exception localException)
    {
      a.b(a, localException.getMessage());
      return null;
    }
    a.c(a, "Could not get location from GPS or Cell-id, lack ACCESS_COARSE_LOCATION or ACCESS_COARSE_LOCATION permission?");
    return null;
  }

  public static boolean h(Context paramContext)
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        boolean bool = localNetworkInfo.isConnectedOrConnecting();
        return bool;
      }
      return false;
    }
    catch (Exception localException)
    {
    }
    return true;
  }

  public static int i(Context paramContext)
  {
    try
    {
      Calendar localCalendar = Calendar.getInstance(r(paramContext));
      if (localCalendar != null)
      {
        int i = localCalendar.getTimeZone().getRawOffset() / 3600000;
        return i;
      }
    }
    catch (Exception localException)
    {
      a.a(a, "error in getTimeZone", localException);
    }
    return 8;
  }

  public static String[] j(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    try
    {
      Locale localLocale = r(paramContext);
      if (localLocale != null)
      {
        arrayOfString[0] = localLocale.getCountry();
        arrayOfString[1] = localLocale.getLanguage();
      }
      if (TextUtils.isEmpty(arrayOfString[0]))
        arrayOfString[0] = "Unknown";
      if (TextUtils.isEmpty(arrayOfString[1]))
        arrayOfString[1] = "Unknown";
      return arrayOfString;
    }
    catch (Exception localException)
    {
      a.b(a, "error in getLocaleInfo", localException);
    }
    return arrayOfString;
  }

  public static String k(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo != null)
      {
        String str = localApplicationInfo.metaData.getString("UMENG_APPKEY");
        if (str != null)
          return str.trim();
        a.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
      }
      return null;
    }
    catch (Exception localException)
    {
      while (true)
        a.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", localException);
    }
  }

  public static String l(Context paramContext)
  {
    try
    {
      WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
        return localWifiManager.getConnectionInfo().getMacAddress();
      a.d(a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
      return "";
    }
    catch (Exception localException)
    {
      while (true)
        a.d(a, "Could not get mac address." + localException.toString());
    }
  }

  public static String m(Context paramContext)
  {
    while (true)
    {
      int i;
      try
      {
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        i = 0;
        if ((0x2000 & paramContext.getApplicationInfo().flags) == 0)
        {
          j = a(localDisplayMetrics, "noncompatWidthPixels");
          i = a(localDisplayMetrics, "noncompatHeightPixels");
          break label134;
          j = localDisplayMetrics.widthPixels;
          i = localDisplayMetrics.heightPixels;
          StringBuffer localStringBuffer = new StringBuffer();
          localStringBuffer.append(j);
          localStringBuffer.append("*");
          localStringBuffer.append(i);
          String str = localStringBuffer.toString();
          return str;
        }
      }
      catch (Exception localException)
      {
        a.b(a, "read resolution fail", localException);
        return "Unknown";
      }
      int j = -1;
      label134: if (j != -1)
        if (i != -1);
    }
  }

  public static String n(Context paramContext)
  {
    try
    {
      String str = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
      return str;
    }
    catch (Exception localException)
    {
      a.a(a, "read carrier fail", localException);
    }
    return "Unknown";
  }

  public static String o(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if ((localApplicationInfo != null) && (localApplicationInfo.metaData != null))
      {
        Object localObject = localApplicationInfo.metaData.get("UMENG_CHANNEL");
        if (localObject != null)
        {
          String str = localObject.toString();
          if (str != null)
            return str;
          a.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
        }
      }
      return "Unknown";
    }
    catch (Exception localException)
    {
      a.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
      localException.printStackTrace();
    }
    return "Unknown";
  }

  public static String p(Context paramContext)
  {
    return paramContext.getPackageName();
  }

  public static String q(Context paramContext)
  {
    return paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString();
  }

  private static Locale r(Context paramContext)
  {
    try
    {
      Configuration localConfiguration = new Configuration();
      Settings.System.getConfiguration(paramContext.getContentResolver(), localConfiguration);
      localLocale = localConfiguration.locale;
      if (localLocale == null)
        localLocale = Locale.getDefault();
      return localLocale;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.b(a, "fail to read user config locale");
        Locale localLocale = null;
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.b
 * JD-Core Version:    0.6.2
 */