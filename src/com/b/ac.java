package com.b;

import activity.MyApplication;
import com.c.b;
import com.c.j;

public final class ac
  implements q
{
  private boolean a;
  private i b;

  public ac(MyApplication paramMyApplication, boolean paramBoolean)
  {
    this.a = paramBoolean;
    this.b = paramMyApplication.b();
  }

  public final void a(j paramj)
  {
    if (!this.a)
    {
      if (paramj.p())
      {
        j localj = new j();
        byte[] arrayOfByte1 = paramj.j();
        int i = paramj.n();
        int j = i + 9;
        byte[] arrayOfByte2 = new byte[j];
        arrayOfByte2[0] = 12;
        arrayOfByte2[1] = ((byte)(j - 5 >> 24));
        arrayOfByte2[2] = ((byte)(j - 5 >> 16));
        arrayOfByte2[3] = ((byte)(j - 5 >> 8));
        arrayOfByte2[4] = ((byte)(j - 5 >> 0));
        arrayOfByte2[5] = 4;
        arrayOfByte2[6] = 1;
        arrayOfByte2[7] = ((byte)(i >> 8));
        arrayOfByte2[8] = ((byte)(i >> 0));
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 9, i);
        localj.a(new b(arrayOfByte2, j));
        this.b.a(localj);
        return;
      }
      this.b.a(paramj);
      return;
    }
    this.b.d();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.ac
 * JD-Core Version:    0.6.2
 */