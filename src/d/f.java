package d;

import android.util.Log;
import com.c.b;
import java.util.Vector;

public final class f
{
  public static int a = 0;
  public static int b = 2;

  public static Vector a(b paramb)
  {
    int i = paramb.b();
    byte[] arrayOfByte = paramb.a();
    Vector localVector = new Vector();
    if (i <= 0)
      return localVector;
    if (a(arrayOfByte[0]))
    {
      int k = 0xF & arrayOfByte[0] >> 3;
      localVector.add(new g(b(paramb), k));
    }
    while (true)
    {
      i = paramb.b();
      arrayOfByte = paramb.a();
      break;
      if (!b(arrayOfByte[0]))
        break label114;
      int j = 0xF & arrayOfByte[0] >> 3;
      localVector.add(new g(c(paramb), j));
    }
    while (true)
      label114: Log.e("protoBuf", "error");
  }

  public static Vector a(Vector paramVector, b paramb)
  {
    while (true)
    {
      int i = paramb.b();
      byte[] arrayOfByte = paramb.a();
      if (i <= 0)
        return paramVector;
      if (a(arrayOfByte[0]))
      {
        int k = 0xF & arrayOfByte[0] >> 3;
        paramVector.add(new g(b(paramb), k));
      }
      else
      {
        if (!b(arrayOfByte[0]))
          break;
        int j = 0xF & arrayOfByte[0] >> 3;
        paramVector.add(new g(c(paramb), j));
      }
    }
    while (true)
      Log.e("protoBuf", "error");
  }

  public static void a(b paramb, int paramInt1, int paramInt2)
  {
    int i = (byte)(0x78 & paramInt1 << 3 | 0x7 & a);
    byte[] arrayOfByte1 = new byte[100];
    int j = 0;
    int i1;
    label32: byte[] arrayOfByte2;
    int i3;
    int i4;
    if (paramInt2 == 0)
    {
      i1 = j;
      arrayOfByte2 = new byte[2 + (i1 + 1 + paramb.b())];
      System.arraycopy(paramb.a(), 0, arrayOfByte2, 0, paramb.b());
      int i2 = paramb.b();
      i3 = i2 + 1;
      arrayOfByte2[i2] = i;
      i4 = 0;
    }
    while (true)
    {
      if (i4 >= i1)
      {
        paramb.a(arrayOfByte2, i3);
        return;
        int k = (byte)(paramInt2 & 0x7F);
        paramInt2 >>= 7;
        if (paramInt2 == 0)
        {
          i1 = j + 1;
          arrayOfByte1[j] = k;
          break label32;
        }
        int m = (byte)(k | 0x80);
        int n = j + 1;
        arrayOfByte1[j] = m;
        j = n;
        break;
      }
      int i5 = i3 + 1;
      arrayOfByte2[i3] = arrayOfByte1[i4];
      i4++;
      i3 = i5;
    }
  }

  public static void a(b paramb1, int paramInt, b paramb2)
  {
    int i = 0;
    int j = (byte)(0x78 & paramInt << 3 | 0x7 & b);
    byte[] arrayOfByte1 = new byte[100];
    int k = paramb2.b();
    int m = 0;
    int i3;
    label42: byte[] arrayOfByte2;
    int i5;
    int i6;
    label99: int i8;
    byte[] arrayOfByte3;
    if (k == 0)
    {
      i3 = m;
      arrayOfByte2 = new byte[2 + (i3 + 1 + paramb2.b() + paramb1.b())];
      System.arraycopy(paramb1.a(), 0, arrayOfByte2, 0, paramb1.b());
      int i4 = paramb1.b();
      i5 = i4 + 1;
      arrayOfByte2[i4] = j;
      i6 = 0;
      if (i6 < i3)
        break label202;
      i8 = paramb2.b();
      arrayOfByte3 = paramb2.a();
    }
    label202: int i10;
    for (int i9 = i5; ; i9 = i10)
    {
      if (i >= i8)
      {
        paramb1.a(arrayOfByte2, i9);
        return;
        int n = (byte)(k & 0x7F);
        k >>= 7;
        if (k == 0)
        {
          i3 = m + 1;
          arrayOfByte1[m] = n;
          break label42;
        }
        int i1 = (byte)(n | 0x80);
        int i2 = m + 1;
        arrayOfByte1[m] = i1;
        m = i2;
        break;
        int i7 = i5 + 1;
        arrayOfByte2[i5] = arrayOfByte1[i6];
        i6++;
        i5 = i7;
        break label99;
      }
      i10 = i9 + 1;
      arrayOfByte2[i9] = arrayOfByte3[i];
      i++;
    }
  }

  private static boolean a(byte paramByte)
  {
    return (paramByte & 0x7) == a;
  }

  private static int b(b paramb)
  {
    byte[] arrayOfByte = paramb.a();
    int i = paramb.b();
    if (paramb.b() > 0)
    {
      int j = 0xFF & arrayOfByte[1];
      int k = 0;
      int m = 2;
      int n = j;
      int i1 = 0;
      while (true)
      {
        if ((n & 0x80) == 0)
        {
          int i3 = k | n << i1;
          System.arraycopy(arrayOfByte, m, arrayOfByte, 0, i - m);
          paramb.a(arrayOfByte, i - m);
          return i3;
        }
        k |= (n & 0x80) << i1;
        i1 += 8;
        int i2 = m + 1;
        n = 0xFF & arrayOfByte[m];
        m = i2;
      }
    }
    return 0;
  }

  private static boolean b(byte paramByte)
  {
    return (paramByte & 0x7) == b;
  }

  private static b c(b paramb)
  {
    int i = paramb.b();
    byte[] arrayOfByte1 = paramb.a();
    b localb = null;
    int j;
    int k;
    int m;
    int n;
    int i4;
    byte[] arrayOfByte2;
    int i5;
    int i6;
    if (i > 0)
    {
      j = 0xFF & arrayOfByte1[1];
      k = 0;
      m = 2;
      n = 0;
      if ((j & 0x80) != 0)
        break label110;
      i4 = k | j << n;
      arrayOfByte2 = new byte[i4 + 2];
      i5 = m;
      i6 = 0;
    }
    while (true)
    {
      if (i6 >= i4)
      {
        localb = new b(arrayOfByte2, i4);
        System.arraycopy(arrayOfByte1, i5, arrayOfByte1, 0, i - i5);
        paramb.a(arrayOfByte1, i - i5);
        return localb;
        label110: int i1 = k | (j & 0x7F) << n;
        n += 7;
        int i2 = m + 1;
        int i3 = 0xFF & arrayOfByte1[m];
        m = i2;
        k = i1;
        j = i3;
        break;
      }
      int i7 = i5 + 1;
      arrayOfByte2[i6] = arrayOfByte1[i5];
      i6++;
      i5 = i7;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.f
 * JD-Core Version:    0.6.2
 */