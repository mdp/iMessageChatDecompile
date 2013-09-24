package d;

import android.util.Log;
import com.b.r;
import com.c.b;
import java.io.IOException;
import java.security.KeyStore;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Vector;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

public final class m
{
  private b a;
  private String b;
  private q c;
  private v d;
  private u e;
  private String f;
  private String g;
  private String h;
  private Vector i;
  private int j;
  private String k;
  private int l;
  private r m;
  private String n;

  private boolean a()
  {
    this.e = new u();
    this.e.a(this.d.d(), this.f, this.d.e());
    this.e.a(this.d.f(), this.d.a(), this.d.b(), this.c.i(), this.d.i(), this.l);
    b localb = this.e.b();
    Map localMap = this.e.a();
    HttpClient localHttpClient = c();
    HttpPost localHttpPost = new HttpPost(this.b + "/putComplete");
    Iterator localIterator = localMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        byte[] arrayOfByte = new byte[localb.b()];
        System.arraycopy(localb.a(), 0, arrayOfByte, 0, localb.b());
        ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(arrayOfByte);
        localByteArrayEntity.setChunked(true);
        localHttpPost.setEntity(localByteArrayEntity);
        this.e.g();
      }
      try
      {
        HttpResponse localHttpResponse2 = localHttpClient.execute(localHttpPost);
        localHttpResponse1 = localHttpResponse2;
        if (localHttpResponse1 == null)
        {
          return false;
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localHttpPost.addHeader((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        while (true)
        {
          localClientProtocolException.printStackTrace();
          localHttpResponse1 = null;
        }
      }
      catch (IOException localIOException1)
      {
        HttpResponse localHttpResponse1;
        while (true)
        {
          localIOException1.printStackTrace();
          localHttpResponse1 = null;
        }
        int i1 = localHttpResponse1.getStatusLine().getStatusCode();
        if ((i1 == 200) || (i1 == 206))
        {
          HttpEntity localHttpEntity = localHttpResponse1.getEntity();
          Header[] arrayOfHeader = localHttpResponse1.getAllHeaders();
          HashMap localHashMap = new HashMap();
          int i2;
          if (arrayOfHeader != null)
            i2 = 0;
          while (true)
          {
            long l1;
            if (i2 >= arrayOfHeader.length)
              if (localHttpEntity != null)
                l1 = localHttpEntity.getContentLength();
            try
            {
              new b(EntityUtils.toByteArray(localHttpEntity), (int)l1);
              this.e.c();
              if (this.m != null)
                this.m.a(3, 2, 1.0F);
              this.e.h();
              Log.d("PutComplete", "Succ");
              return true;
              localHashMap.put(arrayOfHeader[i2].getName(), arrayOfHeader[i2].getValue());
              i2++;
            }
            catch (ParseException localParseException)
            {
              while (true)
                localParseException.printStackTrace();
            }
            catch (IOException localIOException2)
            {
              while (true)
                localIOException2.printStackTrace();
            }
          }
        }
        this.e.h();
        if (this.m != null)
          this.m.a(3, 2, 1.0F);
        Log.d("PutComplete", "Err");
      }
    }
    return false;
  }

  // ERROR //
  private boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 46	d/v
    //   4: dup
    //   5: invokespecial 254	d/v:<init>	()V
    //   8: putfield 44	d/m:d	Ld/v;
    //   11: aload_0
    //   12: getfield 44	d/m:d	Ld/v;
    //   15: aload_0
    //   16: getfield 256	d/m:i	Ljava/util/Vector;
    //   19: aload_0
    //   20: getfield 258	d/m:a	Lcom/c/b;
    //   23: invokevirtual 261	d/v:a	(Ljava/util/Vector;Lcom/c/b;)V
    //   26: aload_0
    //   27: getfield 44	d/m:d	Ld/v;
    //   30: invokevirtual 263	d/v:j	()Lcom/c/b;
    //   33: astore_1
    //   34: aload_0
    //   35: aload_1
    //   36: invokevirtual 131	com/c/b:b	()I
    //   39: aload_0
    //   40: getfield 265	d/m:j	I
    //   43: iadd
    //   44: putfield 72	d/m:l	I
    //   47: aload_0
    //   48: getfield 44	d/m:d	Ld/v;
    //   51: aload_0
    //   52: getfield 64	d/m:c	Ld/q;
    //   55: invokevirtual 267	d/q:c	()Lcom/c/b;
    //   58: invokevirtual 270	d/v:a	(Lcom/c/b;)Ljava/util/Map;
    //   61: astore_2
    //   62: invokestatic 84	d/m:c	()Lorg/apache/http/client/HttpClient;
    //   65: astore_3
    //   66: aload_0
    //   67: getfield 44	d/m:d	Ld/v;
    //   70: invokevirtual 272	d/v:c	()Ljava/lang/String;
    //   73: ldc_w 274
    //   76: invokevirtual 278	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   79: ifeq +497 -> 576
    //   82: new 280	org/apache/http/client/methods/HttpPut
    //   85: dup
    //   86: aload_0
    //   87: getfield 44	d/m:d	Ld/v;
    //   90: invokevirtual 58	d/v:f	()Ljava/lang/String;
    //   93: invokespecial 281	org/apache/http/client/methods/HttpPut:<init>	(Ljava/lang/String;)V
    //   96: astore 4
    //   98: aload_2
    //   99: invokeinterface 115 1 0
    //   104: invokeinterface 121 1 0
    //   109: astore 5
    //   111: aload 5
    //   113: invokeinterface 126 1 0
    //   118: ifne +83 -> 201
    //   121: aload_0
    //   122: getfield 44	d/m:d	Ld/v;
    //   125: invokevirtual 282	d/v:g	()V
    //   128: new 284	java/io/File
    //   131: dup
    //   132: aload_0
    //   133: getfield 286	d/m:k	Ljava/lang/String;
    //   136: invokespecial 287	java/io/File:<init>	(Ljava/lang/String;)V
    //   139: astore 7
    //   141: new 289	java/io/FileInputStream
    //   144: dup
    //   145: aload 7
    //   147: invokespecial 292	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   150: astore 8
    //   152: new 294	d/a
    //   155: dup
    //   156: aload 8
    //   158: aload 7
    //   160: invokevirtual 297	java/io/File:length	()J
    //   163: aload_1
    //   164: aload_0
    //   165: getfield 221	d/m:m	Lcom/b/r;
    //   168: invokespecial 300	d/a:<init>	(Ljava/io/FileInputStream;JLcom/c/b;Lcom/b/r;)V
    //   171: astore 9
    //   173: aload 4
    //   175: aload 9
    //   177: invokevirtual 301	org/apache/http/client/methods/HttpPut:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   180: aload_3
    //   181: aload 4
    //   183: invokeinterface 161 2 0
    //   188: astore 28
    //   190: aload 28
    //   192: astore 11
    //   194: aload 11
    //   196: ifnonnull +84 -> 280
    //   199: iconst_0
    //   200: ireturn
    //   201: aload 5
    //   203: invokeinterface 165 1 0
    //   208: checkcast 167	java/util/Map$Entry
    //   211: astore 6
    //   213: aload 4
    //   215: aload 6
    //   217: invokeinterface 170 1 0
    //   222: checkcast 92	java/lang/String
    //   225: aload 6
    //   227: invokeinterface 173 1 0
    //   232: checkcast 92	java/lang/String
    //   235: invokevirtual 302	org/apache/http/client/methods/HttpPut:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   238: goto -127 -> 111
    //   241: astore 29
    //   243: aload 29
    //   245: invokevirtual 303	java/io/FileNotFoundException:printStackTrace	()V
    //   248: aconst_null
    //   249: astore 8
    //   251: goto -99 -> 152
    //   254: astore 27
    //   256: aload 27
    //   258: invokevirtual 180	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   261: aconst_null
    //   262: astore 11
    //   264: goto -70 -> 194
    //   267: astore 10
    //   269: aload 10
    //   271: invokevirtual 181	java/io/IOException:printStackTrace	()V
    //   274: aconst_null
    //   275: astore 11
    //   277: goto -83 -> 194
    //   280: aload 11
    //   282: invokeinterface 187 1 0
    //   287: invokeinterface 192 1 0
    //   292: istore 12
    //   294: ldc_w 305
    //   297: new 88	java/lang/StringBuilder
    //   300: dup
    //   301: ldc_w 307
    //   304: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   307: iload 12
    //   309: invokevirtual 310	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   312: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   315: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   318: pop
    //   319: aload_0
    //   320: aload 9
    //   322: invokevirtual 311	d/a:a	()Ljava/lang/String;
    //   325: putfield 313	d/m:n	Ljava/lang/String;
    //   328: iload 12
    //   330: sipush 201
    //   333: if_icmpeq +11 -> 344
    //   336: iload 12
    //   338: sipush 200
    //   341: if_icmpne -142 -> 199
    //   344: aload 11
    //   346: invokeinterface 196 1 0
    //   351: astore 14
    //   353: aload 11
    //   355: invokeinterface 200 1 0
    //   360: astore 15
    //   362: new 202	java/util/HashMap
    //   365: dup
    //   366: invokespecial 203	java/util/HashMap:<init>	()V
    //   369: astore 16
    //   371: aload 15
    //   373: ifnull +28 -> 401
    //   376: iconst_0
    //   377: istore 23
    //   379: iload 23
    //   381: aload 15
    //   383: arraylength
    //   384: if_icmplt +89 -> 473
    //   387: aload_0
    //   388: getfield 44	d/m:d	Ld/v;
    //   391: aload 16
    //   393: aload_0
    //   394: getfield 313	d/m:n	Ljava/lang/String;
    //   397: invokevirtual 316	d/v:a	(Ljava/util/Map;Ljava/lang/String;)Z
    //   400: pop
    //   401: aload_0
    //   402: getfield 44	d/m:d	Ld/v;
    //   405: invokevirtual 317	d/v:h	()V
    //   408: aload 14
    //   410: ifnull +35 -> 445
    //   413: aload 14
    //   415: invokeinterface 208 1 0
    //   420: lstore 18
    //   422: new 128	com/c/b
    //   425: dup
    //   426: aload 14
    //   428: invokestatic 214	org/apache/http/util/EntityUtils:toByteArray	(Lorg/apache/http/HttpEntity;)[B
    //   431: lload 18
    //   433: l2i
    //   434: invokespecial 217	com/c/b:<init>	([BI)V
    //   437: pop
    //   438: aload_0
    //   439: getfield 44	d/m:d	Ld/v;
    //   442: invokevirtual 319	d/v:k	()V
    //   445: ldc_w 321
    //   448: new 88	java/lang/StringBuilder
    //   451: dup
    //   452: ldc_w 323
    //   455: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   458: ldc_w 325
    //   461: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   467: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   470: pop
    //   471: iconst_1
    //   472: ireturn
    //   473: aload 16
    //   475: aload 15
    //   477: iload 23
    //   479: aaload
    //   480: invokeinterface 242 1 0
    //   485: aload 15
    //   487: iload 23
    //   489: aaload
    //   490: invokeinterface 244 1 0
    //   495: invokeinterface 248 3 0
    //   500: pop
    //   501: ldc_w 327
    //   504: new 88	java/lang/StringBuilder
    //   507: dup
    //   508: aload 15
    //   510: iload 23
    //   512: aaload
    //   513: invokeinterface 242 1 0
    //   518: invokestatic 96	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   521: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   524: ldc_w 329
    //   527: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   530: aload 15
    //   532: iload 23
    //   534: aaload
    //   535: invokeinterface 244 1 0
    //   540: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   543: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   546: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   549: pop
    //   550: iinc 23 1
    //   553: goto -174 -> 379
    //   556: astore 22
    //   558: aload 22
    //   560: invokevirtual 249	org/apache/http/ParseException:printStackTrace	()V
    //   563: goto -118 -> 445
    //   566: astore 21
    //   568: aload 21
    //   570: invokevirtual 181	java/io/IOException:printStackTrace	()V
    //   573: goto -128 -> 445
    //   576: new 86	org/apache/http/client/methods/HttpPost
    //   579: dup
    //   580: aload_0
    //   581: getfield 44	d/m:d	Ld/v;
    //   584: invokevirtual 58	d/v:f	()Ljava/lang/String;
    //   587: invokespecial 109	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   590: astore 30
    //   592: aload_2
    //   593: invokeinterface 115 1 0
    //   598: invokeinterface 121 1 0
    //   603: astore 31
    //   605: aload 31
    //   607: invokeinterface 126 1 0
    //   612: ifne +274 -> 886
    //   615: aload_0
    //   616: getfield 44	d/m:d	Ld/v;
    //   619: invokevirtual 282	d/v:g	()V
    //   622: new 284	java/io/File
    //   625: dup
    //   626: aload_0
    //   627: getfield 286	d/m:k	Ljava/lang/String;
    //   630: invokespecial 287	java/io/File:<init>	(Ljava/lang/String;)V
    //   633: astore 33
    //   635: new 289	java/io/FileInputStream
    //   638: dup
    //   639: aload 33
    //   641: invokespecial 292	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   644: astore 34
    //   646: new 294	d/a
    //   649: dup
    //   650: aload 34
    //   652: aload 33
    //   654: invokevirtual 297	java/io/File:length	()J
    //   657: aload_1
    //   658: aload_0
    //   659: getfield 221	d/m:m	Lcom/b/r;
    //   662: invokespecial 300	d/a:<init>	(Ljava/io/FileInputStream;JLcom/c/b;Lcom/b/r;)V
    //   665: astore 35
    //   667: aload 30
    //   669: aload 35
    //   671: invokevirtual 153	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   674: aload_3
    //   675: aload 30
    //   677: invokeinterface 161 2 0
    //   682: astore 54
    //   684: aload 54
    //   686: astore 37
    //   688: aload 37
    //   690: ifnull -491 -> 199
    //   693: aload 37
    //   695: invokeinterface 187 1 0
    //   700: invokeinterface 192 1 0
    //   705: istore 38
    //   707: ldc_w 305
    //   710: new 88	java/lang/StringBuilder
    //   713: dup
    //   714: ldc_w 307
    //   717: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   720: iload 38
    //   722: invokevirtual 310	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   725: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   728: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   731: pop
    //   732: aload_0
    //   733: aload 35
    //   735: invokevirtual 311	d/a:a	()Ljava/lang/String;
    //   738: putfield 313	d/m:n	Ljava/lang/String;
    //   741: iload 38
    //   743: sipush 201
    //   746: if_icmpeq +11 -> 757
    //   749: iload 38
    //   751: sipush 200
    //   754: if_icmpne -555 -> 199
    //   757: aload 37
    //   759: invokeinterface 196 1 0
    //   764: astore 40
    //   766: aload 37
    //   768: invokeinterface 200 1 0
    //   773: astore 41
    //   775: new 202	java/util/HashMap
    //   778: dup
    //   779: invokespecial 203	java/util/HashMap:<init>	()V
    //   782: astore 42
    //   784: iconst_0
    //   785: istore 43
    //   787: aload 41
    //   789: ifnull +25 -> 814
    //   792: iload 43
    //   794: aload 41
    //   796: arraylength
    //   797: if_icmplt +168 -> 965
    //   800: aload_0
    //   801: getfield 44	d/m:d	Ld/v;
    //   804: aload 42
    //   806: aload_0
    //   807: getfield 313	d/m:n	Ljava/lang/String;
    //   810: invokevirtual 316	d/v:a	(Ljava/util/Map;Ljava/lang/String;)Z
    //   813: pop
    //   814: aload_0
    //   815: getfield 44	d/m:d	Ld/v;
    //   818: invokevirtual 317	d/v:h	()V
    //   821: aload 40
    //   823: ifnull +35 -> 858
    //   826: aload 40
    //   828: invokeinterface 208 1 0
    //   833: lstore 45
    //   835: new 128	com/c/b
    //   838: dup
    //   839: aload 40
    //   841: invokestatic 214	org/apache/http/util/EntityUtils:toByteArray	(Lorg/apache/http/HttpEntity;)[B
    //   844: lload 45
    //   846: l2i
    //   847: invokespecial 217	com/c/b:<init>	([BI)V
    //   850: pop
    //   851: aload_0
    //   852: getfield 44	d/m:d	Ld/v;
    //   855: invokevirtual 319	d/v:k	()V
    //   858: ldc_w 321
    //   861: new 88	java/lang/StringBuilder
    //   864: dup
    //   865: ldc_w 323
    //   868: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   871: ldc_w 325
    //   874: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   877: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   880: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   883: pop
    //   884: iconst_1
    //   885: ireturn
    //   886: aload 31
    //   888: invokeinterface 165 1 0
    //   893: checkcast 167	java/util/Map$Entry
    //   896: astore 32
    //   898: aload 30
    //   900: aload 32
    //   902: invokeinterface 170 1 0
    //   907: checkcast 92	java/lang/String
    //   910: aload 32
    //   912: invokeinterface 173 1 0
    //   917: checkcast 92	java/lang/String
    //   920: invokevirtual 177	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   923: goto -318 -> 605
    //   926: astore 55
    //   928: aload 55
    //   930: invokevirtual 303	java/io/FileNotFoundException:printStackTrace	()V
    //   933: aconst_null
    //   934: astore 34
    //   936: goto -290 -> 646
    //   939: astore 53
    //   941: aload 53
    //   943: invokevirtual 180	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   946: aconst_null
    //   947: astore 37
    //   949: goto -261 -> 688
    //   952: astore 36
    //   954: aload 36
    //   956: invokevirtual 181	java/io/IOException:printStackTrace	()V
    //   959: aconst_null
    //   960: astore 37
    //   962: goto -274 -> 688
    //   965: aload 42
    //   967: aload 41
    //   969: iload 43
    //   971: aaload
    //   972: invokeinterface 242 1 0
    //   977: aload 41
    //   979: iload 43
    //   981: aaload
    //   982: invokeinterface 244 1 0
    //   987: invokeinterface 248 3 0
    //   992: pop
    //   993: ldc_w 327
    //   996: new 88	java/lang/StringBuilder
    //   999: dup
    //   1000: aload 41
    //   1002: iload 43
    //   1004: aaload
    //   1005: invokeinterface 242 1 0
    //   1010: invokestatic 96	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1013: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1016: ldc_w 329
    //   1019: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1022: aload 41
    //   1024: iload 43
    //   1026: aaload
    //   1027: invokeinterface 244 1 0
    //   1032: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1035: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1038: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1041: pop
    //   1042: iinc 43 1
    //   1045: goto -253 -> 792
    //   1048: astore 49
    //   1050: aload 49
    //   1052: invokevirtual 249	org/apache/http/ParseException:printStackTrace	()V
    //   1055: goto -197 -> 858
    //   1058: astore 48
    //   1060: aload 48
    //   1062: invokevirtual 181	java/io/IOException:printStackTrace	()V
    //   1065: goto -207 -> 858
    //
    // Exception table:
    //   from	to	target	type
    //   141	152	241	java/io/FileNotFoundException
    //   180	190	254	org/apache/http/client/ClientProtocolException
    //   180	190	267	java/io/IOException
    //   422	445	556	org/apache/http/ParseException
    //   422	445	566	java/io/IOException
    //   635	646	926	java/io/FileNotFoundException
    //   674	684	939	org/apache/http/client/ClientProtocolException
    //   674	684	952	java/io/IOException
    //   835	858	1048	org/apache/http/ParseException
    //   835	858	1058	java/io/IOException
  }

