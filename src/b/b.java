package b;

import android.util.Log;
import e.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
{
  private int a;
  private Map b;
  private String c;
  private com.c.b d;
  private com.c.b e;
  private com.c.b f;

  public b(com.c.b paramb)
  {
    int i = paramb.b();
    byte[] arrayOfByte1 = paramb.a();
    this.b = new HashMap();
    int j = 8;
    this.a = arrayOfByte1[7];
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
        this.d = new com.c.b(arrayOfByte3, i7);
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

  private void a(Map paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    String str1 = "";
    if (!localIterator.hasNext())
    {
      this.e = new com.c.b(str1.getBytes(), str1.length());
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
    com.c.b localb = new com.c.b(new byte[100], 100);
    locale.a(true, true);
    locale.a(this.b);
    locale.a(this.d, localb);
    if (locale.b())
    {
      Log.d("Register https request: " + this.a, "Succ");
      this.f = localb;
      a(locale.a());
      return true;
    }
    Log.d("Register https request: " + this.a, "Err");
    return false;
  }

  public final com.c.b b()
  {
    int i = this.f.b();
    int j = i + 14;
    byte[] arrayOfByte1 = new byte[j];
    arrayOfByte1[0] = 10;
    arrayOfByte1[1] = ((byte)(j - 5 >> 24));
    arrayOfByte1[2] = ((byte)(j - 5 >> 16));
    arrayOfByte1[3] = ((byte)(j - 5 >> 8));
    arrayOfByte1[4] = ((byte)(j - 5 >> 0));
    arrayOfByte1[5] = 4;
    arrayOfByte1[6] = 1;
    int k = 1 + this.a;
    this.a = k;
    arrayOfByte1[7] = ((byte)k);
    arrayOfByte1[8] = 64;
    arrayOfByte1[9] = 0;
    arrayOfByte1[10] = 0;
    System.arraycopy(this.e.a(), 0, arrayOfByte1, 11, 0);
    arrayOfByte1[11] = 65;
    arrayOfByte1[12] = ((byte)(i >> 8));
    arrayOfByte1[13] = ((byte)(i >> 0));
    System.arraycopy(this.f.a(), 0, arrayOfByte1, 14, i);
    e.e.a(this.f.a());
    byte[] arrayOfByte2 = d.a(arrayOfByte1);
    byte[] arrayOfByte3 = new byte[5 + arrayOfByte2.length];
    arrayOfByte3[0] = 60;
    arrayOfByte3[1] = ((byte)(arrayOfByte2.length >> 24));
    arrayOfByte3[2] = ((byte)(arrayOfByte2.length >> 16));
    arrayOfByte3[3] = ((byte)(arrayOfByte2.length >> 8));
    arrayOfByte3[4] = ((byte)(arrayOfByte2.length >> 0));
    System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 5, arrayOfByte2.length);
    return new com.c.b(arrayOfByte3, 5 + arrayOfByte2.length);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     b.b
 * JD-Core Version:    0.6.2
 */