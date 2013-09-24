package com.umeng.common.net;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.util.Map;

final class b extends Thread
{
  private Context b;
  private String c;
  private int d = 0;
  private long e = -1L;
  private long f = -1L;
  private int g = -1;
  private int h;
  private a i;
  private g j;

  public b(DownloadingService paramDownloadingService, Context paramContext, g paramg, int paramInt1, int paramInt2, a parama)
  {
    try
    {
      this.b = paramContext;
      this.j = paramg;
      this.d = paramInt2;
      if (DownloadingService.c().containsKey(Integer.valueOf(paramInt1)))
      {
        long[] arrayOfLong = ((d)DownloadingService.c().get(Integer.valueOf(paramInt1))).f;
        if ((arrayOfLong != null) && (arrayOfLong.length > 1))
        {
          this.e = arrayOfLong[0];
          this.f = arrayOfLong[1];
        }
      }
      this.i = parama;
      this.h = paramInt1;
      if (com.umeng.common.b.b())
      {
        this.c = Environment.getExternalStorageDirectory().getCanonicalPath();
        new File(this.c).mkdirs();
      }
      while (true)
      {
        this.c += "/download/.um/apk";
        new File(this.c).mkdirs();
        return;
        this.c = this.b.getFilesDir().getAbsolutePath();
      }
    }
    catch (Exception localException)
    {
      com.umeng.common.a.c(DownloadingService.a(), localException.getMessage(), localException);
      this.i.b(this.h);
    }
  }

  private void a(Exception paramException)
  {
    com.umeng.common.a.b(DownloadingService.a(), "can not install. " + paramException.getMessage());
    if (this.i != null)
      this.i.b(this.h);
    DownloadingService.a(this.j, this.e, this.f, this.d);
  }

