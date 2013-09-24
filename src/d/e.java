package d;

import com.b.r;
import com.c.b;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

public final class e
{
  private HttpsURLConnection a;
  private b b;
  private b c;
  private String d;
  private String e;
  private int f;
  private String g;
  private String h;
  private Map i;
  private boolean j;
  private boolean k;
  private Map l;
  private boolean m = false;
  private int n;
  private r o = null;
  private int p;

  public e(String paramString1, String paramString2)
  {
    this.g = paramString1;
    this.h = paramString2;
  }

  public final Map a()
  {
    return this.l;
  }

  public final void a(b paramb1, b paramb2)
  {
    this.b = paramb1;
    this.c = paramb2;
    this.f = 3;
  }

  public final void a(Map paramMap)
  {
    this.i = paramMap;
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.j = paramBoolean1;
    this.k = paramBoolean2;
  }

  // ERROR //
  public final boolean b()
  {
    // Byte code:
    //   0: invokestatic 69	d/n:a	()V
    //   3: aload_0
    //   4: new 71	java/net/URL
    //   7: dup
    //   8: aload_0
    //   9: getfield 38	d/e:g	Ljava/lang/String;
    //   12: invokespecial 74	java/net/URL:<init>	(Ljava/lang/String;)V
    //   15: invokevirtual 78	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   18: checkcast 80	javax/net/ssl/HttpsURLConnection
    //   21: putfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   24: aload_0
    //   25: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   28: sipush 10000
    //   31: invokevirtual 86	javax/net/ssl/HttpsURLConnection:setReadTimeout	(I)V
    //   34: aload_0
    //   35: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   38: sipush 5000
    //   41: invokevirtual 89	javax/net/ssl/HttpsURLConnection:setConnectTimeout	(I)V
    //   44: aload_0
    //   45: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   48: aload_0
    //   49: getfield 40	d/e:h	Ljava/lang/String;
    //   52: invokevirtual 92	javax/net/ssl/HttpsURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   55: aload_0
    //   56: getfield 34	d/e:m	Z
    //   59: ifeq +14 -> 73
    //   62: aload_0
    //   63: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   66: aload_0
    //   67: getfield 94	d/e:n	I
    //   70: invokevirtual 97	javax/net/ssl/HttpsURLConnection:setChunkedStreamingMode	(I)V
    //   73: aload_0
    //   74: getfield 53	d/e:i	Ljava/util/Map;
    //   77: invokeinterface 103 1 0
    //   82: invokeinterface 109 1 0
    //   87: astore 4
    //   89: aload 4
    //   91: invokeinterface 114 1 0
    //   96: ifne +220 -> 316
    //   99: aload_0
    //   100: getfield 58	d/e:k	Z
    //   103: ifeq +11 -> 114
    //   106: aload_0
    //   107: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   110: iconst_1
    //   111: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setDoOutput	(Z)V
    //   114: aload_0
    //   115: getfield 56	d/e:j	Z
    //   118: ifeq +11 -> 129
    //   121: aload_0
    //   122: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   125: iconst_1
    //   126: invokevirtual 121	javax/net/ssl/HttpsURLConnection:setDoInput	(Z)V
    //   129: aload_0
    //   130: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   133: invokevirtual 124	javax/net/ssl/HttpsURLConnection:connect	()V
    //   136: aload_0
    //   137: getfield 36	d/e:o	Lcom/b/r;
    //   140: ifnull +18 -> 158
    //   143: aload_0
    //   144: getfield 36	d/e:o	Lcom/b/r;
    //   147: iconst_0
    //   148: aload_0
    //   149: getfield 126	d/e:p	I
    //   152: fconst_1
    //   153: invokeinterface 131 4 0
    //   158: aload_0
    //   159: getfield 58	d/e:k	Z
    //   162: ifeq +75 -> 237
    //   165: new 133	java/io/DataOutputStream
    //   168: dup
    //   169: aload_0
    //   170: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   173: invokevirtual 137	javax/net/ssl/HttpsURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   176: invokespecial 140	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   179: astore 9
    //   181: iconst_1
    //   182: aload_0
    //   183: getfield 50	d/e:f	I
    //   186: iand
    //   187: ifeq +179 -> 366
    //   190: aload 9
    //   192: aload_0
    //   193: getfield 46	d/e:b	Lcom/c/b;
    //   196: invokevirtual 145	com/c/b:a	()[B
    //   199: iconst_0
    //   200: aload_0
    //   201: getfield 46	d/e:b	Lcom/c/b;
    //   204: invokevirtual 148	com/c/b:b	()I
    //   207: invokevirtual 152	java/io/DataOutputStream:write	([BII)V
    //   210: aload_0
    //   211: getfield 36	d/e:o	Lcom/b/r;
    //   214: ifnull +18 -> 232
    //   217: aload_0
    //   218: getfield 36	d/e:o	Lcom/b/r;
    //   221: iconst_1
    //   222: aload_0
    //   223: getfield 126	d/e:p	I
    //   226: fconst_1
    //   227: invokeinterface 131 4 0
    //   232: aload 9
    //   234: invokevirtual 155	java/io/DataOutputStream:close	()V
    //   237: aload_0
    //   238: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   241: invokevirtual 160	java/net/HttpURLConnection:getResponseCode	()I
    //   244: istore 17
    //   246: ldc 162
    //   248: new 164	java/lang/StringBuilder
    //   251: dup
    //   252: ldc 166
    //   254: invokespecial 167	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   257: iload 17
    //   259: invokevirtual 171	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   262: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   268: pop
    //   269: iload 17
    //   271: sipush 200
    //   274: if_icmpeq +214 -> 488
    //   277: iload 17
    //   279: sipush 206
    //   282: if_icmpeq +206 -> 488
    //   285: iload 17
    //   287: sipush 201
    //   290: if_icmpeq +198 -> 488
    //   293: iconst_0
    //   294: ireturn
    //   295: astore_3
    //   296: aload_3
    //   297: invokevirtual 183	java/net/ProtocolException:printStackTrace	()V
    //   300: iconst_0
    //   301: ireturn
    //   302: astore_2
    //   303: aload_2
    //   304: invokevirtual 184	java/net/MalformedURLException:printStackTrace	()V
    //   307: iconst_0
    //   308: ireturn
    //   309: astore_1
    //   310: aload_1
    //   311: invokevirtual 185	java/io/IOException:printStackTrace	()V
    //   314: iconst_0
    //   315: ireturn
    //   316: aload 4
    //   318: invokeinterface 189 1 0
    //   323: checkcast 191	java/util/Map$Entry
    //   326: astore 5
    //   328: aload 5
    //   330: invokeinterface 194 1 0
    //   335: checkcast 196	java/lang/String
    //   338: astore 6
    //   340: aload 5
    //   342: invokeinterface 199 1 0
    //   347: checkcast 196	java/lang/String
    //   350: astore 7
    //   352: aload_0
    //   353: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   356: aload 6
    //   358: aload 7
    //   360: invokevirtual 202	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   363: goto -274 -> 89
    //   366: new 204	java/io/File
    //   369: dup
    //   370: aload_0
    //   371: getfield 206	d/e:e	Ljava/lang/String;
    //   374: invokespecial 207	java/io/File:<init>	(Ljava/lang/String;)V
    //   377: astore 10
    //   379: aload 10
    //   381: invokevirtual 211	java/io/File:length	()J
    //   384: lstore 11
    //   386: new 213	java/io/FileInputStream
    //   389: dup
    //   390: aload 10
    //   392: invokespecial 216	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   395: astore 13
    //   397: sipush 4096
    //   400: newarray byte
    //   402: astore 14
    //   404: iconst_0
    //   405: istore 15
    //   407: aload 13
    //   409: aload 14
    //   411: invokevirtual 220	java/io/FileInputStream:read	([B)I
    //   414: istore 16
    //   416: iload 16
    //   418: ifle +62 -> 480
    //   421: aload 9
    //   423: aload 14
    //   425: iconst_0
    //   426: iload 16
    //   428: invokevirtual 152	java/io/DataOutputStream:write	([BII)V
    //   431: iload 15
    //   433: iload 16
    //   435: iadd
    //   436: istore 15
    //   438: aload_0
    //   439: getfield 36	d/e:o	Lcom/b/r;
    //   442: ifnull -35 -> 407
    //   445: aload_0
    //   446: getfield 36	d/e:o	Lcom/b/r;
    //   449: iconst_1
    //   450: aload_0
    //   451: getfield 126	d/e:p	I
    //   454: fconst_1
    //   455: iload 15
    //   457: i2f
    //   458: fmul
    //   459: lload 11
    //   461: l2f
    //   462: fdiv
    //   463: invokeinterface 131 4 0
    //   468: goto -61 -> 407
    //   471: astore 8
    //   473: aload 8
    //   475: invokevirtual 185	java/io/IOException:printStackTrace	()V
    //   478: iconst_0
    //   479: ireturn
    //   480: aload 13
    //   482: invokevirtual 221	java/io/FileInputStream:close	()V
    //   485: goto -253 -> 232
    //   488: aload_0
    //   489: aload_0
    //   490: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   493: invokevirtual 224	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   496: putfield 43	d/e:l	Ljava/util/Map;
    //   499: aload_0
    //   500: getfield 56	d/e:j	Z
    //   503: ifeq +141 -> 644
    //   506: new 226	java/io/DataInputStream
    //   509: dup
    //   510: aload_0
    //   511: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   514: invokevirtual 230	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   517: invokespecial 233	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   520: astore 19
    //   522: iconst_2
    //   523: aload_0
    //   524: getfield 50	d/e:f	I
    //   527: iand
    //   528: ifeq +148 -> 676
    //   531: aload_0
    //   532: getfield 48	d/e:c	Lcom/c/b;
    //   535: invokevirtual 145	com/c/b:a	()[B
    //   538: astore 27
    //   540: iconst_0
    //   541: istore 28
    //   543: aload 19
    //   545: aload 27
    //   547: iload 28
    //   549: aload 27
    //   551: arraylength
    //   552: iload 28
    //   554: isub
    //   555: invokevirtual 236	java/io/DataInputStream:read	([BII)I
    //   558: istore 29
    //   560: iload 29
    //   562: ifle +44 -> 606
    //   565: iload 28
    //   567: iload 29
    //   569: iadd
    //   570: istore 28
    //   572: iload 28
    //   574: aload 27
    //   576: arraylength
    //   577: if_icmplt -34 -> 543
    //   580: iload 28
    //   582: iconst_2
    //   583: imul
    //   584: newarray byte
    //   586: astore 30
    //   588: aload 27
    //   590: iconst_0
    //   591: aload 30
    //   593: iconst_0
    //   594: iload 28
    //   596: invokestatic 242	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   599: aload 30
    //   601: astore 27
    //   603: goto -60 -> 543
    //   606: aload_0
    //   607: getfield 36	d/e:o	Lcom/b/r;
    //   610: ifnull +18 -> 628
    //   613: aload_0
    //   614: getfield 36	d/e:o	Lcom/b/r;
    //   617: iconst_2
    //   618: aload_0
    //   619: getfield 126	d/e:p	I
    //   622: fconst_1
    //   623: invokeinterface 131 4 0
    //   628: aload_0
    //   629: getfield 48	d/e:c	Lcom/c/b;
    //   632: aload 27
    //   634: iload 28
    //   636: invokevirtual 245	com/c/b:a	([BI)V
    //   639: aload 19
    //   641: invokevirtual 246	java/io/DataInputStream:close	()V
    //   644: aload_0
    //   645: getfield 82	d/e:a	Ljavax/net/ssl/HttpsURLConnection;
    //   648: invokevirtual 249	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   651: aload_0
    //   652: getfield 36	d/e:o	Lcom/b/r;
    //   655: ifnull +134 -> 789
    //   658: aload_0
    //   659: getfield 36	d/e:o	Lcom/b/r;
    //   662: iconst_3
    //   663: aload_0
    //   664: getfield 126	d/e:p	I
    //   667: fconst_1
    //   668: invokeinterface 131 4 0
    //   673: goto +116 -> 789
    //   676: new 204	java/io/File
    //   679: dup
    //   680: aload_0
    //   681: getfield 251	d/e:d	Ljava/lang/String;
    //   684: invokespecial 207	java/io/File:<init>	(Ljava/lang/String;)V
    //   687: astore 20
    //   689: aload 20
    //   691: invokevirtual 211	java/io/File:length	()J
    //   694: lstore 21
    //   696: new 253	java/io/FileOutputStream
    //   699: dup
    //   700: aload 20
    //   702: invokespecial 254	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   705: astore 23
    //   707: sipush 4096
    //   710: newarray byte
    //   712: astore 24
    //   714: iconst_0
    //   715: istore 25
    //   717: aload 19
    //   719: aload 24
    //   721: invokevirtual 255	java/io/DataInputStream:read	([B)I
    //   724: istore 26
    //   726: iload 26
    //   728: ifle +53 -> 781
    //   731: iload 25
    //   733: iload 26
    //   735: iadd
    //   736: istore 25
    //   738: aload 23
    //   740: aload 24
    //   742: iconst_0
    //   743: iload 26
    //   745: invokevirtual 256	java/io/FileOutputStream:write	([BII)V
    //   748: aload_0
    //   749: getfield 36	d/e:o	Lcom/b/r;
    //   752: ifnull -35 -> 717
    //   755: aload_0
    //   756: getfield 36	d/e:o	Lcom/b/r;
    //   759: iconst_2
    //   760: aload_0
    //   761: getfield 126	d/e:p	I
    //   764: fconst_1
    //   765: iload 25
    //   767: i2f
    //   768: fmul
    //   769: lload 21
    //   771: l2f
    //   772: fdiv
    //   773: invokeinterface 131 4 0
    //   778: goto -61 -> 717
    //   781: aload 23
    //   783: invokevirtual 257	java/io/FileOutputStream:close	()V
    //   786: goto -147 -> 639
    //   789: iconst_1
    //   790: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   3	55	295	java/net/ProtocolException
    //   3	55	302	java/net/MalformedURLException
    //   3	55	309	java/io/IOException
    //   129	158	471	java/io/IOException
    //   158	232	471	java/io/IOException
    //   232	237	471	java/io/IOException
    //   237	269	471	java/io/IOException
    //   366	404	471	java/io/IOException
    //   407	416	471	java/io/IOException
    //   421	431	471	java/io/IOException
    //   438	468	471	java/io/IOException
    //   480	485	471	java/io/IOException
    //   488	540	471	java/io/IOException
    //   543	560	471	java/io/IOException
    //   572	599	471	java/io/IOException
    //   606	628	471	java/io/IOException
    //   628	639	471	java/io/IOException
    //   639	644	471	java/io/IOException
    //   644	673	471	java/io/IOException
    //   676	714	471	java/io/IOException
    //   717	726	471	java/io/IOException
    //   738	778	471	java/io/IOException
    //   781	786	471	java/io/IOException
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.e
 * JD-Core Version:    0.6.2
 */