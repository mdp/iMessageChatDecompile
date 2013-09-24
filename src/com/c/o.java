package com.c;

import android.content.Context;
import android.content.res.Resources;
import java.util.ArrayList;

public final class o
{
  public static ArrayList a;
  public static ArrayList b;

  public static void a(Context paramContext)
  {
    a = new ArrayList();
    b = new ArrayList();
    a(paramContext.getResources().getStringArray(2131034116), paramContext);
    a(paramContext.getResources().getStringArray(2131034117), paramContext);
    a(paramContext.getResources().getStringArray(2131034118), paramContext);
    a(paramContext.getResources().getStringArray(2131034119), paramContext);
    a(paramContext.getResources().getStringArray(2131034120), paramContext);
  }

  private static void a(String[] paramArrayOfString, Context paramContext)
  {
    int[] arrayOfInt1 = new int[paramArrayOfString.length];
    String[] arrayOfString = new String[paramArrayOfString.length];
    int i = 0;
    if (i >= paramArrayOfString.length)
    {
      a.add(arrayOfInt1);
      b.add(arrayOfString);
      return;
    }
    String str = paramArrayOfString[i];
    int j = paramContext.getResources().getIdentifier(str, "drawable", "com.huluwa.imessage");
    int k = paramContext.getResources().getIdentifier(str, "array", "com.huluwa.imessage");
    int[] arrayOfInt2;
    Object localObject;
    int m;
    if (k != 0)
    {
      arrayOfInt2 = paramContext.getResources().getIntArray(k);
      arrayOfString[i] = "";
      localObject = new byte[0];
      m = 0;
      if (m >= arrayOfInt2.length)
      {
        arrayOfString[i] = new String((byte[])localObject);
        label125: if (j != 0)
          break label579;
        arrayOfInt1[i] = 2130838403;
      }
    }
    while (true)
    {
      i++;
      break;
      int n = arrayOfInt2[m];
      byte[] arrayOfByte1 = new byte[4];
      arrayOfByte1[3] = ((byte)(0xFF & n >> 24));
      arrayOfByte1[2] = ((byte)(0xFF & n >> 16));
      arrayOfByte1[1] = ((byte)(0xFF & n >> 8));
      arrayOfByte1[0] = ((byte)(n & 0xFF));
      byte[] arrayOfByte2 = new byte[2 * arrayOfByte1.length];
      int i1 = arrayOfByte1.length;
      int i2 = 0;
      byte[] arrayOfByte5;
      int i3;
      label288: int i4;
      if (i1 > 0)
      {
        arrayOfByte5 = new byte[1];
        i3 = 0xFF & arrayOfByte1[0] | (0xFF & arrayOfByte1[1]) << 8 | (0xFF & arrayOfByte1[2]) << 16;
        if (i3 >= 128)
          break label363;
        arrayOfByte5 = new byte[1];
        arrayOfByte5[0] = ((byte)i3);
        i4 = 0;
      }
      while (true)
      {
        if (i4 >= arrayOfByte5.length)
        {
          byte[] arrayOfByte3 = new byte[i2];
          System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 0, i2);
          byte[] arrayOfByte4 = new byte[localObject.length + arrayOfByte3.length];
          System.arraycopy(localObject, 0, arrayOfByte4, 0, localObject.length);
          System.arraycopy(arrayOfByte3, 0, arrayOfByte4, localObject.length, arrayOfByte3.length);
          m++;
          localObject = arrayOfByte4;
          break;
          label363: if (i3 < 2048)
          {
            arrayOfByte5 = new byte[2];
            arrayOfByte5[0] = ((byte)(0xC0 | i3 >> 6));
            arrayOfByte5[1] = ((byte)(0x80 | i3 & 0x3F));
            break label288;
          }
          if (i3 < 65536)
          {
            arrayOfByte5 = new byte[3];
            arrayOfByte5[0] = ((byte)(0xE0 | i3 >> 12));
            arrayOfByte5[1] = ((byte)(0x80 | 0x3F & i3 >> 6));
            arrayOfByte5[2] = ((byte)(0x80 | i3 & 0x3F));
            break label288;
          }
          if (i3 >= 1114112)
            break label288;
          arrayOfByte5 = new byte[4];
          arrayOfByte5[0] = ((byte)(0xF0 | i3 >> 18));
          arrayOfByte5[1] = ((byte)(0x80 | 0x3F & i3 >> 12));
          arrayOfByte5[2] = ((byte)(0x80 | 0x3F & i3 >> 6));
          arrayOfByte5[3] = ((byte)(0x80 | i3 & 0x3F));
          break label288;
        }
        int i5 = i2 + 1;
        arrayOfByte2[i2] = arrayOfByte5[i4];
        i4++;
        i2 = i5;
      }
      arrayOfString[i] = "";
      break label125;
      label579: arrayOfInt1[i] = j;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.o
 * JD-Core Version:    0.6.2
 */