package d;

import android.util.Log;
import com.c.a;
import com.c.b;
import java.io.File;
import java.util.Map;

public final class i
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private p g;
  private s h;
  private r i;
  private int j;

  // ERROR //
  private boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 34	d/s
    //   4: dup
    //   5: invokespecial 35	d/s:<init>	()V
    //   8: putfield 37	d/i:h	Ld/s;
    //   11: aload_0
    //   12: getfield 37	d/i:h	Ld/s;
    //   15: aload_0
    //   16: getfield 39	d/i:g	Ld/p;
    //   19: invokevirtual 44	d/p:c	()Lcom/c/b;
    //   22: invokevirtual 47	d/s:a	(Lcom/c/b;)Ljava/util/Map;
    //   25: astore_1
    //   26: aload_0
    //   27: getfield 37	d/i:h	Ld/s;
    //   30: pop
    //   31: new 49	com/c/b
    //   34: dup
    //   35: iconst_1
    //   36: newarray byte
    //   38: iconst_0
    //   39: invokespecial 52	com/c/b:<init>	([BI)V
    //   42: pop
    //   43: aload_1
    //   44: ldc 54
    //   46: invokeinterface 60 2 0
    //   51: checkcast 62	java/lang/String
    //   54: astore 4
    //   56: aload 4
    //   58: ldc 64
    //   60: invokevirtual 68	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   63: istore 5
    //   65: aload 4
    //   67: bipush 45
    //   69: iload 5
    //   71: bipush 6
    //   73: iadd
    //   74: invokevirtual 71	java/lang/String:indexOf	(II)I
    //   77: istore 6
    //   79: aload 4
    //   81: iload 5
    //   83: bipush 6
    //   85: iadd
    //   86: iload 6
    //   88: invokevirtual 75	java/lang/String:substring	(II)Ljava/lang/String;
    //   91: invokestatic 80	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   94: istore 7
    //   96: iconst_1
    //   97: aload 4
    //   99: iload 6
    //   101: iconst_1
    //   102: iadd
    //   103: invokevirtual 83	java/lang/String:substring	(I)Ljava/lang/String;
    //   106: invokestatic 80	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   109: iadd
    //   110: istore 8
    //   112: ldc 85
    //   114: new 87	java/lang/StringBuilder
    //   117: dup
    //   118: ldc 89
    //   120: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   123: iload 7
    //   125: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   128: ldc 98
    //   130: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: iload 8
    //   135: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   138: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: invokestatic 110	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   144: pop
    //   145: aload_1
    //   146: ldc 54
    //   148: invokeinterface 113 2 0
    //   153: pop
    //   154: new 115	java/io/File
    //   157: dup
    //   158: aload_0
    //   159: getfield 117	d/i:b	Ljava/lang/String;
    //   162: invokespecial 118	java/io/File:<init>	(Ljava/lang/String;)V
    //   165: astore 11
    //   167: new 120	java/io/FileOutputStream
    //   170: dup
    //   171: aload 11
    //   173: invokespecial 123	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   176: astore 12
    //   178: aload_0
    //   179: getfield 37	d/i:h	Ld/s;
    //   182: invokevirtual 125	d/s:g	()V
    //   185: iload 7
    //   187: istore 13
    //   189: iload 13
    //   191: iload 8
    //   193: if_icmplt +91 -> 284
    //   196: ldc 127
    //   198: new 87	java/lang/StringBuilder
    //   201: dup
    //   202: ldc 129
    //   204: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: iload 13
    //   209: iload 7
    //   211: isub
    //   212: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   215: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   218: invokestatic 110	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   221: pop
    //   222: aload_0
    //   223: getfield 37	d/i:h	Ld/s;
    //   226: invokevirtual 131	d/s:h	()V
    //   229: aload_0
    //   230: getfield 37	d/i:h	Ld/s;
    //   233: invokevirtual 133	d/s:c	()V
    //   236: aload_0
    //   237: getfield 37	d/i:h	Ld/s;
    //   240: iload 13
    //   242: iload 7
    //   244: isub
    //   245: invokevirtual 136	d/s:a	(I)V
    //   248: aload 12
    //   250: invokevirtual 139	java/io/FileOutputStream:flush	()V
    //   253: aload 12
    //   255: invokevirtual 142	java/io/FileOutputStream:close	()V
    //   258: iload 13
    //   260: iload 8
    //   262: if_icmpne +456 -> 718
    //   265: ldc 144
    //   267: ldc 146
    //   269: invokestatic 110	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   272: pop
    //   273: iconst_1
    //   274: ireturn
    //   275: astore 40
    //   277: aload 40
    //   279: invokevirtual 149	java/io/FileNotFoundException:printStackTrace	()V
    //   282: iconst_0
    //   283: ireturn
    //   284: new 151	java/net/URL
    //   287: dup
    //   288: aload_0
    //   289: getfield 37	d/i:h	Ld/s;
    //   292: invokevirtual 153	d/s:b	()Ljava/lang/String;
    //   295: invokespecial 154	java/net/URL:<init>	(Ljava/lang/String;)V
    //   298: invokevirtual 158	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   301: checkcast 160	java/net/HttpURLConnection
    //   304: astore 15
    //   306: aload 15
    //   308: aload_0
    //   309: getfield 37	d/i:h	Ld/s;
    //   312: invokevirtual 162	d/s:a	()Ljava/lang/String;
    //   315: invokevirtual 165	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   318: aload 15
    //   320: sipush 15000
    //   323: invokevirtual 168	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   326: aload 15
    //   328: sipush 10000
    //   331: invokevirtual 171	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   334: aload 15
    //   336: astore 17
    //   338: aload_1
    //   339: invokeinterface 175 1 0
    //   344: invokeinterface 181 1 0
    //   349: astore 18
    //   351: aload 18
    //   353: invokeinterface 186 1 0
    //   358: ifne +283 -> 641
    //   361: new 87	java/lang/StringBuilder
    //   364: dup
    //   365: ldc 64
    //   367: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   370: iload 13
    //   372: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   375: ldc 188
    //   377: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: iload 8
    //   382: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   385: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   388: astore 20
    //   390: aload 17
    //   392: ldc 54
    //   394: aload 20
    //   396: invokevirtual 192	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   399: ldc 144
    //   401: new 87	java/lang/StringBuilder
    //   404: dup
    //   405: ldc 194
    //   407: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   410: aload 20
    //   412: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   418: invokestatic 110	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   421: pop
    //   422: aload 17
    //   424: invokevirtual 197	java/net/HttpURLConnection:connect	()V
    //   427: aload 17
    //   429: invokevirtual 201	java/net/HttpURLConnection:getResponseCode	()I
    //   432: istore 27
    //   434: ldc 203
    //   436: new 87	java/lang/StringBuilder
    //   439: dup
    //   440: ldc 205
    //   442: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   445: iload 27
    //   447: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   450: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   453: invokestatic 110	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   456: pop
    //   457: aload 17
    //   459: invokevirtual 208	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   462: pop
    //   463: iload 27
    //   465: sipush 200
    //   468: if_icmpeq +11 -> 479
    //   471: iload 27
    //   473: sipush 206
    //   476: if_icmpne -280 -> 196
    //   479: new 210	java/io/DataInputStream
    //   482: dup
    //   483: aload 17
    //   485: invokevirtual 214	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   488: invokespecial 217	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   491: astore 30
    //   493: sipush 4096
    //   496: newarray byte
    //   498: astore 33
    //   500: iload 13
    //   502: istore 32
    //   504: aload 30
    //   506: aload 33
    //   508: invokevirtual 221	java/io/DataInputStream:read	([B)I
    //   511: istore 34
    //   513: iload 34
    //   515: ifle +176 -> 691
    //   518: ldc 223
    //   520: new 87	java/lang/StringBuilder
    //   523: dup
    //   524: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   527: iload 34
    //   529: invokevirtual 96	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   532: ldc 226
    //   534: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   537: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   540: invokestatic 110	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   543: pop
    //   544: iload 32
    //   546: iload 34
    //   548: iadd
    //   549: istore 32
    //   551: aload 12
    //   553: aload 33
    //   555: iconst_0
    //   556: iload 34
    //   558: invokevirtual 230	java/io/FileOutputStream:write	([BII)V
    //   561: goto -57 -> 504
    //   564: astore 31
    //   566: aload 31
    //   568: invokevirtual 231	java/io/IOException:printStackTrace	()V
    //   571: iload 32
    //   573: istore 13
    //   575: goto -386 -> 189
    //   578: astore 38
    //   580: aconst_null
    //   581: astore 15
    //   583: aload 38
    //   585: astore 39
    //   587: aload 39
    //   589: invokevirtual 232	java/net/ProtocolException:printStackTrace	()V
    //   592: aload 15
    //   594: astore 17
    //   596: goto -258 -> 338
    //   599: astore 36
    //   601: aconst_null
    //   602: astore 15
    //   604: aload 36
    //   606: astore 37
    //   608: aload 37
    //   610: invokevirtual 233	java/net/MalformedURLException:printStackTrace	()V
    //   613: aload 15
    //   615: astore 17
    //   617: goto -279 -> 338
    //   620: astore 14
    //   622: aconst_null
    //   623: astore 15
    //   625: aload 14
    //   627: astore 16
    //   629: aload 16
    //   631: invokevirtual 231	java/io/IOException:printStackTrace	()V
    //   634: aload 15
    //   636: astore 17
    //   638: goto -300 -> 338
    //   641: aload 18
    //   643: invokeinterface 237 1 0
    //   648: checkcast 239	java/util/Map$Entry
    //   651: astore 19
    //   653: aload 17
    //   655: aload 19
    //   657: invokeinterface 242 1 0
    //   662: checkcast 62	java/lang/String
    //   665: aload 19
    //   667: invokeinterface 245 1 0
    //   672: checkcast 62	java/lang/String
    //   675: invokevirtual 192	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   678: goto -327 -> 351
    //   681: astore 22
    //   683: aload 22
    //   685: invokevirtual 231	java/io/IOException:printStackTrace	()V
    //   688: goto -492 -> 196
    //   691: aload 30
    //   693: invokevirtual 246	java/io/DataInputStream:close	()V
    //   696: aload 17
    //   698: invokevirtual 249	java/net/HttpURLConnection:disconnect	()V
    //   701: iload 32
    //   703: istore 13
    //   705: goto -516 -> 189
    //   708: astore 24
    //   710: aload 24
    //   712: invokevirtual 231	java/io/IOException:printStackTrace	()V
    //   715: goto -457 -> 258
    //   718: ldc 144
    //   720: ldc 251
    //   722: invokestatic 110	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   725: pop
    //   726: iconst_0
    //   727: ireturn
    //   728: astore 31
    //   730: iload 13
    //   732: istore 32
    //   734: goto -168 -> 566
    //   737: astore 16
    //   739: goto -110 -> 629
    //   742: astore 37
    //   744: goto -136 -> 608
    //   747: astore 39
    //   749: goto -162 -> 587
    //
    // Exception table:
    //   from	to	target	type
    //   167	178	275	java/io/FileNotFoundException
    //   504	513	564	java/io/IOException
    //   518	544	564	java/io/IOException
    //   551	561	564	java/io/IOException
    //   691	696	564	java/io/IOException
    //   284	306	578	java/net/ProtocolException
    //   284	306	599	java/net/MalformedURLException
    //   284	306	620	java/io/IOException
    //   422	463	681	java/io/IOException
    //   248	258	708	java/io/IOException
    //   479	500	728	java/io/IOException
    //   306	334	737	java/io/IOException
    //   306	334	742	java/net/MalformedURLException
    //   306	334	747	java/net/ProtocolException
  }

  public final boolean a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramString4;
    this.j = paramInt;
    return true;
  }

  public final boolean a(String paramString, byte[] paramArrayOfByte)
  {
    this.a = paramString;
    this.b = (a.b + this.a.substring(1 + this.a.lastIndexOf("/")) + ".code");
    this.g = new p();
    e locale1 = new e(this.f + "/authorizeGet", "POST");
    this.g.a(this.d, this.e, this.c);
    b localb1 = this.g.b();
    b localb2 = new b(new byte[500], 500);
    locale1.a(localb1, localb2);
    locale1.a(this.g.a());
    this.g.g();
    locale1.a(true, true);
    int k;
    if (locale1.b())
    {
      Log.d("AuthorizeGet", " Succ");
      this.g.h();
      this.g.a(localb2);
      k = 1;
      if ((k == 0) || (!a()))
        break label480;
      this.i = new r();
      this.i.a(this.h.d(), this.c, this.h.e());
      this.i.a(this.h.b(), this.g.i(), this.h.i(), this.h.f());
      b localb3 = this.i.b();
      Map localMap = this.i.a();
      e locale2 = new e(this.f + "/getComplete", "POST");
      locale2.a(localMap);
      locale2.a(false, true);
      locale2.a(localb3, new b(new byte[100], 100));
      this.i.g();
      if (!locale2.b())
        break label468;
      Log.d("GetComplete", "Succ");
      this.i.h();
      this.i.c();
      label419: d.a(paramArrayOfByte, this.b, this.a);
    }
    label468: label480: for (boolean bool = true; ; bool = false)
    {
      new File(this.b).delete();
      return bool;
      Log.d("AuthorizeGet", " Err");
      k = 0;
      break;
      Log.d("GetComplete", "Err");
      break label419;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.i
 * JD-Core Version:    0.6.2
 */