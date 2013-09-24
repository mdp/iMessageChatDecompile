package b;

import android.util.Log;
import com.c.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class a
{
  private int a;
  private Map b;
  private String c;
  private b d;
  private b e;
  private b f = null;
  private boolean g;

  public a(b paramb)
  {
    int i = paramb.b();
    byte[] arrayOfByte1 = paramb.a();
    this.b = new HashMap();
    int j = 8;
    this.a = arrayOfByte1[7];
    this.g = false;
    while (true)
    {
      if (j >= i)
        return;
      int k = j + 1;
      switch (arrayOfByte1[j])
      {
      default:
        int i12 = k + 1;
        int i13 = 0xFF00 & arrayOfByte1[k] << 8;
        int i14 = i12 + 1;
        int i15 = i13 | 0xFF & arrayOfByte1[i12];
        byte[] arrayOfByte5 = new byte[i15];
        System.arraycopy(arrayOfByte1, i14, arrayOfByte5, 0, i15);
        j = i15 + i14;
        String str4 = new String(arrayOfByte5);
        int i16 = str4.indexOf(':');
        if (i16 != -1)
        {
          String str5 = str4.substring(0, i16);
          String str6 = str4.substring(i16 + 1);
          this.b.put(str5, str6);
        }
        break;
      case 16:
        int i8 = k + 1;
        int i9 = 0xFF00 & arrayOfByte1[k] << 8;
        int i10 = i8 + 1;
        int i11 = i9 | 0xFF & arrayOfByte1[i8];
        byte[] arrayOfByte4 = new byte[i11];
        System.arraycopy(arrayOfByte1, i10, arrayOfByte4, 0, i11);
        j = i11 + i10;
        this.c = ("https://" + new String(arrayOfByte4));
        break;
      case 48:
        int i4 = k + 1;
        int i5 = 0xFF00 & arrayOfByte1[k] << 8;
        int i6 = i4 + 1;
        int i7 = i5 | 0xFF & arrayOfByte1[i4];
        byte[] arrayOfByte3 = new byte[i7];
        System.arraycopy(arrayOfByte1, i6, arrayOfByte3, 0, i7);
        j = i6 + i7;
        this.d = new b(arrayOfByte3, i7);
        break;
      case 27:
      case 29:
      case 31:
      case 32:
      case 33:
        int m = k + 1;
        int n = 0xFF00 & arrayOfByte1[k] << 8;
        int i1 = m + 1;
        int i2 = n | 0xFF & arrayOfByte1[m];
        byte[] arrayOfByte2 = new byte[i2];
        System.arraycopy(arrayOfByte1, i1, arrayOfByte2, 0, i2);
        j = i2 + i1;
        String str1 = new String(arrayOfByte2);
        int i3 = str1.indexOf(':');
        if (i3 != -1)
        {
          String str2 = str1.substring(0, i3);
          String str3 = str1.substring(i3 + 1);
          this.b.put(str2, str3);
        }
        break;
      }
    }
  }

  public static int a(byte paramByte)
  {
    switch (paramByte)
    {
    case 3:
    case 5:
    case 7:
    case 9:
    case 11:
    case 13:
    case 15:
    case 17:
    case 19:
    default:
      return -1;
    case 2:
      return 10;
    case 4:
      return 20;
    case 6:
      return 30;
    case 8:
      return 40;
    case 10:
      return 50;
    case 12:
      return 55;
    case 14:
      return 60;
    case 16:
      return 71;
    case 18:
      return 83;
    case 20:
    }
    return 95;
  }

  private void a(Map paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    String str1 = "";
    if (!localIterator.hasNext())
    {
      this.e = new b(str1.getBytes(), str1.length());
      return;
    }
    Map.Entry localEntry = (Map.Entry)localIterator.next();
    String str2 = (String)localEntry.getKey();
    List localList = (List)localEntry.getValue();
    Object localObject = str1 + str2 + ":";
    int i = 0;
    while (true)
    {
      if (i >= localList.size())
      {
        str1 = localObject + "\n";
        break;
      }
      String str3 = localObject + " " + (String)localList.get(i);
      i++;
      localObject = str3;
    }
  }

  public final boolean a()
  {
    d.e locale = new d.e(this.c, "POST");
    b localb = new b(new byte[100], 100);
    locale.a(true, true);
    locale.a(this.b);
    locale.a(this.d, localb);
    if (locale.b())
    {
      Log.d("Login https request: " + this.a, "Succ");
      this.f = localb;
      a(locale.a());
      return true;
    }
    Log.d("Login https request: " + this.a, "Err");
    return false;
  }

  public final b b()
  {
    int i = this.f.b();
    Log.d("Login Type rec", "bodylen" + i);
    int j = i + 14;
    byte[] arrayOfByte = new byte[j];
    arrayOfByte[0] = 2;
    arrayOfByte[1] = ((byte)(j - 5 >> 24));
    arrayOfByte[2] = ((byte)(j - 5 >> 16));
    arrayOfByte[3] = ((byte)(j - 5 >> 8));
    arrayOfByte[4] = ((byte)(j - 5 >> 0));
    arrayOfByte[5] = 4;
    arrayOfByte[6] = 1;
    int k = 1 + this.a;
    this.a = k;
    arrayOfByte[7] = ((byte)k);
    arrayOfByte[8] = 64;
    arrayOfByte[9] = 0;
    arrayOfByte[10] = 0;
    System.arraycopy(this.e.a(), 0, arrayOfByte, 11, 0);
    arrayOfByte[11] = 65;
    arrayOfByte[12] = ((byte)(i >> 8));
    arrayOfByte[13] = ((byte)(i >> 0));
    System.arraycopy(this.f.a(), 0, arrayOfByte, 14, i);
    e.e.a(this.f.a());
    return new b(arrayOfByte, j);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     b.a
 * JD-Core Version:    0.6.2
 */