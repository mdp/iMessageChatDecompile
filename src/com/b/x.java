package com.b;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import e.d;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public final class x extends Thread
{
  private int a;
  private String b;
  private com.c.b c;
  private boolean d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private boolean k;
  private int l;
  private int m;
  private Handler n;
  private Context o;

  public x(Handler paramHandler, Context paramContext)
  {
    this.n = paramHandler;
    this.o = paramContext;
  }

  private boolean a()
  {
    boolean bool;
    int i1;
    while (true)
    {
      DataOutputStream localDataOutputStream;
      label132: byte[] arrayOfByte2;
      byte[] arrayOfByte4;
      int i4;
      try
      {
        Socket localSocket = new Socket();
        localSocket.connect(new InetSocketAddress(this.o.getString(2131165186), this.o.getResources().getInteger(2131230720)), 3000);
        if (!localSocket.isConnected())
          break label888;
        Log.d("register", "link succ");
        DataInputStream localDataInputStream = new DataInputStream(localSocket.getInputStream());
        localDataOutputStream = new DataOutputStream(localSocket.getOutputStream());
        e.a.a();
        com.c.b localb1 = e.a.b();
        localDataOutputStream.write(localb1.a(), 0, localb1.b());
        bool = true;
        i1 = 0;
        break;
        localDataInputStream.close();
        localDataOutputStream.close();
        localSocket.close();
        return bool;
        byte[] arrayOfByte1 = new byte[5];
        localDataInputStream.readFully(arrayOfByte1);
        int i2 = 0xFF000000 & arrayOfByte1[1] << 24 | 0xFF0000 & arrayOfByte1[2] << 16 | 0xFF00 & arrayOfByte1[3] << 8 | 0xFF & arrayOfByte1[4] << 0;
        arrayOfByte2 = new byte[i2];
        localDataInputStream.readFully(arrayOfByte2);
        Log.d("Register rec ", " type " + arrayOfByte1[0]);
        switch (arrayOfByte1[0])
        {
        case 1:
          arrayOfByte4 = new byte[i2 + 5];
          System.arraycopy(arrayOfByte1, 0, arrayOfByte4, 0, 5);
          System.arraycopy(arrayOfByte2, 0, arrayOfByte4, 5, i2);
          new com.c.b(arrayOfByte4, i2 + 5);
          i4 = i2 + 5;
          switch (arrayOfByte4[6])
          {
          case 2:
            e.a.a(arrayOfByte4);
            com.c.b localb5 = e.a.c();
            localDataOutputStream.write(localb5.a(), 0, localb5.b());
          case 4:
          case 3:
          }
          break;
        case 60:
        }
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        this.a = 2;
        return false;
      }
      e.a.a(arrayOfByte4, i4);
      int i5 = this.b.length();
      int i6 = this.e.length();
      int i7 = i6 + (3 + (i5 + 11));
      byte[] arrayOfByte5 = new byte[i7];
      arrayOfByte5[0] = 10;
      arrayOfByte5[1] = ((byte)(i7 - 5 >> 24));
      arrayOfByte5[2] = ((byte)(i7 - 5 >> 16));
      arrayOfByte5[3] = ((byte)(i7 - 5 >> 8));
      arrayOfByte5[4] = ((byte)(i7 - 5 >> 0));
      arrayOfByte5[5] = 4;
      arrayOfByte5[6] = 1;
      arrayOfByte5[7] = 1;
      arrayOfByte5[8] = 1;
      arrayOfByte5[9] = ((byte)(i5 >> 8));
      arrayOfByte5[10] = ((byte)i5);
      System.arraycopy(this.b.getBytes(), 0, arrayOfByte5, 11, i5);
      int i8 = i5 + 11;
      int i9 = i8 + 1;
      arrayOfByte5[i8] = 2;
      int i10 = i9 + 1;
      arrayOfByte5[i9] = ((byte)(i6 >> 8));
      int i11 = i10 + 1;
      arrayOfByte5[i10] = ((byte)i6);
      System.arraycopy(this.e.getBytes(), 0, arrayOfByte5, i11, i6);
      byte[] arrayOfByte6 = d.a(arrayOfByte5);
      byte[] arrayOfByte7 = new byte[5 + arrayOfByte6.length];
      arrayOfByte7[0] = 60;
      arrayOfByte7[1] = ((byte)(arrayOfByte6.length >> 24));
      arrayOfByte7[2] = ((byte)(arrayOfByte6.length >> 16));
      arrayOfByte7[3] = ((byte)(arrayOfByte6.length >> 8));
      arrayOfByte7[4] = ((byte)(arrayOfByte6.length >> 0));
      System.arraycopy(arrayOfByte6, 0, arrayOfByte7, 5, arrayOfByte6.length);
      com.c.b localb4 = new com.c.b(arrayOfByte7, 5 + arrayOfByte6.length);
      localDataOutputStream.write(localb4.a(), 0, localb4.b());
      break;
      byte[] arrayOfByte3 = d.a(arrayOfByte2);
      com.c.b localb2 = new com.c.b(arrayOfByte3, arrayOfByte3.length);
      Log.d("Register ", " ttype " + localb2.a()[0]);
      switch (localb2.a()[0])
      {
      case 10:
        b.b localb = new b.b(localb2);
        if (!localb.a())
        {
          this.a = 2;
          bool = false;
        }
        else
        {
          com.c.b localb3 = localb.b();
          localDataOutputStream.write(localb3.a(), 0, localb3.b());
        }
        break;
      case 11:
        int i3 = localb2.a()[10];
        if ((i3 == 0) || (i3 == 3))
        {
          this.a = 1;
          bool = true;
          break label919;
        }
        this.a = 3;
        bool = false;
        break label919;
        label888: this.a = 2;
        bool = false;
      }
    }
    while (bool)
    {
      if (i1 == 0)
        break label132;
      break;
      continue;
      continue;
      continue;
      label919: i1 = 1;
    }
  }

  private static String c(String paramString1, String paramString2)
  {
    Object localObject = "";
    try
    {
      String str = URLEncoder.encode(paramString2, "gb2312");
      localObject = str;
      return paramString1 + "=" + (String)localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        localUnsupportedEncodingException.printStackTrace();
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.m = (paramInt1 - 1);
    this.l = (paramInt2 - 1);
  }

  public final void a(String paramString)
  {
    this.e = paramString;
  }

  public final void a(String paramString1, String paramString2)
  {
    this.f = paramString1;
    this.g = paramString2;
  }

  public final void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final void b(String paramString1, String paramString2)
  {
    this.h = paramString1;
    this.i = paramString2;
  }

  public final void c(String paramString)
  {
    this.j = paramString;
  }

  public final void run()
  {
    d.e locale = new d.e(this.o.getString(2131165187), "POST");
    String str1 = c("lastName", this.g) + "&" + c("firstName", this.f) + "&" + c("appleId", this.b) + "&" + c("password", this.e) + "&" + c("verify-password", this.e) + "&" + c("passwordQuestion", this.h) + "&" + c("customPasswordQuestion", "") + "&" + c("passwordAnswer", this.i) + "&" + c("birthMonth", new StringBuilder().append(this.m).toString()) + "&" + c("birthDay", new StringBuilder().append(this.l).toString()) + "&" + c("countryCode", this.j) + "&" + c("wantsAppleNews", new StringBuilder().append(this.k).toString());
    this.c = new com.c.b(str1.getBytes(), str1.length());
    com.c.b localb1 = this.c;
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)");
    localHashMap1.put("x-protocol-version", "7");
    localHashMap1.put("x-vc-ui-layout", "desktop-settings1");
    localHashMap1.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
    localHashMap1.put("Content-Type", "application/x-www-form-urlencoded");
    localHashMap1.put("Origin", "https://service.ess.apple.com");
    localHashMap1.put("X-MMe-Client-Info", "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.iChat/7.0.1 (com.apple.iChat/7.0.1)>");
    localHashMap1.put("x-vc-service", "Messenger");
    localHashMap1.put("x-ds-client-id", "t:982450B522CC995FB3B2FBA6FAC184D5D590BCB1");
    localHashMap1.put("Referer", "https://service.ess.apple.com/WebObjects/VCProfileService.woa/wp/accountSetup");
    localHashMap1.put("Connection", "keep-alive");
    localHashMap1.put("Content-Length", this.c.b());
    localHashMap1.put("Accept-Language", "en");
    localHashMap1.put("Accept-Encoding", "gzip, deflate");
    localHashMap1.put("Cookie", "vc_ap=0");
    localHashMap1.put("Proxy-Connection", "keep-alive");
    locale.a(localHashMap1);
    locale.a(true, true);
    com.c.b localb2 = new com.c.b(new byte[100], 100);
    locale.a(localb1, localb2);
    if (locale.b())
    {
      new String(localb2.a()).substring(0);
      String str2 = e.e.a(localb2.a());
      Log.d("Register res", str2);
      if (str2.indexOf("appleIdInUseDialog") != -1)
      {
        this.a = 0;
        this.d = false;
        if (this.d)
        {
          a();
          if (this.a == 1);
        }
      }
    }
    for (this.a = 4; ; this.a = 2)
    {
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("Register" + this.a, this.b);
      com.umeng.a.a.a(this.o, "Register", localHashMap2);
      Message localMessage = this.n.obtainMessage();
      localMessage.what = this.a;
      localMessage.getData().putSerializable("msg", null);
      this.n.sendMessage(localMessage);
      return;
      this.d = true;
      break;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.x
 * JD-Core Version:    0.6.2
 */