  private static HttpClient c()
  {
    try
    {
      KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localKeyStore.load(null, null);
      j localj = new j(localKeyStore);
      localj.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", localj, 443));
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      return localDefaultHttpClient;
    }
    catch (Exception localException)
    {
    }
    return new DefaultHttpClient();
  }

  private boolean d()
  {
    this.c = new q();
    this.c.a(this.i, this.a);
    this.c.a(this.g, this.f, this.h, this.j);
    b localb1 = this.c.b();
    Map localMap = this.c.a();
    HttpClient localHttpClient = c();
    HttpPost localHttpPost = new HttpPost(this.b + "/authorizePut");
    Iterator localIterator = localMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        byte[] arrayOfByte1 = new byte[localb1.b()];
        System.arraycopy(localb1.a(), 0, arrayOfByte1, 0, localb1.b());
        ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(arrayOfByte1);
        localByteArrayEntity.setChunked(true);
        localHttpPost.setEntity(localByteArrayEntity);
        this.c.g();
      }
      try
      {
        HttpResponse localHttpResponse2 = localHttpClient.execute(localHttpPost);
        localHttpResponse1 = localHttpResponse2;
        if (localHttpResponse1 == null)
        {
          return false;
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localHttpPost.addHeader((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        while (true)
        {
          localClientProtocolException.printStackTrace();
          localHttpResponse1 = null;
        }
      }
      catch (IOException localIOException1)
      {
        HttpResponse localHttpResponse1;
        while (true)
        {
          localIOException1.printStackTrace();
          localHttpResponse1 = null;
        }
        int i1 = localHttpResponse1.getStatusLine().getStatusCode();
        Log.d("Login", "resCode = " + i1);
        if ((i1 == 200) || (i1 == 206))
        {
          HttpEntity localHttpEntity = localHttpResponse1.getEntity();
          Header[] arrayOfHeader = localHttpResponse1.getAllHeaders();
          HashMap localHashMap = new HashMap();
          int i2;
          if (arrayOfHeader != null)
            i2 = 0;
          while (true)
          {
            if (i2 >= arrayOfHeader.length)
              if (localHttpEntity != null)
                localHttpEntity.getContentLength();
            try
            {
              byte[] arrayOfByte2 = EntityUtils.toByteArray(localHttpEntity);
              b localb2 = new b(arrayOfByte2, arrayOfByte2.length);
              this.c.a(localb2);
              if (this.m != null)
                this.m.a(3, 0, 1.0F);
              this.c.h();
              Log.d("AuthorizePut", "Succ");
              return true;
              localHashMap.put(arrayOfHeader[i2].getName(), arrayOfHeader[i2].getValue());
              i2++;
            }
            catch (ParseException localParseException)
            {
              while (true)
                localParseException.printStackTrace();
            }
            catch (IOException localIOException2)
            {
              while (true)
                localIOException2.printStackTrace();
            }
          }
        }
        this.c.h();
        if (this.m != null)
          this.m.a(3, 0, 1.0F);
        Log.d("AuthorizePut", "Err");
      }
    }
    return false;
  }

  public final void a(r paramr)
  {
    this.m = paramr;
  }

  public final void a(Vector paramVector, b paramb)
  {
    this.i = paramVector;
    this.a = paramb;
  }

  public final boolean a(String paramString)
  {
    this.k = paramString;
    n.a();
    return (d()) && (b()) && (a());
  }

  public final boolean a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this.f = paramString1;
    this.g = paramString2;
    this.h = paramString3;
    this.j = paramInt;
    return true;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.m
 * JD-Core Version:    0.6.2
 */