  // ERROR //
  private void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: new 101	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   7: aload_0
    //   8: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   11: getfield 157	com/umeng/common/net/g:c	Ljava/lang/String;
    //   14: invokestatic 162	com/umeng/common/util/b:a	(Ljava/lang/String;)Ljava/lang/String;
    //   17: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc 164
    //   22: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: astore 41
    //   30: aload_0
    //   31: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   34: getfield 166	com/umeng/common/net/g:a	Ljava/lang/String;
    //   37: ldc 168
    //   39: invokevirtual 174	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   42: ifeq +2669 -> 2711
    //   45: aload 41
    //   47: ldc 176
    //   49: ldc 178
    //   51: invokevirtual 182	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   54: astore 42
    //   56: invokestatic 79	com/umeng/common/b:b	()Z
    //   59: ifeq +500 -> 559
    //   62: new 87	java/io/File
    //   65: dup
    //   66: aload_0
    //   67: getfield 93	com/umeng/common/net/b:c	Ljava/lang/String;
    //   70: aload 42
    //   72: invokespecial 184	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   75: astore 43
    //   77: new 186	java/io/FileOutputStream
    //   80: dup
    //   81: aload 43
    //   83: iconst_1
    //   84: invokespecial 189	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   87: astore 7
    //   89: aload 43
    //   91: astore 44
    //   93: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   96: astore 46
    //   98: iconst_2
    //   99: anewarray 191	java/lang/Object
    //   102: astore 47
    //   104: aload 47
    //   106: iconst_0
    //   107: aload_0
    //   108: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   111: getfield 157	com/umeng/common/net/g:c	Ljava/lang/String;
    //   114: aastore
    //   115: aload 47
    //   117: iconst_1
    //   118: aload 44
    //   120: invokevirtual 119	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   123: aastore
    //   124: aload 46
    //   126: ldc 193
    //   128: aload 47
    //   130: invokestatic 197	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   133: invokestatic 199	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: new 201	java/net/URL
    //   139: dup
    //   140: aload_0
    //   141: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   144: getfield 157	com/umeng/common/net/g:c	Ljava/lang/String;
    //   147: invokespecial 202	java/net/URL:<init>	(Ljava/lang/String;)V
    //   150: invokevirtual 206	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   153: checkcast 208	java/net/HttpURLConnection
    //   156: astore 48
    //   158: aload 48
    //   160: ldc 210
    //   162: invokevirtual 213	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   165: aload 48
    //   167: ldc 215
    //   169: ldc 217
    //   171: invokevirtual 220	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   174: aload 48
    //   176: ldc 222
    //   178: ldc 224
    //   180: invokevirtual 227	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   183: aload 48
    //   185: sipush 5000
    //   188: invokevirtual 230	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   191: aload 48
    //   193: sipush 10000
    //   196: invokevirtual 233	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   199: aload 44
    //   201: invokevirtual 236	java/io/File:exists	()Z
    //   204: ifeq +45 -> 249
    //   207: aload 44
    //   209: invokevirtual 240	java/io/File:length	()J
    //   212: lconst_0
    //   213: lcmp
    //   214: ifle +35 -> 249
    //   217: aload 48
    //   219: ldc 242
    //   221: new 101	java/lang/StringBuilder
    //   224: dup
    //   225: ldc 244
    //   227: invokespecial 139	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   230: aload 44
    //   232: invokevirtual 240	java/io/File:length	()J
    //   235: invokevirtual 247	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   238: ldc 249
    //   240: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokevirtual 220	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   249: aload 48
    //   251: invokevirtual 252	java/net/HttpURLConnection:connect	()V
    //   254: aload 48
    //   256: invokevirtual 256	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   259: astore 49
    //   261: aload 49
    //   263: astore 8
    //   265: iload_1
    //   266: ifne +53 -> 319
    //   269: aload_0
    //   270: lconst_0
    //   271: putfield 36	com/umeng/common/net/b:e	J
    //   274: aload_0
    //   275: aload 48
    //   277: invokevirtual 260	java/net/HttpURLConnection:getContentLength	()I
    //   280: i2l
    //   281: putfield 38	com/umeng/common/net/b:f	J
    //   284: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   287: astore 107
    //   289: iconst_1
    //   290: anewarray 191	java/lang/Object
    //   293: astore 108
    //   295: aload 108
    //   297: iconst_0
    //   298: aload_0
    //   299: getfield 38	com/umeng/common/net/b:f	J
    //   302: invokestatic 265	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   305: aastore
    //   306: aload 107
    //   308: ldc_w 267
    //   311: aload 108
    //   313: invokestatic 197	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   316: invokestatic 199	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   319: sipush 4096
    //   322: newarray byte
    //   324: astore 51
    //   326: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   329: new 101	java/lang/StringBuilder
    //   332: dup
    //   333: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   336: aload_0
    //   337: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   340: getfield 269	com/umeng/common/net/g:b	Ljava/lang/String;
    //   343: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: ldc_w 271
    //   349: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: aload_0
    //   353: getfield 38	com/umeng/common/net/b:f	J
    //   356: invokestatic 274	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   359: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   365: invokestatic 199	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   368: aload_0
    //   369: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   372: invokestatic 279	com/umeng/common/net/h:a	(Landroid/content/Context;)Lcom/umeng/common/net/h;
    //   375: aload_0
    //   376: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   379: getfield 166	com/umeng/common/net/g:a	Ljava/lang/String;
    //   382: aload_0
    //   383: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   386: getfield 157	com/umeng/common/net/g:c	Ljava/lang/String;
    //   389: invokevirtual 282	com/umeng/common/net/h:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   392: pop
    //   393: iconst_0
    //   394: istore 53
    //   396: aload_0
    //   397: getfield 40	com/umeng/common/net/b:g	I
    //   400: ifge +2305 -> 2705
    //   403: aload 8
    //   405: aload 51
    //   407: invokevirtual 288	java/io/InputStream:read	([B)I
    //   410: istore 99
    //   412: iload 99
    //   414: ifle +2291 -> 2705
    //   417: aload 7
    //   419: aload 51
    //   421: iconst_0
    //   422: iload 99
    //   424: invokevirtual 292	java/io/FileOutputStream:write	([BII)V
    //   427: aload_0
    //   428: aload_0
    //   429: getfield 36	com/umeng/common/net/b:e	J
    //   432: iload 99
    //   434: i2l
    //   435: ladd
    //   436: putfield 36	com/umeng/common/net/b:e	J
    //   439: iload 53
    //   441: iconst_1
    //   442: iadd
    //   443: istore 100
    //   445: iload 53
    //   447: bipush 50
    //   449: irem
    //   450: ifne +2248 -> 2698
    //   453: aload_0
    //   454: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   457: invokestatic 295	com/umeng/common/b:h	(Landroid/content/Context;)Z
    //   460: ifne +153 -> 613
    //   463: iconst_0
    //   464: istore 54
    //   466: aload 8
    //   468: invokevirtual 298	java/io/InputStream:close	()V
    //   471: aload 7
    //   473: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   476: aload_0
    //   477: getfield 40	com/umeng/common/net/b:g	I
    //   480: iconst_1
    //   481: if_icmpne +526 -> 1007
    //   484: invokestatic 49	com/umeng/common/net/DownloadingService:c	()Ljava/util/Map;
    //   487: aload_0
    //   488: getfield 74	com/umeng/common/net/b:h	I
    //   491: invokestatic 55	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   494: invokeinterface 65 2 0
    //   499: checkcast 67	com/umeng/common/net/d
    //   502: astore 93
    //   504: aload 93
    //   506: getfield 70	com/umeng/common/net/d:f	[J
    //   509: iconst_0
    //   510: aload_0
    //   511: getfield 36	com/umeng/common/net/b:e	J
    //   514: lastore
    //   515: aload 93
    //   517: getfield 70	com/umeng/common/net/d:f	[J
    //   520: iconst_1
    //   521: aload_0
    //   522: getfield 38	com/umeng/common/net/b:f	J
    //   525: lastore
    //   526: aload 93
    //   528: getfield 70	com/umeng/common/net/d:f	[J
    //   531: iconst_2
    //   532: aload_0
    //   533: getfield 32	com/umeng/common/net/b:d	I
    //   536: i2l
    //   537: lastore
    //   538: aload 8
    //   540: ifnull +8 -> 548
    //   543: aload 8
    //   545: invokevirtual 298	java/io/InputStream:close	()V
    //   548: aload 7
    //   550: ifnull +8 -> 558
    //   553: aload 7
    //   555: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   558: return
    //   559: aload_0
    //   560: aload_0
    //   561: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   564: invokevirtual 116	android/content/Context:getFilesDir	()Ljava/io/File;
    //   567: invokevirtual 119	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   570: putfield 93	com/umeng/common/net/b:c	Ljava/lang/String;
    //   573: aload_0
    //   574: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   577: aload 42
    //   579: ldc_w 300
    //   582: invokevirtual 304	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   585: astore 109
    //   587: aload 109
    //   589: astore 4
    //   591: aload_0
    //   592: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   595: aload 42
    //   597: invokevirtual 308	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   600: astore 111
    //   602: aload 111
    //   604: astore 44
    //   606: aload 4
    //   608: astore 7
    //   610: goto -517 -> 93
    //   613: ldc_w 309
    //   616: aload_0
    //   617: getfield 36	com/umeng/common/net/b:e	J
    //   620: l2f
    //   621: fmul
    //   622: aload_0
    //   623: getfield 38	com/umeng/common/net/b:f	J
    //   626: l2f
    //   627: fdiv
    //   628: f2i
    //   629: istore 101
    //   631: iload 101
    //   633: bipush 100
    //   635: if_icmple +2056 -> 2691
    //   638: bipush 99
    //   640: istore 102
    //   642: aload_0
    //   643: getfield 72	com/umeng/common/net/b:i	Lcom/umeng/common/net/a;
    //   646: ifnull +18 -> 664
    //   649: aload_0
    //   650: getfield 72	com/umeng/common/net/b:i	Lcom/umeng/common/net/a;
    //   653: aload_0
    //   654: getfield 74	com/umeng/common/net/b:h	I
    //   657: iload 102
    //   659: invokeinterface 312 3 0
    //   664: invokestatic 314	com/umeng/common/net/DownloadingService:b	()Ljava/util/Map;
    //   667: aload_0
    //   668: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   671: invokeinterface 65 2 0
    //   676: ifnull +29 -> 705
    //   679: invokestatic 314	com/umeng/common/net/DownloadingService:b	()Ljava/util/Map;
    //   682: aload_0
    //   683: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   686: invokeinterface 65 2 0
    //   691: checkcast 316	android/os/Messenger
    //   694: aconst_null
    //   695: iconst_3
    //   696: iload 102
    //   698: iconst_0
    //   699: invokestatic 322	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   702: invokevirtual 326	android/os/Messenger:send	(Landroid/os/Message;)V
    //   705: aload_0
    //   706: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   709: invokestatic 279	com/umeng/common/net/h:a	(Landroid/content/Context;)Lcom/umeng/common/net/h;
    //   712: aload_0
    //   713: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   716: getfield 166	com/umeng/common/net/g:a	Ljava/lang/String;
    //   719: aload_0
    //   720: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   723: getfield 157	com/umeng/common/net/g:c	Ljava/lang/String;
    //   726: iload 102
    //   728: invokevirtual 329	com/umeng/common/net/h:a	(Ljava/lang/String;Ljava/lang/String;I)V
    //   731: iload 100
    //   733: istore 53
    //   735: goto -339 -> 396
    //   738: astore 103
    //   740: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   743: astore 104
    //   745: iconst_1
    //   746: anewarray 191	java/lang/Object
    //   749: astore 105
    //   751: aload 105
    //   753: iconst_0
    //   754: aload_0
    //   755: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   758: getfield 269	com/umeng/common/net/g:b	Ljava/lang/String;
    //   761: aastore
    //   762: aload 104
    //   764: ldc_w 331
    //   767: aload 105
    //   769: invokestatic 197	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   772: invokestatic 142	com/umeng/common/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   775: invokestatic 314	com/umeng/common/net/DownloadingService:b	()Ljava/util/Map;
    //   778: aload_0
    //   779: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   782: aconst_null
    //   783: invokeinterface 335 3 0
    //   788: pop
    //   789: goto -84 -> 705
    //   792: astore 50
    //   794: aload 50
    //   796: astore_3
    //   797: aload 7
    //   799: astore 4
    //   801: aload 8
    //   803: astore 5
    //   805: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   808: aload_3
    //   809: invokevirtual 336	java/io/IOException:getMessage	()Ljava/lang/String;
    //   812: aload_3
    //   813: invokestatic 129	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   816: iconst_1
    //   817: aload_0
    //   818: getfield 32	com/umeng/common/net/b:d	I
    //   821: iadd
    //   822: istore 14
    //   824: aload_0
    //   825: iload 14
    //   827: putfield 32	com/umeng/common/net/b:d	I
    //   830: iload 14
    //   832: iconst_3
    //   833: if_icmple +1343 -> 2176
    //   836: aload_0
    //   837: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   840: getfield 339	com/umeng/common/net/g:g	Z
    //   843: istore 15
    //   845: iload 15
    //   847: ifne +1329 -> 2176
    //   850: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   853: ldc_w 341
    //   856: invokestatic 142	com/umeng/common/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   859: invokestatic 314	com/umeng/common/net/DownloadingService:b	()Ljava/util/Map;
    //   862: aload_0
    //   863: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   866: invokeinterface 65 2 0
    //   871: checkcast 316	android/os/Messenger
    //   874: aconst_null
    //   875: iconst_5
    //   876: iconst_0
    //   877: iconst_0
    //   878: invokestatic 322	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   881: invokevirtual 326	android/os/Messenger:send	(Landroid/os/Message;)V
    //   884: aload_0
    //   885: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   888: aload_0
    //   889: getfield 74	com/umeng/common/net/b:h	I
    //   892: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   895: aload_0
    //   896: aload_3
    //   897: invokespecial 346	com/umeng/common/net/b:a	(Ljava/lang/Exception;)V
    //   900: aload_0
    //   901: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   904: invokestatic 349	com/umeng/common/net/DownloadingService:c	(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
    //   907: new 351	com/umeng/common/net/p
    //   910: dup
    //   911: aload_0
    //   912: invokespecial 354	com/umeng/common/net/p:<init>	(Lcom/umeng/common/net/b;)V
    //   915: invokevirtual 360	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   918: pop
    //   919: aload 5
    //   921: ifnull +8 -> 929
    //   924: aload 5
    //   926: invokevirtual 298	java/io/InputStream:close	()V
    //   929: aload 4
    //   931: ifnull -373 -> 558
    //   934: aload 4
    //   936: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   939: return
    //   940: astore 17
    //   942: aload 17
    //   944: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   947: return
    //   948: astore 94
    //   950: aload 94
    //   952: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   955: return
    //   956: astore 97
    //   958: aload 97
    //   960: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   963: aload 7
    //   965: ifnull -407 -> 558
    //   968: aload 7
    //   970: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   973: return
    //   974: astore 98
    //   976: aload 98
    //   978: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   981: return
    //   982: astore 95
    //   984: aload 7
    //   986: ifnull +8 -> 994
    //   989: aload 7
    //   991: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   994: aload 95
    //   996: athrow
    //   997: astore 96
    //   999: aload 96
    //   1001: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1004: goto -10 -> 994
    //   1007: aload_0
    //   1008: getfield 40	com/umeng/common/net/b:g	I
    //   1011: iconst_2
    //   1012: if_icmpne +122 -> 1134
    //   1015: aload_0
    //   1016: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1019: pop
    //   1020: aload_0
    //   1021: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1024: aload_0
    //   1025: getfield 36	com/umeng/common/net/b:e	J
    //   1028: aload_0
    //   1029: getfield 38	com/umeng/common/net/b:f	J
    //   1032: aload_0
    //   1033: getfield 32	com/umeng/common/net/b:d	I
    //   1036: i2l
    //   1037: invokestatic 145	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/g;JJJ)V
    //   1040: aload_0
    //   1041: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1044: invokestatic 366	com/umeng/common/net/DownloadingService:b	(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
    //   1047: aload_0
    //   1048: getfield 74	com/umeng/common/net/b:h	I
    //   1051: invokevirtual 371	android/app/NotificationManager:cancel	(I)V
    //   1054: aload 8
    //   1056: ifnull +8 -> 1064
    //   1059: aload 8
    //   1061: invokevirtual 298	java/io/InputStream:close	()V
    //   1064: aload 7
    //   1066: ifnull -508 -> 558
    //   1069: aload 7
    //   1071: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1074: return
    //   1075: astore 88
    //   1077: aload 88
    //   1079: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1082: return
    //   1083: astore 91
    //   1085: aload 91
    //   1087: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1090: aload 7
    //   1092: ifnull -534 -> 558
    //   1095: aload 7
    //   1097: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1100: return
    //   1101: astore 92
    //   1103: aload 92
    //   1105: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1108: return
    //   1109: astore 89
    //   1111: aload 7
    //   1113: ifnull +8 -> 1121
    //   1116: aload 7
    //   1118: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1121: aload 89
    //   1123: athrow
    //   1124: astore 90
    //   1126: aload 90
    //   1128: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1131: goto -10 -> 1121
    //   1134: iload 54
    //   1136: ifne +165 -> 1301
    //   1139: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   1142: new 101	java/lang/StringBuilder
    //   1145: dup
    //   1146: ldc_w 373
    //   1149: invokespecial 139	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1152: aload_0
    //   1153: getfield 32	com/umeng/common/net/b:d	I
    //   1156: invokevirtual 376	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1159: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1162: invokestatic 142	com/umeng/common/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1165: invokestatic 314	com/umeng/common/net/DownloadingService:b	()Ljava/util/Map;
    //   1168: aload_0
    //   1169: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1172: invokeinterface 65 2 0
    //   1177: checkcast 316	android/os/Messenger
    //   1180: aconst_null
    //   1181: iconst_5
    //   1182: iconst_0
    //   1183: iconst_0
    //   1184: invokestatic 322	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   1187: invokevirtual 326	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1190: aload_0
    //   1191: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1194: aload_0
    //   1195: getfield 74	com/umeng/common/net/b:h	I
    //   1198: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   1201: aload_0
    //   1202: getfield 72	com/umeng/common/net/b:i	Lcom/umeng/common/net/a;
    //   1205: ifnull +16 -> 1221
    //   1208: aload_0
    //   1209: getfield 72	com/umeng/common/net/b:i	Lcom/umeng/common/net/a;
    //   1212: aload_0
    //   1213: getfield 74	com/umeng/common/net/b:h	I
    //   1216: invokeinterface 134 2 0
    //   1221: aload 8
    //   1223: ifnull +8 -> 1231
    //   1226: aload 8
    //   1228: invokevirtual 298	java/io/InputStream:close	()V
    //   1231: aload 7
    //   1233: ifnull -675 -> 558
    //   1236: aload 7
    //   1238: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1241: return
    //   1242: astore 82
    //   1244: aload 82
    //   1246: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1249: return
    //   1250: astore 85
    //   1252: aload 85
    //   1254: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1257: aload 7
    //   1259: ifnull -701 -> 558
    //   1262: aload 7
    //   1264: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1267: return
    //   1268: astore 86
    //   1270: aload 86
    //   1272: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1275: return
    //   1276: astore 83
    //   1278: aload 7
    //   1280: ifnull +8 -> 1288
    //   1283: aload 7
    //   1285: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1288: aload 83
    //   1290: athrow
    //   1291: astore 84
    //   1293: aload 84
    //   1295: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1298: goto -10 -> 1288
    //   1301: aload_0
    //   1302: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1305: getfield 379	com/umeng/common/net/g:f	[Ljava/lang/String;
    //   1308: ifnull +82 -> 1390
    //   1311: new 381	java/util/HashMap
    //   1314: dup
    //   1315: invokespecial 382	java/util/HashMap:<init>	()V
    //   1318: astore 55
    //   1320: aload 55
    //   1322: ldc_w 384
    //   1325: aload_0
    //   1326: getfield 38	com/umeng/common/net/b:f	J
    //   1329: invokestatic 274	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   1332: invokeinterface 335 3 0
    //   1337: pop
    //   1338: aload 55
    //   1340: ldc_w 386
    //   1343: invokestatic 387	com/umeng/common/util/b:a	()Ljava/lang/String;
    //   1346: ldc_w 389
    //   1349: invokevirtual 393	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1352: iconst_1
    //   1353: aaload
    //   1354: invokeinterface 335 3 0
    //   1359: pop
    //   1360: aload 55
    //   1362: ldc_w 395
    //   1365: aload_0
    //   1366: getfield 32	com/umeng/common/net/b:d	I
    //   1369: invokestatic 398	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   1372: invokeinterface 335 3 0
    //   1377: pop
    //   1378: aload 55
    //   1380: aload_0
    //   1381: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1384: getfield 379	com/umeng/common/net/g:f	[Ljava/lang/String;
    //   1387: invokestatic 401	com/umeng/common/net/DownloadingService:a	(Ljava/util/Map;[Ljava/lang/String;)V
    //   1390: new 87	java/io/File
    //   1393: dup
    //   1394: aload 44
    //   1396: invokevirtual 404	java/io/File:getParent	()Ljava/lang/String;
    //   1399: aload 44
    //   1401: invokevirtual 407	java/io/File:getName	()Ljava/lang/String;
    //   1404: ldc_w 409
    //   1407: ldc_w 411
    //   1410: invokevirtual 182	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   1413: invokespecial 184	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   1416: astore 59
    //   1418: aload 44
    //   1420: aload 59
    //   1422: invokevirtual 415	java/io/File:renameTo	(Ljava/io/File;)Z
    //   1425: pop
    //   1426: aload 59
    //   1428: invokevirtual 119	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1431: astore 61
    //   1433: aload_0
    //   1434: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1437: getfield 417	com/umeng/common/net/g:d	Ljava/lang/String;
    //   1440: ifnull +516 -> 1956
    //   1443: aload_0
    //   1444: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1447: getfield 417	com/umeng/common/net/g:d	Ljava/lang/String;
    //   1450: aload 59
    //   1452: invokestatic 420	com/umeng/common/util/b:a	(Ljava/io/File;)Ljava/lang/String;
    //   1455: invokevirtual 174	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1458: ifne +498 -> 1956
    //   1461: aload_0
    //   1462: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1465: getfield 166	com/umeng/common/net/g:a	Ljava/lang/String;
    //   1468: ldc 168
    //   1470: invokevirtual 174	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1473: ifeq +258 -> 1731
    //   1476: aload_0
    //   1477: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1480: invokestatic 366	com/umeng/common/net/DownloadingService:b	(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
    //   1483: aload_0
    //   1484: getfield 74	com/umeng/common/net/b:h	I
    //   1487: invokevirtual 371	android/app/NotificationManager:cancel	(I)V
    //   1490: new 422	android/os/Bundle
    //   1493: dup
    //   1494: invokespecial 423	android/os/Bundle:<init>	()V
    //   1497: astore 74
    //   1499: aload 74
    //   1501: ldc_w 425
    //   1504: aload 61
    //   1506: invokevirtual 428	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1509: invokestatic 431	android/os/Message:obtain	()Landroid/os/Message;
    //   1512: astore 75
    //   1514: aload 75
    //   1516: iconst_5
    //   1517: putfield 434	android/os/Message:what	I
    //   1520: aload 75
    //   1522: iconst_3
    //   1523: putfield 437	android/os/Message:arg1	I
    //   1526: aload 75
    //   1528: aload_0
    //   1529: getfield 74	com/umeng/common/net/b:h	I
    //   1532: putfield 440	android/os/Message:arg2	I
    //   1535: aload 75
    //   1537: aload 74
    //   1539: invokevirtual 444	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   1542: invokestatic 314	com/umeng/common/net/DownloadingService:b	()Ljava/util/Map;
    //   1545: aload_0
    //   1546: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1549: invokeinterface 65 2 0
    //   1554: ifnull +23 -> 1577
    //   1557: invokestatic 314	com/umeng/common/net/DownloadingService:b	()Ljava/util/Map;
    //   1560: aload_0
    //   1561: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1564: invokeinterface 65 2 0
    //   1569: checkcast 316	android/os/Messenger
    //   1572: aload 75
    //   1574: invokevirtual 326	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1577: aload_0
    //   1578: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1581: aload_0
    //   1582: getfield 74	com/umeng/common/net/b:h	I
    //   1585: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   1588: aload 8
    //   1590: ifnull +8 -> 1598
    //   1593: aload 8
    //   1595: invokevirtual 298	java/io/InputStream:close	()V
    //   1598: aload 7
    //   1600: ifnull -1042 -> 558
    //   1603: aload 7
    //   1605: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1608: return
    //   1609: astore 77
    //   1611: aload 77
    //   1613: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1616: return
    //   1617: astore 76
    //   1619: aload_0
    //   1620: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1623: aload_0
    //   1624: getfield 74	com/umeng/common/net/b:h	I
    //   1627: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   1630: goto -42 -> 1588
    //   1633: astore 35
    //   1635: aload_0
    //   1636: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1639: aload_0
    //   1640: getfield 74	com/umeng/common/net/b:h	I
    //   1643: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   1646: aload 35
    //   1648: invokevirtual 445	android/os/RemoteException:printStackTrace	()V
    //   1651: aload 8
    //   1653: ifnull +8 -> 1661
    //   1656: aload 8
    //   1658: invokevirtual 298	java/io/InputStream:close	()V
    //   1661: aload 7
    //   1663: ifnull -1105 -> 558
    //   1666: aload 7
    //   1668: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1671: return
    //   1672: astore 36
    //   1674: aload 36
    //   1676: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1679: return
    //   1680: astore 80
    //   1682: aload 80
    //   1684: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1687: aload 7
    //   1689: ifnull -1131 -> 558
    //   1692: aload 7
    //   1694: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1697: return
    //   1698: astore 81
    //   1700: aload 81
    //   1702: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1705: return
    //   1706: astore 78
    //   1708: aload 7
    //   1710: ifnull +8 -> 1718
    //   1713: aload 7
    //   1715: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1718: aload 78
    //   1720: athrow
    //   1721: astore 79
    //   1723: aload 79
    //   1725: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1728: goto -10 -> 1718
    //   1731: invokestatic 314	com/umeng/common/net/DownloadingService:b	()Ljava/util/Map;
    //   1734: aload_0
    //   1735: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1738: invokeinterface 65 2 0
    //   1743: checkcast 316	android/os/Messenger
    //   1746: aconst_null
    //   1747: iconst_5
    //   1748: iconst_0
    //   1749: iconst_0
    //   1750: invokestatic 322	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   1753: invokevirtual 326	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1756: aload_0
    //   1757: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1760: aload_0
    //   1761: getfield 74	com/umeng/common/net/b:h	I
    //   1764: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   1767: new 447	android/app/Notification
    //   1770: dup
    //   1771: ldc_w 448
    //   1774: ldc_w 450
    //   1777: invokestatic 455	java/lang/System:currentTimeMillis	()J
    //   1780: invokespecial 458	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   1783: astore 67
    //   1785: aload_0
    //   1786: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   1789: iconst_0
    //   1790: new 460	android/content/Intent
    //   1793: dup
    //   1794: invokespecial 461	android/content/Intent:<init>	()V
    //   1797: iconst_0
    //   1798: invokestatic 467	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   1801: astore 68
    //   1803: aload 67
    //   1805: aload_0
    //   1806: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   1809: aload_0
    //   1810: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   1813: invokestatic 471	com/umeng/common/b:q	(Landroid/content/Context;)Ljava/lang/String;
    //   1816: new 101	java/lang/StringBuilder
    //   1819: dup
    //   1820: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   1823: aload_0
    //   1824: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   1827: getfield 269	com/umeng/common/net/g:b	Ljava/lang/String;
    //   1830: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1833: ldc_w 450
    //   1836: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1839: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1842: aload 68
    //   1844: invokevirtual 475	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   1847: aload 67
    //   1849: bipush 16
    //   1851: aload 67
    //   1853: getfield 478	android/app/Notification:flags	I
    //   1856: ior
    //   1857: putfield 478	android/app/Notification:flags	I
    //   1860: aload_0
    //   1861: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   1864: invokestatic 366	com/umeng/common/net/DownloadingService:b	(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
    //   1867: aload_0
    //   1868: getfield 74	com/umeng/common/net/b:h	I
    //   1871: aload 67
    //   1873: invokevirtual 482	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   1876: aload 8
    //   1878: ifnull +8 -> 1886
    //   1881: aload 8
    //   1883: invokevirtual 298	java/io/InputStream:close	()V
    //   1886: aload 7
    //   1888: ifnull -1330 -> 558
    //   1891: aload 7
    //   1893: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1896: return
    //   1897: astore 69
    //   1899: aload 69
    //   1901: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1904: return
    //   1905: astore 72
    //   1907: aload 72
    //   1909: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1912: aload 7
    //   1914: ifnull -1356 -> 558
    //   1917: aload 7
    //   1919: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1922: return
    //   1923: astore 73
    //   1925: aload 73
    //   1927: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1930: return
    //   1931: astore 70
    //   1933: aload 7
    //   1935: ifnull +8 -> 1943
    //   1938: aload 7
    //   1940: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1943: aload 70
    //   1945: athrow
    //   1946: astore 71
    //   1948: aload 71
    //   1950: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   1953: goto -10 -> 1943
    //   1956: aload_0
    //   1957: getfield 72	com/umeng/common/net/b:i	Lcom/umeng/common/net/a;
    //   1960: ifnull +18 -> 1978
    //   1963: aload_0
    //   1964: getfield 72	com/umeng/common/net/b:i	Lcom/umeng/common/net/a;
    //   1967: aload_0
    //   1968: getfield 74	com/umeng/common/net/b:h	I
    //   1971: aload 61
    //   1973: invokeinterface 485 3 0
    //   1978: aload 8
    //   1980: ifnull +8 -> 1988
    //   1983: aload 8
    //   1985: invokevirtual 298	java/io/InputStream:close	()V
    //   1988: aload 7
    //   1990: ifnull -1432 -> 558
    //   1993: aload 7
    //   1995: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1998: return
    //   1999: astore 62
    //   2001: aload 62
    //   2003: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2006: return
    //   2007: astore 65
    //   2009: aload 65
    //   2011: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2014: aload 7
    //   2016: ifnull -1458 -> 558
    //   2019: aload 7
    //   2021: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2024: return
    //   2025: astore 66
    //   2027: aload 66
    //   2029: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2032: return
    //   2033: astore 63
    //   2035: aload 7
    //   2037: ifnull +8 -> 2045
    //   2040: aload 7
    //   2042: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2045: aload 63
    //   2047: athrow
    //   2048: astore 64
    //   2050: aload 64
    //   2052: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2055: goto -10 -> 2045
    //   2058: astore 32
    //   2060: aload 32
    //   2062: invokevirtual 445	android/os/RemoteException:printStackTrace	()V
    //   2065: aload_0
    //   2066: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   2069: aload_0
    //   2070: getfield 74	com/umeng/common/net/b:h	I
    //   2073: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   2076: aload_0
    //   2077: aload_3
    //   2078: invokespecial 346	com/umeng/common/net/b:a	(Ljava/lang/Exception;)V
    //   2081: aload_0
    //   2082: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   2085: invokestatic 349	com/umeng/common/net/DownloadingService:c	(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
    //   2088: new 351	com/umeng/common/net/p
    //   2091: dup
    //   2092: aload_0
    //   2093: invokespecial 354	com/umeng/common/net/p:<init>	(Lcom/umeng/common/net/b;)V
    //   2096: invokevirtual 360	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   2099: pop
    //   2100: goto -1181 -> 919
    //   2103: astore 6
    //   2105: aload 4
    //   2107: astore 7
    //   2109: aload 5
    //   2111: astore 8
    //   2113: aload 8
    //   2115: ifnull +8 -> 2123
    //   2118: aload 8
    //   2120: invokevirtual 298	java/io/InputStream:close	()V
    //   2123: aload 7
    //   2125: ifnull +8 -> 2133
    //   2128: aload 7
    //   2130: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2133: aload 6
    //   2135: athrow
    //   2136: astore 30
    //   2138: aload_0
    //   2139: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   2142: aload_0
    //   2143: getfield 74	com/umeng/common/net/b:h	I
    //   2146: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   2149: aload_0
    //   2150: aload_3
    //   2151: invokespecial 346	com/umeng/common/net/b:a	(Ljava/lang/Exception;)V
    //   2154: aload_0
    //   2155: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   2158: invokestatic 349	com/umeng/common/net/DownloadingService:c	(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
    //   2161: new 351	com/umeng/common/net/p
    //   2164: dup
    //   2165: aload_0
    //   2166: invokespecial 354	com/umeng/common/net/p:<init>	(Lcom/umeng/common/net/b;)V
    //   2169: invokevirtual 360	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   2172: pop
    //   2173: aload 30
    //   2175: athrow
    //   2176: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   2179: new 101	java/lang/StringBuilder
    //   2182: dup
    //   2183: ldc_w 487
    //   2186: invokespecial 139	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2189: aload_0
    //   2190: getfield 32	com/umeng/common/net/b:d	I
    //   2193: invokevirtual 376	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   2196: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2199: invokestatic 199	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   2202: aload_0
    //   2203: getfield 44	com/umeng/common/net/b:j	Lcom/umeng/common/net/g;
    //   2206: getfield 339	com/umeng/common/net/g:g	Z
    //   2209: ifne +56 -> 2265
    //   2212: ldc2_w 488
    //   2215: invokestatic 493	java/lang/Thread:sleep	(J)V
    //   2218: aload_0
    //   2219: getfield 38	com/umeng/common/net/b:f	J
    //   2222: lconst_1
    //   2223: lcmp
    //   2224: ifge +33 -> 2257
    //   2227: aload_0
    //   2228: iconst_0
    //   2229: invokespecial 495	com/umeng/common/net/b:a	(Z)V
    //   2232: goto -1313 -> 919
    //   2235: astore 16
    //   2237: aload_0
    //   2238: aload 16
    //   2240: invokespecial 346	com/umeng/common/net/b:a	(Ljava/lang/Exception;)V
    //   2243: aload_0
    //   2244: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   2247: aload_0
    //   2248: getfield 74	com/umeng/common/net/b:h	I
    //   2251: invokestatic 344	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;I)V
    //   2254: goto -1335 -> 919
    //   2257: aload_0
    //   2258: iconst_1
    //   2259: invokespecial 495	com/umeng/common/net/b:a	(Z)V
    //   2262: goto -1343 -> 919
    //   2265: invokestatic 49	com/umeng/common/net/DownloadingService:c	()Ljava/util/Map;
    //   2268: aload_0
    //   2269: getfield 74	com/umeng/common/net/b:h	I
    //   2272: invokestatic 55	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2275: invokeinterface 65 2 0
    //   2280: checkcast 67	com/umeng/common/net/d
    //   2283: astore 22
    //   2285: aload 22
    //   2287: getfield 70	com/umeng/common/net/d:f	[J
    //   2290: iconst_0
    //   2291: aload_0
    //   2292: getfield 36	com/umeng/common/net/b:e	J
    //   2295: lastore
    //   2296: aload 22
    //   2298: getfield 70	com/umeng/common/net/d:f	[J
    //   2301: iconst_1
    //   2302: aload_0
    //   2303: getfield 38	com/umeng/common/net/b:f	J
    //   2306: lastore
    //   2307: aload 22
    //   2309: getfield 70	com/umeng/common/net/d:f	[J
    //   2312: iconst_2
    //   2313: aload_0
    //   2314: getfield 32	com/umeng/common/net/b:d	I
    //   2317: i2l
    //   2318: lastore
    //   2319: aload_0
    //   2320: getfield 74	com/umeng/common/net/b:h	I
    //   2323: ldc_w 497
    //   2326: invokestatic 502	com/umeng/common/net/q:a	(ILjava/lang/String;)Ljava/lang/String;
    //   2329: astore 23
    //   2331: new 460	android/content/Intent
    //   2334: dup
    //   2335: aload_0
    //   2336: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   2339: ldc 46
    //   2341: invokespecial 505	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   2344: astore 24
    //   2346: aload 24
    //   2348: ldc_w 507
    //   2351: aload 23
    //   2353: invokevirtual 511	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   2356: pop
    //   2357: aload_0
    //   2358: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   2361: aload_0
    //   2362: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   2365: aload 24
    //   2367: invokestatic 514	com/umeng/common/net/DownloadingService:a	(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z
    //   2370: pop
    //   2371: aload_0
    //   2372: getfield 27	com/umeng/common/net/b:a	Lcom/umeng/common/net/DownloadingService;
    //   2375: astore 27
    //   2377: aload_0
    //   2378: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   2381: astore 28
    //   2383: aload_0
    //   2384: getfield 42	com/umeng/common/net/b:b	Landroid/content/Context;
    //   2387: invokestatic 519	com/umeng/common/c:a	(Landroid/content/Context;)Lcom/umeng/common/c;
    //   2390: pop
    //   2391: aload 27
    //   2393: aload 28
    //   2395: ldc_w 521
    //   2398: invokestatic 524	com/umeng/common/c:d	(Ljava/lang/String;)I
    //   2401: invokevirtual 527	android/content/Context:getString	(I)Ljava/lang/String;
    //   2404: invokevirtual 529	com/umeng/common/net/DownloadingService:a	(Ljava/lang/String;)V
    //   2407: invokestatic 121	com/umeng/common/net/DownloadingService:a	()Ljava/lang/String;
    //   2410: ldc_w 531
    //   2413: invokestatic 199	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   2416: goto -1497 -> 919
    //   2419: astore 20
    //   2421: aload 20
    //   2423: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2426: aload 4
    //   2428: ifnull -1870 -> 558
    //   2431: aload 4
    //   2433: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2436: return
    //   2437: astore 21
    //   2439: aload 21
    //   2441: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2444: return
    //   2445: astore 18
    //   2447: aload 4
    //   2449: ifnull +8 -> 2457
    //   2452: aload 4
    //   2454: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2457: aload 18
    //   2459: athrow
    //   2460: astore 19
    //   2462: aload 19
    //   2464: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2467: goto -10 -> 2457
    //   2470: astore 39
    //   2472: aload 39
    //   2474: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2477: aload 7
    //   2479: ifnull -1921 -> 558
    //   2482: aload 7
    //   2484: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2487: return
    //   2488: astore 40
    //   2490: aload 40
    //   2492: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2495: return
    //   2496: astore 37
    //   2498: aload 7
    //   2500: ifnull +8 -> 2508
    //   2503: aload 7
    //   2505: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2508: aload 37
    //   2510: athrow
    //   2511: astore 38
    //   2513: aload 38
    //   2515: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2518: goto -10 -> 2508
    //   2521: astore 9
    //   2523: aload 9
    //   2525: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2528: goto -395 -> 2133
    //   2531: astore 12
    //   2533: aload 12
    //   2535: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2538: aload 7
    //   2540: ifnull -407 -> 2133
    //   2543: aload 7
    //   2545: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2548: goto -415 -> 2133
    //   2551: astore 13
    //   2553: aload 13
    //   2555: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2558: goto -425 -> 2133
    //   2561: astore 10
    //   2563: aload 7
    //   2565: ifnull +8 -> 2573
    //   2568: aload 7
    //   2570: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   2573: aload 10
    //   2575: athrow
    //   2576: astore 11
    //   2578: aload 11
    //   2580: invokevirtual 363	java/io/IOException:printStackTrace	()V
    //   2583: goto -10 -> 2573
    //   2586: astore 6
    //   2588: aconst_null
    //   2589: astore 7
    //   2591: aconst_null
    //   2592: astore 8
    //   2594: goto -481 -> 2113
    //   2597: astore 6
    //   2599: aload 4
    //   2601: astore 7
    //   2603: aconst_null
    //   2604: astore 8
    //   2606: goto -493 -> 2113
    //   2609: astore 6
    //   2611: aconst_null
    //   2612: astore 8
    //   2614: goto -501 -> 2113
    //   2617: astore 6
    //   2619: goto -506 -> 2113
    //   2622: astore 35
    //   2624: aconst_null
    //   2625: astore 7
    //   2627: aconst_null
    //   2628: astore 8
    //   2630: goto -995 -> 1635
    //   2633: astore 35
    //   2635: aload 4
    //   2637: astore 7
    //   2639: aconst_null
    //   2640: astore 8
    //   2642: goto -1007 -> 1635
    //   2645: astore 35
    //   2647: aconst_null
    //   2648: astore 8
    //   2650: goto -1015 -> 1635
    //   2653: astore_2
    //   2654: aload_2
    //   2655: astore_3
    //   2656: aconst_null
    //   2657: astore 4
    //   2659: aconst_null
    //   2660: astore 5
    //   2662: goto -1857 -> 805
    //   2665: astore 110
    //   2667: aload 110
    //   2669: astore_3
    //   2670: aconst_null
    //   2671: astore 5
    //   2673: goto -1868 -> 805
    //   2676: astore 45
    //   2678: aload 7
    //   2680: astore 4
    //   2682: aload 45
    //   2684: astore_3
    //   2685: aconst_null
    //   2686: astore 5
    //   2688: goto -1883 -> 805
    //   2691: iload 101
    //   2693: istore 102
    //   2695: goto -2053 -> 642
    //   2698: iload 100
    //   2700: istore 53
    //   2702: goto -2306 -> 396
    //   2705: iconst_1
    //   2706: istore 54
    //   2708: goto -2242 -> 466
    //   2711: aload 41
    //   2713: astore 42
    //   2715: goto -2659 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   664	705	738	android/os/DeadObjectException
    //   269	319	792	java/io/IOException
    //   319	393	792	java/io/IOException
    //   396	412	792	java/io/IOException
    //   417	439	792	java/io/IOException
    //   453	463	792	java/io/IOException
    //   466	538	792	java/io/IOException
    //   613	631	792	java/io/IOException
    //   642	664	792	java/io/IOException
    //   664	705	792	java/io/IOException
    //   705	731	792	java/io/IOException
    //   740	789	792	java/io/IOException
    //   1007	1054	792	java/io/IOException
    //   1139	1221	792	java/io/IOException
    //   1301	1390	792	java/io/IOException
    //   1390	1542	792	java/io/IOException
    //   1542	1577	792	java/io/IOException
    //   1577	1588	792	java/io/IOException
    //   1619	1630	792	java/io/IOException
    //   1731	1876	792	java/io/IOException
    //   1956	1978	792	java/io/IOException
    //   934	939	940	java/io/IOException
    //   553	558	948	java/io/IOException
    //   543	548	956	java/io/IOException
    //   968	973	974	java/io/IOException
    //   543	548	982	finally
    //   958	963	982	finally
    //   989	994	997	java/io/IOException
    //   1069	1074	1075	java/io/IOException
    //   1059	1064	1083	java/io/IOException
    //   1095	1100	1101	java/io/IOException
    //   1059	1064	1109	finally
    //   1085	1090	1109	finally
    //   1116	1121	1124	java/io/IOException
    //   1236	1241	1242	java/io/IOException
    //   1226	1231	1250	java/io/IOException
    //   1262	1267	1268	java/io/IOException
    //   1226	1231	1276	finally
    //   1252	1257	1276	finally
    //   1283	1288	1291	java/io/IOException
    //   1603	1608	1609	java/io/IOException
    //   1542	1577	1617	android/os/RemoteException
    //   1577	1588	1617	android/os/RemoteException
    //   269	319	1633	android/os/RemoteException
    //   319	393	1633	android/os/RemoteException
    //   396	412	1633	android/os/RemoteException
    //   417	439	1633	android/os/RemoteException
    //   453	463	1633	android/os/RemoteException
    //   466	538	1633	android/os/RemoteException
    //   613	631	1633	android/os/RemoteException
    //   642	664	1633	android/os/RemoteException
    //   664	705	1633	android/os/RemoteException
    //   705	731	1633	android/os/RemoteException
    //   740	789	1633	android/os/RemoteException
    //   1007	1054	1633	android/os/RemoteException
    //   1139	1221	1633	android/os/RemoteException
    //   1301	1390	1633	android/os/RemoteException
    //   1390	1542	1633	android/os/RemoteException
    //   1619	1630	1633	android/os/RemoteException
    //   1731	1876	1633	android/os/RemoteException
    //   1956	1978	1633	android/os/RemoteException
    //   1666	1671	1672	java/io/IOException
    //   1593	1598	1680	java/io/IOException
    //   1692	1697	1698	java/io/IOException
    //   1593	1598	1706	finally
    //   1682	1687	1706	finally
    //   1713	1718	1721	java/io/IOException
    //   1891	1896	1897	java/io/IOException
    //   1881	1886	1905	java/io/IOException
    //   1917	1922	1923	java/io/IOException
    //   1881	1886	1931	finally
    //   1907	1912	1931	finally
    //   1938	1943	1946	java/io/IOException
    //   1993	1998	1999	java/io/IOException
    //   1983	1988	2007	java/io/IOException
    //   2019	2024	2025	java/io/IOException
    //   1983	1988	2033	finally
    //   2009	2014	2033	finally
    //   2040	2045	2048	java/io/IOException
    //   850	884	2058	android/os/RemoteException
    //   805	830	2103	finally
    //   836	845	2103	finally
    //   884	919	2103	finally
    //   2065	2100	2103	finally
    //   2138	2176	2103	finally
    //   2176	2202	2103	finally
    //   2202	2232	2103	finally
    //   2237	2254	2103	finally
    //   2257	2262	2103	finally
    //   2265	2416	2103	finally
    //   850	884	2136	finally
    //   2060	2065	2136	finally
    //   2202	2232	2235	java/lang/InterruptedException
    //   2257	2262	2235	java/lang/InterruptedException
    //   2265	2416	2235	java/lang/InterruptedException
    //   924	929	2419	java/io/IOException
    //   2431	2436	2437	java/io/IOException
    //   924	929	2445	finally
    //   2421	2426	2445	finally
    //   2452	2457	2460	java/io/IOException
    //   1656	1661	2470	java/io/IOException
    //   2482	2487	2488	java/io/IOException
    //   1656	1661	2496	finally
    //   2472	2477	2496	finally
    //   2503	2508	2511	java/io/IOException
    //   2128	2133	2521	java/io/IOException
    //   2118	2123	2531	java/io/IOException
    //   2543	2548	2551	java/io/IOException
    //   2118	2123	2561	finally
    //   2533	2538	2561	finally
    //   2568	2573	2576	java/io/IOException
    //   0	56	2586	finally
    //   56	89	2586	finally
    //   559	587	2586	finally
    //   591	602	2597	finally
    //   93	249	2609	finally
    //   249	261	2609	finally
    //   269	319	2617	finally
    //   319	393	2617	finally
    //   396	412	2617	finally
    //   417	439	2617	finally
    //   453	463	2617	finally
    //   466	538	2617	finally
    //   613	631	2617	finally
    //   642	664	2617	finally
    //   664	705	2617	finally
    //   705	731	2617	finally
    //   740	789	2617	finally
    //   1007	1054	2617	finally
    //   1139	1221	2617	finally
    //   1301	1390	2617	finally
    //   1390	1542	2617	finally
    //   1542	1577	2617	finally
    //   1577	1588	2617	finally
    //   1619	1630	2617	finally
    //   1635	1651	2617	finally
    //   1731	1876	2617	finally
    //   1956	1978	2617	finally
    //   0	56	2622	android/os/RemoteException
    //   56	89	2622	android/os/RemoteException
    //   559	587	2622	android/os/RemoteException
    //   591	602	2633	android/os/RemoteException
    //   93	249	2645	android/os/RemoteException
    //   249	261	2645	android/os/RemoteException
    //   0	56	2653	java/io/IOException
    //   56	89	2653	java/io/IOException
    //   559	587	2653	java/io/IOException
    //   591	602	2665	java/io/IOException
    //   93	249	2676	java/io/IOException
    //   249	261	2676	java/io/IOException
  }

  public final void a(int paramInt)
  {
    this.g = paramInt;
  }

  public final void run()
  {
    this.d = 0;
    try
    {
      if (this.i != null)
        this.i.a(this.h);
      boolean bool1 = this.e < 0L;
      boolean bool2 = false;
      if (bool1)
        bool2 = true;
      a(bool2);
      if (DownloadingService.b().size() <= 0)
        this.a.stopSelf();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.b
 * JD-Core Version:    0.6.2
 */