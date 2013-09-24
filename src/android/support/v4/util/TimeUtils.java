package android.support.v4.util;

import java.io.PrintWriter;

public class TimeUtils
{
  public static final int HUNDRED_DAY_FIELD_LEN = 19;
  private static final int SECONDS_PER_DAY = 86400;
  private static final int SECONDS_PER_HOUR = 3600;
  private static final int SECONDS_PER_MINUTE = 60;
  private static char[] sFormatStr = new char[24];
  private static final Object sFormatSync = new Object();

  private static int accumField(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    if ((paramInt1 > 99) || ((paramBoolean) && (paramInt3 >= 3)))
      return paramInt2 + 3;
    if ((paramInt1 > 9) || ((paramBoolean) && (paramInt3 >= 2)))
      return paramInt2 + 2;
    if ((paramBoolean) || (paramInt1 > 0))
      return paramInt2 + 1;
    return 0;
  }

  public static void formatDuration(long paramLong1, long paramLong2, PrintWriter paramPrintWriter)
  {
    if (paramLong1 == 0L)
    {
      paramPrintWriter.print("--");
      return;
    }
    formatDuration(paramLong1 - paramLong2, paramPrintWriter, 0);
  }

  public static void formatDuration(long paramLong, PrintWriter paramPrintWriter)
  {
    formatDuration(paramLong, paramPrintWriter, 0);
  }

  public static void formatDuration(long paramLong, PrintWriter paramPrintWriter, int paramInt)
  {
    synchronized (sFormatSync)
    {
      int i = formatDurationLocked(paramLong, paramInt);
      paramPrintWriter.print(new String(sFormatStr, 0, i));
      return;
    }
  }

  public static void formatDuration(long paramLong, StringBuilder paramStringBuilder)
  {
    synchronized (sFormatSync)
    {
      int i = formatDurationLocked(paramLong, 0);
      paramStringBuilder.append(sFormatStr, 0, i);
      return;
    }
  }

  private static int formatDurationLocked(long paramLong, int paramInt)
  {
    if (sFormatStr.length < paramInt)
      sFormatStr = new char[paramInt];
    char[] arrayOfChar = sFormatStr;
    if (paramLong == 0L)
    {
      int i28 = paramInt - 1;
      while (i28 > 0)
        arrayOfChar[0] = ' ';
      arrayOfChar[0] = '0';
      return 1;
    }
    int i;
    int j;
    int k;
    int m;
    int i1;
    int n;
    if (paramLong > 0L)
    {
      i = 43;
      j = (int)(paramLong % 1000L);
      k = (int)Math.floor(paramLong / 1000L);
      m = 0;
      if (k > 86400)
      {
        m = k / 86400;
        k -= 86400 * m;
      }
      if (k <= 3600)
        break label583;
      int i26 = k / 3600;
      int i27 = k - i26 * 3600;
      i1 = i26;
      n = i27;
    }
    while (true)
    {
      int i3;
      int i2;
      if (n > 60)
      {
        int i24 = n / 60;
        int i25 = n - i24 * 60;
        i3 = i24;
        i2 = i25;
      }
      while (true)
      {
        if (paramInt != 0)
        {
          int i16 = accumField(m, 1, false, 0);
          boolean bool4;
          label195: boolean bool5;
          label217: boolean bool6;
          label239: int i19;
          if (i16 > 0)
          {
            bool4 = true;
            int i17 = i16 + accumField(i1, 1, bool4, 2);
            if (i17 <= 0)
              break label328;
            bool5 = true;
            int i18 = i17 + accumField(i3, 1, bool5, 2);
            if (i18 <= 0)
              break label334;
            bool6 = true;
            i19 = i18 + accumField(i2, 1, bool6, 2);
            if (i19 <= 0)
              break label340;
          }
          label328: label334: label340: for (int i20 = 3; ; i20 = 0)
          {
            int i21 = i19 + (1 + accumField(j, 2, true, i20));
            i4 = 0;
            int i22 = i21;
            while (i22 < paramInt)
            {
              arrayOfChar[i4] = ' ';
              int i23 = i4 + 1;
              i22++;
              i4 = i23;
            }
            paramLong = -paramLong;
            i = 45;
            break;
            bool4 = false;
            break label195;
            bool5 = false;
            break label217;
            bool6 = false;
            break label239;
          }
        }
        int i4 = 0;
        arrayOfChar[i4] = i;
        int i5 = i4 + 1;
        int i6;
        boolean bool1;
        label392: int i8;
        label400: boolean bool2;
        label426: int i10;
        label434: boolean bool3;
        label460: int i12;
        label468: int i13;
        if (paramInt != 0)
        {
          i6 = 1;
          int i7 = printField(arrayOfChar, m, 'd', i5, false, 0);
          if (i7 == i5)
            break label531;
          bool1 = true;
          if (i6 == 0)
            break label537;
          i8 = 2;
          int i9 = printField(arrayOfChar, i1, 'h', i7, bool1, i8);
          if (i9 == i5)
            break label543;
          bool2 = true;
          if (i6 == 0)
            break label549;
          i10 = 2;
          int i11 = printField(arrayOfChar, i3, 'm', i9, bool2, i10);
          if (i11 == i5)
            break label555;
          bool3 = true;
          if (i6 == 0)
            break label561;
          i12 = 2;
          i13 = printField(arrayOfChar, i2, 's', i11, bool3, i12);
          if ((i6 == 0) || (i13 == i5))
            break label567;
        }
        label531: label537: label543: label549: label555: label561: label567: for (int i14 = 3; ; i14 = 0)
        {
          int i15 = printField(arrayOfChar, j, 'm', i13, true, i14);
          arrayOfChar[i15] = 's';
          return i15 + 1;
          i6 = 0;
          break;
          bool1 = false;
          break label392;
          i8 = 0;
          break label400;
          bool2 = false;
          break label426;
          i10 = 0;
          break label434;
          bool3 = false;
          break label460;
          i12 = 0;
          break label468;
        }
        i2 = n;
        i3 = 0;
      }
      label583: n = k;
      i1 = 0;
    }
  }

  private static int printField(char[] paramArrayOfChar, int paramInt1, char paramChar, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    int n;
    int i;
    if ((paramBoolean) || (paramInt1 > 0))
    {
      if (((!paramBoolean) || (paramInt3 < 3)) && (paramInt1 <= 99))
        break label137;
      n = paramInt1 / 100;
      paramArrayOfChar[paramInt2] = ((char)(n + 48));
      i = paramInt2 + 1;
    }
    for (int j = paramInt1 - n * 100; ; j = paramInt1)
    {
      if (((paramBoolean) && (paramInt3 >= 2)) || (j > 9) || (paramInt2 != i))
      {
        int k = j / 10;
        paramArrayOfChar[i] = ((char)(k + 48));
        i++;
        j -= k * 10;
      }
      paramArrayOfChar[i] = ((char)(j + 48));
      int m = i + 1;
      paramArrayOfChar[m] = paramChar;
      paramInt2 = m + 1;
      return paramInt2;
      label137: i = paramInt2;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.util.TimeUtils
 * JD-Core Version:    0.6.2
 */