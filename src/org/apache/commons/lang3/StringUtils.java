package org.apache.commons.lang3;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils
{
  public static final String EMPTY = "";
  public static final int INDEX_NOT_FOUND = -1;
  private static final int PAD_LIMIT = 8192;
  private static final Pattern WHITESPACE_BLOCK = Pattern.compile("\\s+");

  public static String abbreviate(String paramString, int paramInt)
  {
    return abbreviate(paramString, 0, paramInt);
  }

  public static String abbreviate(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null)
      paramString = null;
    do
    {
      return paramString;
      if (paramInt2 < 4)
        throw new IllegalArgumentException("Minimum abbreviation width is 4");
    }
    while (paramString.length() <= paramInt2);
    if (paramInt1 > paramString.length())
      paramInt1 = paramString.length();
    if (paramString.length() - paramInt1 < paramInt2 - 3)
      paramInt1 = paramString.length() - (paramInt2 - 3);
    if (paramInt1 <= 4)
      return paramString.substring(0, paramInt2 - 3) + "...";
    if (paramInt2 < 7)
      throw new IllegalArgumentException("Minimum abbreviation width with offset is 7");
    if (-3 + (paramInt1 + paramInt2) < paramString.length())
      return "..." + abbreviate(paramString.substring(paramInt1), paramInt2 - 3);
    return "..." + paramString.substring(paramString.length() - (paramInt2 - 3));
  }

  public static String abbreviateMiddle(String paramString1, String paramString2, int paramInt)
  {
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)));
    while ((paramInt >= paramString1.length()) || (paramInt < 2 + paramString2.length()))
      return paramString1;
    int i = paramInt - paramString2.length();
    int j = i / 2 + i % 2;
    int k = paramString1.length() - i / 2;
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    localStringBuilder.append(paramString1.substring(0, j));
    localStringBuilder.append(paramString2);
    localStringBuilder.append(paramString1.substring(k));
    return localStringBuilder.toString();
  }

  public static String capitalize(String paramString)
  {
    int i;
    if (paramString != null)
    {
      i = paramString.length();
      if (i != 0);
    }
    else
    {
      return paramString;
    }
    return i + Character.toTitleCase(paramString.charAt(0)) + paramString.substring(1);
  }

  public static String center(String paramString, int paramInt)
  {
    return center(paramString, paramInt, ' ');
  }

  public static String center(String paramString, int paramInt, char paramChar)
  {
    if ((paramString == null) || (paramInt <= 0));
    int i;
    int j;
    do
    {
      return paramString;
      i = paramString.length();
      j = paramInt - i;
    }
    while (j <= 0);
    return rightPad(leftPad(paramString, i + j / 2, paramChar), paramInt, paramChar);
  }

  public static String center(String paramString1, int paramInt, String paramString2)
  {
    if ((paramString1 == null) || (paramInt <= 0));
    int i;
    int j;
    do
    {
      return paramString1;
      if (isEmpty(paramString2))
        paramString2 = " ";
      i = paramString1.length();
      j = paramInt - i;
    }
    while (j <= 0);
    return rightPad(leftPad(paramString1, i + j / 2, paramString2), paramInt, paramString2);
  }

  public static String chomp(String paramString)
  {
    if (isEmpty(paramString));
    int k;
    do
    {
      return paramString;
      if (paramString.length() != 1)
        break;
      k = paramString.charAt(0);
    }
    while ((k != 13) && (k != 10));
    return "";
    int i = -1 + paramString.length();
    int j = paramString.charAt(i);
    if (j == 10)
      if (paramString.charAt(i - 1) == '\r')
        i--;
    while (true)
    {
      return paramString.substring(0, i);
      if (j != 13)
        i++;
    }
  }

  public static String chomp(String paramString1, String paramString2)
  {
    return removeEnd(paramString1, paramString2);
  }

  public static String chop(String paramString)
  {
    String str;
    if (paramString == null)
      str = null;
    int j;
    do
    {
      return str;
      int i = paramString.length();
      if (i < 2)
        return "";
      j = i - 1;
      str = paramString.substring(0, j);
    }
    while ((paramString.charAt(j) != '\n') || (str.charAt(j - 1) != '\r'));
    return str.substring(0, j - 1);
  }

  public static boolean contains(CharSequence paramCharSequence, int paramInt)
  {
    if (isEmpty(paramCharSequence));
    while (CharSequenceUtils.indexOf(paramCharSequence, paramInt, 0) < 0)
      return false;
    return true;
  }

  public static boolean contains(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null));
    while (CharSequenceUtils.indexOf(paramCharSequence1, paramCharSequence2, 0) < 0)
      return false;
    return true;
  }

  public static boolean containsAny(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (paramCharSequence2 == null)
      return false;
    return containsAny(paramCharSequence1, CharSequenceUtils.toCharArray(paramCharSequence2));
  }

  public static boolean containsAny(CharSequence paramCharSequence, char[] paramArrayOfChar)
  {
    boolean bool = true;
    if ((isEmpty(paramCharSequence)) || (ArrayUtils.isEmpty(paramArrayOfChar)))
    {
      bool = false;
      return bool;
    }
    int i = paramCharSequence.length();
    int j = paramArrayOfChar.length;
    int k = i - 1;
    int m = j - 1;
    label127: for (int n = 0; ; n++)
    {
      if (n >= i)
        break label133;
      char c = paramCharSequence.charAt(n);
      for (int i1 = 0; ; i1++)
      {
        if (i1 >= j)
          break label127;
        if ((paramArrayOfChar[i1] == c) && ((!Character.isHighSurrogate(c)) || (i1 == m) || ((n < k) && (paramArrayOfChar[(i1 + 1)] == paramCharSequence.charAt(n + 1)))))
          break;
      }
    }
    label133: return false;
  }

  public static boolean containsIgnoreCase(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null));
    while (true)
    {
      return false;
      int i = paramCharSequence2.length();
      int j = paramCharSequence1.length() - i;
      for (int k = 0; k <= j; k++)
        if (CharSequenceUtils.regionMatches(paramCharSequence1, true, k, paramCharSequence2, 0, i))
          return true;
    }
  }

  public static boolean containsNone(CharSequence paramCharSequence, String paramString)
  {
    if ((paramCharSequence == null) || (paramString == null))
      return true;
    return containsNone(paramCharSequence, paramString.toCharArray());
  }

  public static boolean containsNone(CharSequence paramCharSequence, char[] paramArrayOfChar)
  {
    boolean bool1;
    if ((paramCharSequence == null) || (paramArrayOfChar == null))
    {
      bool1 = true;
      return bool1;
    }
    int i = paramCharSequence.length();
    int j = i - 1;
    int k = paramArrayOfChar.length;
    int m = k - 1;
    label137: for (int n = 0; ; n++)
    {
      if (n >= i)
        break label143;
      char c = paramCharSequence.charAt(n);
      for (int i1 = 0; ; i1++)
      {
        if (i1 >= k)
          break label137;
        if (paramArrayOfChar[i1] == c)
        {
          boolean bool2 = Character.isHighSurrogate(c);
          bool1 = false;
          if (!bool2)
            break;
          bool1 = false;
          if (i1 == m)
            break;
          if (n < j)
          {
            int i2 = paramArrayOfChar[(i1 + 1)];
            int i3 = paramCharSequence.charAt(n + 1);
            bool1 = false;
            if (i2 == i3)
              break;
          }
        }
      }
    }
    label143: return true;
  }

  public static boolean containsOnly(CharSequence paramCharSequence, String paramString)
  {
    if ((paramCharSequence == null) || (paramString == null))
      return false;
    return containsOnly(paramCharSequence, paramString.toCharArray());
  }

  public static boolean containsOnly(CharSequence paramCharSequence, char[] paramArrayOfChar)
  {
    boolean bool = true;
    if ((paramArrayOfChar == null) || (paramCharSequence == null))
      bool = false;
    do
    {
      do
        return bool;
      while (paramCharSequence.length() == 0);
      if (paramArrayOfChar.length == 0)
        return false;
    }
    while (indexOfAnyBut(paramCharSequence, paramArrayOfChar) == -1);
    return false;
  }

  public static boolean containsWhitespace(CharSequence paramCharSequence)
  {
    if (isEmpty(paramCharSequence));
    while (true)
    {
      return false;
      int i = paramCharSequence.length();
      for (int j = 0; j < i; j++)
        if (Character.isWhitespace(paramCharSequence.charAt(j)))
          return true;
    }
  }

  public static int countMatches(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    int i = 0;
    if ((isEmpty(paramCharSequence1)) || (isEmpty(paramCharSequence2)))
    {
      j = 0;
      return j;
    }
    int j = 0;
    while (true)
    {
      int k = CharSequenceUtils.indexOf(paramCharSequence1, paramCharSequence2, i);
      if (k == -1)
        break;
      j++;
      i = k + paramCharSequence2.length();
    }
  }

  public static CharSequence defaultIfBlank(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (isBlank(paramCharSequence1))
      return paramCharSequence2;
    return paramCharSequence1;
  }

  public static CharSequence defaultIfEmpty(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (isEmpty(paramCharSequence1))
      return paramCharSequence2;
    return paramCharSequence1;
  }

  public static String defaultString(String paramString)
  {
    if (paramString == null)
      paramString = "";
    return paramString;
  }

  public static String defaultString(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2;
    return paramString1;
  }

  public static String deleteWhitespace(String paramString)
  {
    if (isEmpty(paramString))
      return paramString;
    int i = paramString.length();
    char[] arrayOfChar = new char[i];
    int j = 0;
    int k = 0;
    label23: int m;
    if (j < i)
    {
      if (Character.isWhitespace(paramString.charAt(j)))
        break label82;
      m = k + 1;
      arrayOfChar[k] = paramString.charAt(j);
    }
    while (true)
    {
      j++;
      k = m;
      break label23;
      if (k == i)
        break;
      return new String(arrayOfChar, 0, k);
      label82: m = k;
    }
  }

  public static String difference(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2;
    if (paramString2 == null)
      return paramString1;
    int i = indexOfDifference(paramString1, paramString2);
    if (i == -1)
      return "";
    return paramString2.substring(i);
  }

  public static boolean endsWith(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return endsWith(paramCharSequence1, paramCharSequence2, false);
  }

  private static boolean endsWith(CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean)
  {
    boolean bool;
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
    {
      bool = false;
      if (paramCharSequence1 == null)
      {
        bool = false;
        if (paramCharSequence2 == null)
          bool = true;
      }
    }
    int i;
    int j;
    do
    {
      return bool;
      i = paramCharSequence2.length();
      j = paramCharSequence1.length();
      bool = false;
    }
    while (i > j);
    return CharSequenceUtils.regionMatches(paramCharSequence1, paramBoolean, paramCharSequence1.length() - paramCharSequence2.length(), paramCharSequence2, 0, paramCharSequence2.length());
  }

  public static boolean endsWithAny(CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence)
  {
    if ((isEmpty(paramCharSequence)) || (ArrayUtils.isEmpty(paramArrayOfCharSequence)));
    while (true)
    {
      return false;
      int i = paramArrayOfCharSequence.length;
      for (int j = 0; j < i; j++)
        if (endsWith(paramCharSequence, paramArrayOfCharSequence[j]))
          return true;
    }
  }

  public static boolean endsWithIgnoreCase(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return endsWith(paramCharSequence1, paramCharSequence2, true);
  }

  public static boolean equals(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (paramCharSequence1 == null)
      return paramCharSequence2 == null;
    return paramCharSequence1.equals(paramCharSequence2);
  }

  public static boolean equalsIgnoreCase(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      return paramCharSequence1 == paramCharSequence2;
    return CharSequenceUtils.regionMatches(paramCharSequence1, true, 0, paramCharSequence2, 0, Math.max(paramCharSequence1.length(), paramCharSequence2.length()));
  }

  public static String getCommonPrefix(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      return "";
    int i = indexOfDifference(paramArrayOfString);
    if (i == -1)
    {
      if (paramArrayOfString[0] == null)
        return "";
      return paramArrayOfString[0];
    }
    if (i == 0)
      return "";
    return paramArrayOfString[0].substring(0, i);
  }

  public static int getLevenshteinDistance(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      throw new IllegalArgumentException("Strings must not be null");
    int i = paramCharSequence1.length();
    int j = paramCharSequence2.length();
    if (i == 0)
      return j;
    if (j == 0)
      return i;
    int m;
    if (i > j)
      m = paramCharSequence1.length();
    while (true)
    {
      Object localObject1 = new int[j + 1];
      int[] arrayOfInt = new int[j + 1];
      for (int n = 0; n <= j; n++)
        localObject1[n] = n;
      int i1 = 1;
      Object localObject3;
      for (Object localObject2 = arrayOfInt; i1 <= m; localObject2 = localObject3)
      {
        int i2 = paramCharSequence1.charAt(i1 - 1);
        localObject2[0] = i1;
        int i3 = 1;
        if (i3 <= j)
        {
          if (paramCharSequence2.charAt(i3 - 1) == i2);
          for (int i4 = 0; ; i4 = 1)
          {
            localObject2[i3] = Math.min(Math.min(1 + localObject2[(i3 - 1)], 1 + localObject1[i3]), i4 + localObject1[(i3 - 1)]);
            i3++;
            break;
          }
        }
        i1++;
        localObject3 = localObject1;
        localObject1 = localObject2;
      }
      return localObject1[j];
      int k = j;
      j = i;
      m = k;
      CharSequence localCharSequence = paramCharSequence2;
      paramCharSequence2 = paramCharSequence1;
      paramCharSequence1 = localCharSequence;
    }
  }

  public static int getLevenshteinDistance(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      throw new IllegalArgumentException("Strings must not be null");
    if (paramInt < 0)
      throw new IllegalArgumentException("Threshold must not be negative");
    int i = paramCharSequence1.length();
    int j = paramCharSequence2.length();
    if (i == 0)
    {
      if (j <= paramInt)
        return j;
      return -1;
    }
    if (j == 0)
    {
      if (i <= paramInt)
        return i;
      return -1;
    }
    int m;
    if (i > j)
      m = paramCharSequence1.length();
    while (true)
    {
      Object localObject1 = new int[j + 1];
      Object localObject2 = new int[j + 1];
      int n = 1 + Math.min(j, paramInt);
      for (int i1 = 0; i1 < n; i1++)
        localObject1[i1] = i1;
      Arrays.fill((int[])localObject1, n, localObject1.length, 2147483647);
      Arrays.fill((int[])localObject2, 2147483647);
      int i2 = 1;
      while (i2 <= m)
      {
        int i3 = paramCharSequence1.charAt(i2 - 1);
        localObject2[0] = i2;
        int i4 = Math.max(1, i2 - paramInt);
        int i5 = Math.min(j, i2 + paramInt);
        if (i4 > i5)
          return -1;
        if (i4 > 1)
          localObject2[(i4 - 1)] = 2147483647;
        if (i4 <= i5)
        {
          if (paramCharSequence2.charAt(i4 - 1) == i3)
            localObject2[i4] = localObject1[(i4 - 1)];
          while (true)
          {
            i4++;
            break;
            localObject2[i4] = (1 + Math.min(Math.min(localObject2[(i4 - 1)], localObject1[i4]), localObject1[(i4 - 1)]));
          }
        }
        i2++;
        Object localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
      if (localObject1[j] <= paramInt)
        return localObject1[j];
      return -1;
      int k = j;
      j = i;
      m = k;
      CharSequence localCharSequence = paramCharSequence2;
      paramCharSequence2 = paramCharSequence1;
      paramCharSequence1 = localCharSequence;
    }
  }

  public static int indexOf(CharSequence paramCharSequence, int paramInt)
  {
    if (isEmpty(paramCharSequence))
      return -1;
    return CharSequenceUtils.indexOf(paramCharSequence, paramInt, 0);
  }

  public static int indexOf(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (isEmpty(paramCharSequence))
      return -1;
    return CharSequenceUtils.indexOf(paramCharSequence, paramInt1, paramInt2);
  }

  public static int indexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      return -1;
    return CharSequenceUtils.indexOf(paramCharSequence1, paramCharSequence2, 0);
  }

  public static int indexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      return -1;
    return CharSequenceUtils.indexOf(paramCharSequence1, paramCharSequence2, paramInt);
  }

  public static int indexOfAny(CharSequence paramCharSequence, String paramString)
  {
    if ((isEmpty(paramCharSequence)) || (isEmpty(paramString)))
      return -1;
    return indexOfAny(paramCharSequence, paramString.toCharArray());
  }

  public static int indexOfAny(CharSequence paramCharSequence, char[] paramArrayOfChar)
  {
    if ((isEmpty(paramCharSequence)) || (ArrayUtils.isEmpty(paramArrayOfChar)))
    {
      i = -1;
      return i;
    }
    int j = paramCharSequence.length();
    int k = j - 1;
    int m = paramArrayOfChar.length;
    int n = m - 1;
    label120: for (int i = 0; ; i++)
    {
      if (i >= j)
        break label126;
      char c = paramCharSequence.charAt(i);
      for (int i1 = 0; ; i1++)
      {
        if (i1 >= m)
          break label120;
        if ((paramArrayOfChar[i1] == c) && ((i >= k) || (i1 >= n) || (!Character.isHighSurrogate(c)) || (paramArrayOfChar[(i1 + 1)] == paramCharSequence.charAt(i + 1))))
          break;
      }
    }
    label126: return -1;
  }

  public static int indexOfAny(CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence)
  {
    if ((paramCharSequence == null) || (paramArrayOfCharSequence == null))
    {
      i = -1;
      return i;
    }
    int j = paramArrayOfCharSequence.length;
    int k = 0;
    int i = 2147483647;
    label21: int m;
    if (k < j)
    {
      CharSequence localCharSequence = paramArrayOfCharSequence[k];
      if (localCharSequence == null)
        break label76;
      m = CharSequenceUtils.indexOf(paramCharSequence, localCharSequence, 0);
      if ((m == -1) || (m >= i))
        break label76;
    }
    while (true)
    {
      k++;
      i = m;
      break label21;
      if (i != 2147483647)
        break;
      return -1;
      label76: m = i;
    }
  }

  public static int indexOfAnyBut(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    int i;
    if ((isEmpty(paramCharSequence1)) || (isEmpty(paramCharSequence2)))
      i = -1;
    int k;
    label54: 
    do
    {
      return i;
      int j = paramCharSequence1.length();
      i = 0;
      if (i >= j)
        break label114;
      char c = paramCharSequence1.charAt(i);
      if (CharSequenceUtils.indexOf(paramCharSequence2, c, 0) < 0)
        break;
      k = 1;
      if ((i + 1 >= j) || (!Character.isHighSurrogate(c)))
        break label107;
      m = paramCharSequence1.charAt(i + 1);
    }
    while ((k != 0) && (CharSequenceUtils.indexOf(paramCharSequence2, m, 0) < 0));
    label107: 
    while (k != 0)
    {
      int m;
      i++;
      break;
      k = 0;
      break label54;
    }
    return i;
    label114: return -1;
  }

  public static int indexOfAnyBut(CharSequence paramCharSequence, char[] paramArrayOfChar)
  {
    if ((isEmpty(paramCharSequence)) || (ArrayUtils.isEmpty(paramArrayOfChar)))
    {
      i = -1;
      return i;
    }
    int j = paramCharSequence.length();
    int k = j - 1;
    int m = paramArrayOfChar.length;
    int n = m - 1;
    label120: for (int i = 0; ; i++)
    {
      if (i >= j)
        break label126;
      char c = paramCharSequence.charAt(i);
      for (int i1 = 0; i1 < m; i1++)
        if ((paramArrayOfChar[i1] == c) && ((i >= k) || (i1 >= n) || (!Character.isHighSurrogate(c)) || (paramArrayOfChar[(i1 + 1)] == paramCharSequence.charAt(i + 1))))
          break label120;
      break;
    }
    label126: return -1;
  }

  public static int indexOfDifference(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    int i;
    if (paramCharSequence1 == paramCharSequence2)
      i = -1;
    do
    {
      do
      {
        do
        {
          return i;
          i = 0;
        }
        while (paramCharSequence1 == null);
        i = 0;
      }
      while (paramCharSequence2 == null);
      while ((i < paramCharSequence1.length()) && (i < paramCharSequence2.length()) && (paramCharSequence1.charAt(i) == paramCharSequence2.charAt(i)))
        i++;
    }
    while ((i < paramCharSequence2.length()) || (i < paramCharSequence1.length()));
    return -1;
  }

  public static int indexOfDifference(CharSequence[] paramArrayOfCharSequence)
  {
    int i;
    if ((paramArrayOfCharSequence == null) || (paramArrayOfCharSequence.length <= 1))
      i = -1;
    int k;
    int n;
    label211: 
    do
    {
      int j;
      do
      {
        return i;
        j = paramArrayOfCharSequence.length;
        k = 2147483647;
        int m = 0;
        n = 0;
        int i1 = 1;
        int i2 = 0;
        if (m < j)
        {
          int i9;
          int i8;
          int i7;
          if (paramArrayOfCharSequence[m] == null)
          {
            i9 = i1;
            i8 = 1;
            i7 = 0;
          }
          while (true)
          {
            m++;
            int i10 = i7;
            i1 = i9;
            i2 = i8;
            k = i10;
            break;
            i7 = Math.min(paramArrayOfCharSequence[m].length(), k);
            n = Math.max(paramArrayOfCharSequence[m].length(), n);
            i8 = i2;
            i9 = 0;
          }
        }
        if ((i1 != 0) || ((n == 0) && (i2 == 0)))
          return -1;
        i = 0;
      }
      while (k == 0);
      int i3 = -1;
      int i4 = 0;
      if (i4 < k)
      {
        int i5 = paramArrayOfCharSequence[0].charAt(i4);
        for (int i6 = 1; ; i6++)
          if (i6 < j)
          {
            if (paramArrayOfCharSequence[i6].charAt(i4) != i5)
              i3 = i4;
          }
          else
          {
            if (i3 != -1)
              break label211;
            i4++;
            break;
          }
      }
      i = i3;
    }
    while ((i != -1) || (k == n));
    return k;
  }

  public static int indexOfIgnoreCase(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return indexOfIgnoreCase(paramCharSequence1, paramCharSequence2, 0);
  }

  public static int indexOfIgnoreCase(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      paramInt = -1;
    int i;
    do
    {
      return paramInt;
      if (paramInt < 0)
        paramInt = 0;
      i = 1 + (paramCharSequence1.length() - paramCharSequence2.length());
      if (paramInt > i)
        return -1;
    }
    while (paramCharSequence2.length() == 0);
    for (int j = paramInt; j < i; j++)
      if (CharSequenceUtils.regionMatches(paramCharSequence1, true, j, paramCharSequence2, 0, paramCharSequence2.length()))
        return j;
    return -1;
  }

  public static boolean isAllLowerCase(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (isEmpty(paramCharSequence)))
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label46;
      if (!Character.isLowerCase(paramCharSequence.charAt(j)))
        break;
    }
    label46: return true;
  }

  public static boolean isAllUpperCase(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (isEmpty(paramCharSequence)))
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label46;
      if (!Character.isUpperCase(paramCharSequence.charAt(j)))
        break;
    }
    label46: return true;
  }

  public static boolean isAlpha(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (paramCharSequence.length() == 0))
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label48;
      if (!Character.isLetter(paramCharSequence.charAt(j)))
        break;
    }
    label48: return true;
  }

  public static boolean isAlphaSpace(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label51;
      if ((!Character.isLetter(paramCharSequence.charAt(j))) && (paramCharSequence.charAt(j) != ' '))
        break;
    }
    label51: return true;
  }

  public static boolean isAlphanumeric(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (paramCharSequence.length() == 0))
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label48;
      if (!Character.isLetterOrDigit(paramCharSequence.charAt(j)))
        break;
    }
    label48: return true;
  }

  public static boolean isAlphanumericSpace(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label51;
      if ((!Character.isLetterOrDigit(paramCharSequence.charAt(j))) && (paramCharSequence.charAt(j) != ' '))
        break;
    }
    label51: return true;
  }

  public static boolean isAsciiPrintable(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label39;
      if (!CharUtils.isAsciiPrintable(paramCharSequence.charAt(j)))
        break;
    }
    label39: return true;
  }

  public static boolean isBlank(CharSequence paramCharSequence)
  {
    int i;
    boolean bool1;
    if (paramCharSequence != null)
    {
      i = paramCharSequence.length();
      if (i != 0);
    }
    else
    {
      bool1 = true;
      return bool1;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label51;
      boolean bool2 = Character.isWhitespace(paramCharSequence.charAt(j));
      bool1 = false;
      if (!bool2)
        break;
    }
    label51: return true;
  }

  public static boolean isEmpty(CharSequence paramCharSequence)
  {
    return (paramCharSequence == null) || (paramCharSequence.length() == 0);
  }

  public static boolean isNotBlank(CharSequence paramCharSequence)
  {
    return !isBlank(paramCharSequence);
  }

  public static boolean isNotEmpty(CharSequence paramCharSequence)
  {
    return !isEmpty(paramCharSequence);
  }

  public static boolean isNumeric(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (paramCharSequence.length() == 0))
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label48;
      if (!Character.isDigit(paramCharSequence.charAt(j)))
        break;
    }
    label48: return true;
  }

  public static boolean isNumericSpace(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label51;
      if ((!Character.isDigit(paramCharSequence.charAt(j))) && (paramCharSequence.charAt(j) != ' '))
        break;
    }
    label51: return true;
  }

  public static boolean isWhitespace(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return false;
    int i = paramCharSequence.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label39;
      if (!Character.isWhitespace(paramCharSequence.charAt(j)))
        break;
    }
    label39: return true;
  }

  public static String join(Iterable paramIterable, char paramChar)
  {
    if (paramIterable == null)
      return null;
    return join(paramIterable.iterator(), paramChar);
  }

  public static String join(Iterable paramIterable, String paramString)
  {
    if (paramIterable == null)
      return null;
    return join(paramIterable.iterator(), paramString);
  }

  public static String join(Iterator paramIterator, char paramChar)
  {
    if (paramIterator == null)
      return null;
    if (!paramIterator.hasNext())
      return "";
    Object localObject1 = paramIterator.next();
    if (!paramIterator.hasNext())
      return ObjectUtils.toString(localObject1);
    StringBuilder localStringBuilder = new StringBuilder(256);
    if (localObject1 != null)
      localStringBuilder.append(localObject1);
    while (paramIterator.hasNext())
    {
      localStringBuilder.append(paramChar);
      Object localObject2 = paramIterator.next();
      if (localObject2 != null)
        localStringBuilder.append(localObject2);
    }
    return localStringBuilder.toString();
  }

  public static String join(Iterator paramIterator, String paramString)
  {
    if (paramIterator == null)
      return null;
    if (!paramIterator.hasNext())
      return "";
    Object localObject1 = paramIterator.next();
    if (!paramIterator.hasNext())
      return ObjectUtils.toString(localObject1);
    StringBuilder localStringBuilder = new StringBuilder(256);
    if (localObject1 != null)
      localStringBuilder.append(localObject1);
    while (paramIterator.hasNext())
    {
      if (paramString != null)
        localStringBuilder.append(paramString);
      Object localObject2 = paramIterator.next();
      if (localObject2 != null)
        localStringBuilder.append(localObject2);
    }
    return localStringBuilder.toString();
  }

  public static String join(Object[] paramArrayOfObject)
  {
    return join(paramArrayOfObject, null);
  }

  public static String join(Object[] paramArrayOfObject, char paramChar)
  {
    if (paramArrayOfObject == null)
      return null;
    return join(paramArrayOfObject, paramChar, 0, paramArrayOfObject.length);
  }

  public static String join(Object[] paramArrayOfObject, char paramChar, int paramInt1, int paramInt2)
  {
    if (paramArrayOfObject == null)
      return null;
    int i = paramInt2 - paramInt1;
    if (i <= 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(i * 16);
    for (int j = paramInt1; j < paramInt2; j++)
    {
      if (j > paramInt1)
        localStringBuilder.append(paramChar);
      if (paramArrayOfObject[j] != null)
        localStringBuilder.append(paramArrayOfObject[j]);
    }
    return localStringBuilder.toString();
  }

  public static String join(Object[] paramArrayOfObject, String paramString)
  {
    if (paramArrayOfObject == null)
      return null;
    return join(paramArrayOfObject, paramString, 0, paramArrayOfObject.length);
  }

  public static String join(Object[] paramArrayOfObject, String paramString, int paramInt1, int paramInt2)
  {
    if (paramArrayOfObject == null)
      return null;
    if (paramString == null)
      paramString = "";
    int i = paramInt2 - paramInt1;
    if (i <= 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(i * 16);
    for (int j = paramInt1; j < paramInt2; j++)
    {
      if (j > paramInt1)
        localStringBuilder.append(paramString);
      if (paramArrayOfObject[j] != null)
        localStringBuilder.append(paramArrayOfObject[j]);
    }
    return localStringBuilder.toString();
  }

  public static int lastIndexOf(CharSequence paramCharSequence, int paramInt)
  {
    if (isEmpty(paramCharSequence))
      return -1;
    return CharSequenceUtils.lastIndexOf(paramCharSequence, paramInt, paramCharSequence.length());
  }

  public static int lastIndexOf(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (isEmpty(paramCharSequence))
      return -1;
    return CharSequenceUtils.lastIndexOf(paramCharSequence, paramInt1, paramInt2);
  }

  public static int lastIndexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      return -1;
    return CharSequenceUtils.lastIndexOf(paramCharSequence1, paramCharSequence2, paramCharSequence1.length());
  }

  public static int lastIndexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      return -1;
    return CharSequenceUtils.lastIndexOf(paramCharSequence1, paramCharSequence2, paramInt);
  }

  public static int lastIndexOfAny(CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence)
  {
    int i = -1;
    if ((paramCharSequence == null) || (paramArrayOfCharSequence == null))
      return i;
    int j = paramArrayOfCharSequence.length;
    int k = 0;
    label18: int m;
    if (k < j)
    {
      CharSequence localCharSequence = paramArrayOfCharSequence[k];
      if (localCharSequence == null)
        break label64;
      m = CharSequenceUtils.lastIndexOf(paramCharSequence, localCharSequence, paramCharSequence.length());
      if (m <= i)
        break label64;
    }
    while (true)
    {
      k++;
      i = m;
      break label18;
      break;
      label64: m = i;
    }
  }

  public static int lastIndexOfIgnoreCase(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
      return -1;
    return lastIndexOfIgnoreCase(paramCharSequence1, paramCharSequence2, paramCharSequence1.length());
  }

  public static int lastIndexOfIgnoreCase(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
    {
      i = -1;
      return i;
    }
    if (paramInt > paramCharSequence1.length() - paramCharSequence2.length());
    for (int i = paramCharSequence1.length() - paramCharSequence2.length(); ; i = paramInt)
    {
      if (i < 0)
        return -1;
      if (paramCharSequence2.length() == 0)
        break;
      while (true)
      {
        if (i < 0)
          break label85;
        if (CharSequenceUtils.regionMatches(paramCharSequence1, true, i, paramCharSequence2, 0, paramCharSequence2.length()))
          break;
        i--;
      }
      label85: return -1;
    }
  }

  public static int lastOrdinalIndexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    return ordinalIndexOf(paramCharSequence1, paramCharSequence2, paramInt, true);
  }

  public static String left(String paramString, int paramInt)
  {
    if (paramString == null)
      paramString = null;
    do
    {
      return paramString;
      if (paramInt < 0)
        return "";
    }
    while (paramString.length() <= paramInt);
    return paramString.substring(0, paramInt);
  }

  public static String leftPad(String paramString, int paramInt)
  {
    return leftPad(paramString, paramInt, ' ');
  }

  public static String leftPad(String paramString, int paramInt, char paramChar)
  {
    if (paramString == null)
      paramString = null;
    int i;
    do
    {
      return paramString;
      i = paramInt - paramString.length();
    }
    while (i <= 0);
    if (i > 8192)
      return leftPad(paramString, paramInt, String.valueOf(paramChar));
    return repeat(paramChar, i).concat(paramString);
  }

  public static String leftPad(String paramString1, int paramInt, String paramString2)
  {
    int i = 0;
    if (paramString1 == null)
      paramString1 = null;
    int j;
    int k;
    do
    {
      return paramString1;
      if (isEmpty(paramString2))
        paramString2 = " ";
      j = paramString2.length();
      k = paramInt - paramString1.length();
    }
    while (k <= 0);
    if ((j == 1) && (k <= 8192))
      return leftPad(paramString1, paramInt, paramString2.charAt(0));
    if (k == j)
      return paramString2.concat(paramString1);
    if (k < j)
      return paramString2.substring(0, k).concat(paramString1);
    char[] arrayOfChar1 = new char[k];
    char[] arrayOfChar2 = paramString2.toCharArray();
    while (i < k)
    {
      arrayOfChar1[i] = arrayOfChar2[(i % j)];
      i++;
    }
    return new String(arrayOfChar1).concat(paramString1);
  }

  public static int length(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return 0;
    return paramCharSequence.length();
  }

  public static String lowerCase(String paramString)
  {
    if (paramString == null)
      return null;
    return paramString.toLowerCase();
  }

  public static String lowerCase(String paramString, Locale paramLocale)
  {
    if (paramString == null)
      return null;
    return paramString.toLowerCase(paramLocale);
  }

  public static String mid(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null)
      return null;
    if ((paramInt2 < 0) || (paramInt1 > paramString.length()))
      return "";
    if (paramInt1 < 0)
      paramInt1 = 0;
    if (paramString.length() <= paramInt1 + paramInt2)
      return paramString.substring(paramInt1);
    return paramString.substring(paramInt1, paramInt1 + paramInt2);
  }

  public static String normalizeSpace(String paramString)
  {
    if (paramString == null)
      return null;
    return WHITESPACE_BLOCK.matcher(trim(paramString)).replaceAll(" ");
  }

  public static int ordinalIndexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    return ordinalIndexOf(paramCharSequence1, paramCharSequence2, paramInt, false);
  }

  private static int ordinalIndexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt, boolean paramBoolean)
  {
    int i = -1;
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null) || (paramInt <= 0));
    label99: 
    while (true)
    {
      return i;
      if (paramCharSequence2.length() == 0)
      {
        if (paramBoolean)
          return paramCharSequence1.length();
        return 0;
      }
      int j = 0;
      if (paramBoolean)
        i = paramCharSequence1.length();
      if (paramBoolean);
      for (i = CharSequenceUtils.lastIndexOf(paramCharSequence1, paramCharSequence2, i - 1); ; i = CharSequenceUtils.indexOf(paramCharSequence1, paramCharSequence2, i + 1))
      {
        if (i < 0)
          break label99;
        j++;
        if (j < paramInt)
          break;
        return i;
      }
    }
  }

  public static String overlay(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    if (paramString1 == null)
      return null;
    if (paramString2 == null)
      paramString2 = "";
    int i = paramString1.length();
    if (paramInt1 < 0);
    for (int j = 0; ; j = paramInt1)
    {
      if (j > i)
        j = i;
      if (paramInt2 < 0);
      for (int k = 0; ; k = paramInt2)
      {
        if (k > i)
          k = i;
        if (j > k);
        while (true)
        {
          return 1 + (i + k - j + paramString2.length()) + paramString1.substring(0, k) + paramString2 + paramString1.substring(j);
          int m = k;
          k = j;
          j = m;
        }
      }
    }
  }

  public static String remove(String paramString, char paramChar)
  {
    if ((isEmpty(paramString)) || (paramString.indexOf(paramChar) == -1))
      return paramString;
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    int j = 0;
    while (i < arrayOfChar.length)
    {
      if (arrayOfChar[i] != paramChar)
      {
        int k = j + 1;
        arrayOfChar[j] = arrayOfChar[i];
        j = k;
      }
      i++;
    }
    return new String(arrayOfChar, 0, j);
  }

  public static String remove(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)))
      return paramString1;
    return replace(paramString1, paramString2, "", -1);
  }

  private static String removeAccentsJava6(CharSequence paramCharSequence)
  {
    if ((StringUtils.InitStripAccents.access$000() == null) || (StringUtils.InitStripAccents.access$400() == null))
      throw new IllegalStateException("java.text.Normalizer is not available", StringUtils.InitStripAccents.access$200());
    Method localMethod = StringUtils.InitStripAccents.access$000();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramCharSequence;
    arrayOfObject[1] = StringUtils.InitStripAccents.access$400();
    String str = (String)localMethod.invoke(null, arrayOfObject);
    return StringUtils.InitStripAccents.access$500().matcher(str).replaceAll("");
  }

  private static String removeAccentsSUN(CharSequence paramCharSequence)
  {
    if (StringUtils.InitStripAccents.access$100() == null)
      throw new IllegalStateException("sun.text.Normalizer is not available", StringUtils.InitStripAccents.access$300());
    Method localMethod = StringUtils.InitStripAccents.access$100();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramCharSequence;
    arrayOfObject[1] = Boolean.FALSE;
    arrayOfObject[2] = Integer.valueOf(0);
    String str = (String)localMethod.invoke(null, arrayOfObject);
    return StringUtils.InitStripAccents.access$600().matcher(str).replaceAll("");
  }

  public static String removeEnd(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)));
    while (!paramString1.endsWith(paramString2))
      return paramString1;
    return paramString1.substring(0, paramString1.length() - paramString2.length());
  }

  public static String removeEndIgnoreCase(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)));
    while (!endsWithIgnoreCase(paramString1, paramString2))
      return paramString1;
    return paramString1.substring(0, paramString1.length() - paramString2.length());
  }

  public static String removeStart(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)));
    while (!paramString1.startsWith(paramString2))
      return paramString1;
    return paramString1.substring(paramString2.length());
  }

  public static String removeStartIgnoreCase(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)));
    while (!startsWithIgnoreCase(paramString1, paramString2))
      return paramString1;
    return paramString1.substring(paramString2.length());
  }

  public static String repeat(char paramChar, int paramInt)
  {
    char[] arrayOfChar = new char[paramInt];
    for (int i = paramInt - 1; i >= 0; i--)
      arrayOfChar[i] = paramChar;
    return new String(arrayOfChar);
  }

  public static String repeat(String paramString, int paramInt)
  {
    int i = 0;
    if (paramString == null)
      paramString = null;
    int j;
    do
    {
      return paramString;
      if (paramInt <= 0)
        return "";
      j = paramString.length();
    }
    while ((paramInt == 1) || (j == 0));
    if ((j == 1) && (paramInt <= 8192))
      return repeat(paramString.charAt(0), paramInt);
    int k = j * paramInt;
    StringBuilder localStringBuilder;
    switch (j)
    {
    default:
      localStringBuilder = new StringBuilder(k);
    case 1:
    case 2:
    }
    while (i < paramInt)
    {
      localStringBuilder.append(paramString);
      i++;
      continue;
      return repeat(paramString.charAt(0), paramInt);
      int m = paramString.charAt(0);
      int n = paramString.charAt(1);
      char[] arrayOfChar = new char[k];
      for (int i1 = -2 + paramInt * 2; i1 >= 0; i1 = -1 + (i1 - 1))
      {
        arrayOfChar[i1] = m;
        arrayOfChar[(i1 + 1)] = n;
      }
      return new String(arrayOfChar);
    }
    return localStringBuilder.toString();
  }

  public static String repeat(String paramString1, String paramString2, int paramInt)
  {
    if ((paramString1 == null) || (paramString2 == null))
      return repeat(paramString1, paramInt);
    return removeEnd(repeat(paramString1 + paramString2, paramInt), paramString2);
  }

  public static String replace(String paramString1, String paramString2, String paramString3)
  {
    return replace(paramString1, paramString2, paramString3, -1);
  }

  public static String replace(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    int i = 64;
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)) || (paramString3 == null) || (paramInt == 0));
    int j;
    do
    {
      return paramString1;
      j = paramString1.indexOf(paramString2, 0);
    }
    while (j == -1);
    int k = paramString2.length();
    int m = paramString3.length() - k;
    if (m < 0)
      m = 0;
    if (paramInt < 0)
      i = 16;
    StringBuilder localStringBuilder;
    int n;
    while (true)
    {
      localStringBuilder = new StringBuilder(i * m + paramString1.length());
      n = 0;
      while (j != -1)
      {
        localStringBuilder.append(paramString1.substring(n, j)).append(paramString3);
        n = j + k;
        paramInt--;
        if (paramInt == 0)
          break;
        j = paramString1.indexOf(paramString2, n);
      }
      if (paramInt <= i)
        i = paramInt;
    }
    localStringBuilder.append(paramString1.substring(n));
    return localStringBuilder.toString();
  }

  public static String replaceChars(String paramString, char paramChar1, char paramChar2)
  {
    if (paramString == null)
      return null;
    return paramString.replace(paramChar1, paramChar2);
  }

  public static String replaceChars(String paramString1, String paramString2, String paramString3)
  {
    int i = 0;
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)));
    StringBuilder localStringBuilder;
    do
    {
      return paramString1;
      if (paramString3 == null)
        paramString3 = "";
      int j = paramString3.length();
      int k = paramString1.length();
      localStringBuilder = new StringBuilder(k);
      int m = 0;
      if (m < k)
      {
        char c = paramString1.charAt(m);
        int n = paramString2.indexOf(c);
        if (n >= 0)
        {
          i = 1;
          if (n < j)
            localStringBuilder.append(paramString3.charAt(n));
        }
        while (true)
        {
          m++;
          break;
          localStringBuilder.append(c);
        }
      }
    }
    while (i == 0);
    return localStringBuilder.toString();
  }

  public static String replaceEach(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    return replaceEach(paramString, paramArrayOfString1, paramArrayOfString2, false, 0);
  }

  private static String replaceEach(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2, boolean paramBoolean, int paramInt)
  {
    Object localObject2;
    for (Object localObject1 = paramString; ; localObject1 = localObject2)
    {
      if ((localObject1 == null) || (((String)localObject1).length() == 0) || (paramArrayOfString1 == null) || (paramArrayOfString1.length == 0) || (paramArrayOfString2 == null) || (paramArrayOfString2.length == 0))
        localObject2 = localObject1;
      label192: label456: 
      do
      {
        return localObject2;
        if (paramInt < 0)
          throw new IllegalStateException("Aborting to protect against StackOverflowError - output of one loop is the input of another");
        int i = paramArrayOfString1.length;
        int j = paramArrayOfString2.length;
        if (i != j)
          throw new IllegalArgumentException("Search and Replace array lengths don't match: " + i + " vs " + j);
        boolean[] arrayOfBoolean = new boolean[i];
        int k = -1;
        int m = -1;
        int n = 0;
        if (n < i)
        {
          int i11;
          if ((arrayOfBoolean[n] == 0) && (paramArrayOfString1[n] != null) && (paramArrayOfString1[n].length() != 0) && (paramArrayOfString2[n] != null))
          {
            i11 = ((String)localObject1).indexOf(paramArrayOfString1[n]);
            if (i11 != -1)
              break label192;
            arrayOfBoolean[n] = true;
          }
          while (true)
          {
            n++;
            break;
            if ((k == -1) || (i11 < k))
            {
              m = n;
              k = i11;
            }
          }
        }
        if (k == -1)
          return localObject1;
        int i1 = 0;
        for (int i2 = 0; i2 < paramArrayOfString1.length; i2++)
          if ((paramArrayOfString1[i2] != null) && (paramArrayOfString2[i2] != null))
          {
            int i10 = paramArrayOfString2[i2].length() - paramArrayOfString1[i2].length();
            if (i10 > 0)
              i1 += i10 * 3;
          }
        StringBuilder localStringBuilder = new StringBuilder(Math.min(i1, ((String)localObject1).length() / 5) + ((String)localObject1).length());
        int i3 = m;
        int i6;
        for (int i4 = 0; k != -1; i4 = i6)
        {
          while (i4 < k)
          {
            localStringBuilder.append(((String)localObject1).charAt(i4));
            i4++;
          }
          localStringBuilder.append(paramArrayOfString2[i3]);
          i6 = k + paramArrayOfString1[i3].length();
          k = -1;
          int i7 = -1;
          int i8 = 0;
          if (i8 < i)
          {
            int i9;
            if ((arrayOfBoolean[i8] == 0) && (paramArrayOfString1[i8] != null) && (paramArrayOfString1[i8].length() != 0) && (paramArrayOfString2[i8] != null))
            {
              i9 = ((String)localObject1).indexOf(paramArrayOfString1[i8], i6);
              if (i9 != -1)
                break label456;
              arrayOfBoolean[i8] = true;
            }
            while (true)
            {
              i8++;
              break;
              if ((k == -1) || (i9 < k))
              {
                i7 = i8;
                k = i9;
              }
            }
          }
          i3 = i7;
        }
        int i5 = ((String)localObject1).length();
        while (i4 < i5)
        {
          localStringBuilder.append(((String)localObject1).charAt(i4));
          i4++;
        }
        localObject2 = localStringBuilder.toString();
      }
      while (!paramBoolean);
      paramInt--;
    }
  }

  public static String replaceEachRepeatedly(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    if (paramArrayOfString1 == null);
    for (int i = 0; ; i = paramArrayOfString1.length)
      return replaceEach(paramString, paramArrayOfString1, paramArrayOfString2, true, i);
  }

  public static String replaceOnce(String paramString1, String paramString2, String paramString3)
  {
    return replace(paramString1, paramString2, paramString3, 1);
  }

  public static String reverse(String paramString)
  {
    if (paramString == null)
      return null;
    return new StringBuilder(paramString).reverse().toString();
  }

  public static String reverseDelimited(String paramString, char paramChar)
  {
    if (paramString == null)
      return null;
    String[] arrayOfString = split(paramString, paramChar);
    ArrayUtils.reverse(arrayOfString);
    return join(arrayOfString, paramChar);
  }

  public static String right(String paramString, int paramInt)
  {
    if (paramString == null)
      paramString = null;
    do
    {
      return paramString;
      if (paramInt < 0)
        return "";
    }
    while (paramString.length() <= paramInt);
    return paramString.substring(paramString.length() - paramInt);
  }

  public static String rightPad(String paramString, int paramInt)
  {
    return rightPad(paramString, paramInt, ' ');
  }

  public static String rightPad(String paramString, int paramInt, char paramChar)
  {
    if (paramString == null)
      paramString = null;
    int i;
    do
    {
      return paramString;
      i = paramInt - paramString.length();
    }
    while (i <= 0);
    if (i > 8192)
      return rightPad(paramString, paramInt, String.valueOf(paramChar));
    return paramString.concat(repeat(paramChar, i));
  }

  public static String rightPad(String paramString1, int paramInt, String paramString2)
  {
    int i = 0;
    if (paramString1 == null)
      paramString1 = null;
    int j;
    int k;
    do
    {
      return paramString1;
      if (isEmpty(paramString2))
        paramString2 = " ";
      j = paramString2.length();
      k = paramInt - paramString1.length();
    }
    while (k <= 0);
    if ((j == 1) && (k <= 8192))
      return rightPad(paramString1, paramInt, paramString2.charAt(0));
    if (k == j)
      return paramString1.concat(paramString2);
    if (k < j)
      return paramString1.concat(paramString2.substring(0, k));
    char[] arrayOfChar1 = new char[k];
    char[] arrayOfChar2 = paramString2.toCharArray();
    while (i < k)
    {
      arrayOfChar1[i] = arrayOfChar2[(i % j)];
      i++;
    }
    return paramString1.concat(new String(arrayOfChar1));
  }

  public static String[] split(String paramString)
  {
    return split(paramString, null, -1);
  }

  public static String[] split(String paramString, char paramChar)
  {
    return splitWorker(paramString, paramChar, false);
  }

  public static String[] split(String paramString1, String paramString2)
  {
    return splitWorker(paramString1, paramString2, -1, false);
  }

  public static String[] split(String paramString1, String paramString2, int paramInt)
  {
    return splitWorker(paramString1, paramString2, paramInt, false);
  }

  public static String[] splitByCharacterType(String paramString)
  {
    return splitByCharacterType(paramString, false);
  }

  private static String[] splitByCharacterType(String paramString, boolean paramBoolean)
  {
    if (paramString == null)
      return null;
    if (paramString.length() == 0)
      return ArrayUtils.EMPTY_STRING_ARRAY;
    char[] arrayOfChar = paramString.toCharArray();
    ArrayList localArrayList = new ArrayList();
    int i = Character.getType(arrayOfChar[0]);
    int j = 0;
    int k = i;
    int m = 1;
    if (m < arrayOfChar.length)
    {
      int n = Character.getType(arrayOfChar[m]);
      int i1;
      if (n != k)
      {
        if ((!paramBoolean) || (n != 2) || (k != 1))
          break label136;
        i1 = m - 1;
        if (i1 != j)
          localArrayList.add(new String(arrayOfChar, j, i1 - j));
      }
      for (j = i1; ; j = m)
      {
        k = n;
        m++;
        break;
        label136: localArrayList.add(new String(arrayOfChar, j, m - j));
      }
    }
    localArrayList.add(new String(arrayOfChar, j, arrayOfChar.length - j));
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }

  public static String[] splitByCharacterTypeCamelCase(String paramString)
  {
    return splitByCharacterType(paramString, true);
  }

  public static String[] splitByWholeSeparator(String paramString1, String paramString2)
  {
    return splitByWholeSeparatorWorker(paramString1, paramString2, -1, false);
  }

  public static String[] splitByWholeSeparator(String paramString1, String paramString2, int paramInt)
  {
    return splitByWholeSeparatorWorker(paramString1, paramString2, paramInt, false);
  }

  public static String[] splitByWholeSeparatorPreserveAllTokens(String paramString1, String paramString2)
  {
    return splitByWholeSeparatorWorker(paramString1, paramString2, -1, true);
  }

  public static String[] splitByWholeSeparatorPreserveAllTokens(String paramString1, String paramString2, int paramInt)
  {
    return splitByWholeSeparatorWorker(paramString1, paramString2, paramInt, true);
  }

  private static String[] splitByWholeSeparatorWorker(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    int i = 0;
    if (paramString1 == null)
      return null;
    int j = paramString1.length();
    if (j == 0)
      return ArrayUtils.EMPTY_STRING_ARRAY;
    if ((paramString2 == null) || ("".equals(paramString2)))
      return splitWorker(paramString1, null, paramInt, paramBoolean);
    int k = paramString2.length();
    ArrayList localArrayList = new ArrayList();
    int m = 0;
    int n = 0;
    while (m < j)
    {
      m = paramString1.indexOf(paramString2, n);
      if (m >= 0)
      {
        if (m > n)
        {
          int i1 = i + 1;
          if (i1 == paramInt)
          {
            localArrayList.add(paramString1.substring(n));
            m = j;
            i = i1;
          }
          else
          {
            localArrayList.add(paramString1.substring(n, m));
            n = m + k;
            i = i1;
          }
        }
        else
        {
          if (paramBoolean)
          {
            i++;
            if (i != paramInt)
              break label196;
            localArrayList.add(paramString1.substring(n));
            m = j;
          }
          while (true)
          {
            n = m + k;
            break;
            label196: localArrayList.add("");
          }
        }
      }
      else
      {
        localArrayList.add(paramString1.substring(n));
        m = j;
      }
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }

  public static String[] splitPreserveAllTokens(String paramString)
  {
    return splitWorker(paramString, null, -1, true);
  }

  public static String[] splitPreserveAllTokens(String paramString, char paramChar)
  {
    return splitWorker(paramString, paramChar, true);
  }

  public static String[] splitPreserveAllTokens(String paramString1, String paramString2)
  {
    return splitWorker(paramString1, paramString2, -1, true);
  }

  public static String[] splitPreserveAllTokens(String paramString1, String paramString2, int paramInt)
  {
    return splitWorker(paramString1, paramString2, paramInt, true);
  }

  private static String[] splitWorker(String paramString, char paramChar, boolean paramBoolean)
  {
    if (paramString == null)
      return null;
    int i = paramString.length();
    if (i == 0)
      return ArrayUtils.EMPTY_STRING_ARRAY;
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    while (n < i)
      if (paramString.charAt(n) == paramChar)
      {
        if ((k != 0) || (paramBoolean))
        {
          localArrayList.add(paramString.substring(m, n));
          j = 1;
          k = 0;
        }
        m = n + 1;
        n = m;
      }
      else
      {
        int i1 = n + 1;
        k = 1;
        n = i1;
        j = 0;
      }
    if ((k != 0) || ((paramBoolean) && (j != 0)))
      localArrayList.add(paramString.substring(m, n));
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }

  private static String[] splitWorker(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    if (paramString1 == null)
      return null;
    int i = paramString1.length();
    if (i == 0)
      return ArrayUtils.EMPTY_STRING_ARRAY;
    ArrayList localArrayList = new ArrayList();
    int m;
    int n;
    int i1;
    int k;
    int i23;
    int i22;
    label96: int i24;
    int i25;
    if (paramString2 == null)
    {
      m = 0;
      n = 0;
      i1 = 0;
      k = 0;
      int i20 = 1;
      if (k >= i)
        break label488;
      if (Character.isWhitespace(paramString1.charAt(k)))
      {
        if ((n == 0) && (!paramBoolean))
          break label556;
        int i21 = i20 + 1;
        if (i20 != paramInt)
          break label546;
        i23 = 0;
        i22 = i;
        localArrayList.add(paramString1.substring(i1, i22));
        i20 = i21;
        i24 = i22;
        i25 = 0;
      }
    }
    while (true)
    {
      i1 = i24 + 1;
      n = i25;
      m = i23;
      k = i1;
      break;
      k++;
      n = 1;
      m = 0;
      break;
      int i12;
      int i16;
      int i15;
      int i17;
      int i18;
      label259: int i2;
      int i3;
      if (paramString2.length() == 1)
      {
        int i10 = paramString2.charAt(0);
        m = 0;
        n = 0;
        int i11 = 0;
        i12 = 0;
        int i13 = 1;
        while (i12 < i)
          if (paramString1.charAt(i12) == i10)
          {
            if ((n == 0) && (!paramBoolean))
              break label509;
            int i14 = i13 + 1;
            if (i13 != paramInt)
              break label499;
            i16 = 0;
            i15 = i;
            localArrayList.add(paramString1.substring(i11, i15));
            i13 = i14;
            i17 = i15;
            i18 = 0;
            i11 = i17 + 1;
            n = i18;
            m = i16;
            i12 = i11;
          }
          else
          {
            i12++;
            n = 1;
            m = 0;
          }
        i2 = i12;
        i3 = i11;
        label300: if ((n != 0) || ((paramBoolean) && (m != 0)))
          localArrayList.add(paramString1.substring(i3, i2));
        return (String[])localArrayList.toArray(new String[localArrayList.size()]);
      }
      while (true)
      {
        if (k < i)
        {
          int i6;
          int i5;
          label399: int i7;
          int i8;
          if (paramString2.indexOf(paramString1.charAt(k)) >= 0)
          {
            if ((n == 0) && (!paramBoolean))
              break label469;
            int i4 = j + 1;
            if (j != paramInt)
              break label459;
            i6 = 0;
            i5 = i;
            localArrayList.add(paramString1.substring(i1, i5));
            j = i4;
            i7 = i5;
            i8 = 0;
          }
          while (true)
          {
            i1 = i7 + 1;
            n = i8;
            m = i6;
            k = i1;
            break;
            k++;
            n = 1;
            m = 0;
            break;
            label459: i5 = k;
            i6 = 1;
            break label399;
            label469: int i9 = m;
            i8 = n;
            i7 = k;
            i6 = i9;
          }
        }
        label488: i2 = k;
        i3 = i1;
        break label300;
        label499: i15 = i12;
        i16 = 1;
        break;
        label509: int i19 = m;
        i18 = n;
        i17 = i12;
        i16 = i19;
        break label259;
        int j = 1;
        k = 0;
        m = 0;
        n = 0;
        i1 = 0;
      }
      label546: i22 = k;
      i23 = 1;
      break label96;
      label556: int i26 = m;
      i25 = n;
      i24 = k;
      i23 = i26;
    }
  }

  public static boolean startsWith(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return startsWith(paramCharSequence1, paramCharSequence2, false);
  }

  private static boolean startsWith(CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean)
  {
    boolean bool;
    if ((paramCharSequence1 == null) || (paramCharSequence2 == null))
    {
      bool = false;
      if (paramCharSequence1 == null)
      {
        bool = false;
        if (paramCharSequence2 == null)
          bool = true;
      }
    }
    int i;
    int j;
    do
    {
      return bool;
      i = paramCharSequence2.length();
      j = paramCharSequence1.length();
      bool = false;
    }
    while (i > j);
    return CharSequenceUtils.regionMatches(paramCharSequence1, paramBoolean, 0, paramCharSequence2, 0, paramCharSequence2.length());
  }

  public static boolean startsWithAny(CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence)
  {
    if ((isEmpty(paramCharSequence)) || (ArrayUtils.isEmpty(paramArrayOfCharSequence)));
    while (true)
    {
      return false;
      int i = paramArrayOfCharSequence.length;
      for (int j = 0; j < i; j++)
        if (startsWith(paramCharSequence, paramArrayOfCharSequence[j]))
          return true;
    }
  }

  public static boolean startsWithIgnoreCase(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return startsWith(paramCharSequence1, paramCharSequence2, true);
  }

  public static String strip(String paramString)
  {
    return strip(paramString, null);
  }

  public static String strip(String paramString1, String paramString2)
  {
    if (isEmpty(paramString1))
      return paramString1;
    return stripEnd(stripStart(paramString1, paramString2), paramString2);
  }

  public static String stripAccents(String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      if (StringUtils.InitStripAccents.access$000() != null)
        return removeAccentsJava6(paramString);
      if (StringUtils.InitStripAccents.access$100() != null)
        return removeAccentsSUN(paramString);
      throw new UnsupportedOperationException("The stripAccents(CharSequence) method requires at least Java6, but got: " + StringUtils.InitStripAccents.access$200() + "; or a Sun JVM: " + StringUtils.InitStripAccents.access$300());
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new RuntimeException("IllegalArgumentException occurred", localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException("IllegalAccessException occurred", localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("InvocationTargetException occurred", localInvocationTargetException);
    }
    catch (SecurityException localSecurityException)
    {
      throw new RuntimeException("SecurityException occurred", localSecurityException);
    }
  }

  public static String[] stripAll(String[] paramArrayOfString)
  {
    return stripAll(paramArrayOfString, null);
  }

  public static String[] stripAll(String[] paramArrayOfString, String paramString)
  {
    int i;
    if (paramArrayOfString != null)
    {
      i = paramArrayOfString.length;
      if (i != 0);
    }
    else
    {
      return paramArrayOfString;
    }
    String[] arrayOfString = new String[i];
    for (int j = 0; j < i; j++)
      arrayOfString[j] = strip(paramArrayOfString[j], paramString);
    return arrayOfString;
  }

  public static String stripEnd(String paramString1, String paramString2)
  {
    int i;
    if (paramString1 != null)
    {
      i = paramString1.length();
      if (i != 0)
        break label15;
    }
    label15: 
    do
    {
      return paramString1;
      if (paramString2 == null)
        while ((i != 0) && (Character.isWhitespace(paramString1.charAt(i - 1))))
          i--;
    }
    while (paramString2.length() == 0);
    while ((i != 0) && (paramString2.indexOf(paramString1.charAt(i - 1)) != -1))
      i--;
    return paramString1.substring(0, i);
  }

  public static String stripStart(String paramString1, String paramString2)
  {
    int i;
    if (paramString1 != null)
    {
      i = paramString1.length();
      if (i != 0)
        break label15;
    }
    label15: int j;
    int k;
    do
    {
      return paramString1;
      j = 0;
      if (paramString2 == null)
        while ((j != i) && (Character.isWhitespace(paramString1.charAt(j))))
          j++;
      k = paramString2.length();
      j = 0;
    }
    while (k == 0);
    while ((j != i) && (paramString2.indexOf(paramString1.charAt(j)) != -1))
      j++;
    return paramString1.substring(j);
  }

  public static String stripToEmpty(String paramString)
  {
    if (paramString == null)
      return "";
    return strip(paramString, null);
  }

  public static String stripToNull(String paramString)
  {
    if (paramString == null);
    String str;
    do
    {
      return null;
      str = strip(paramString, null);
    }
    while (str.length() == 0);
    return str;
  }

  public static String substring(String paramString, int paramInt)
  {
    if (paramString == null)
      return null;
    if (paramInt < 0);
    for (int i = paramInt + paramString.length(); ; i = paramInt)
    {
      if (i < 0)
        i = 0;
      if (i > paramString.length())
        return "";
      return paramString.substring(i);
    }
  }

  public static String substring(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null)
      return null;
    if (paramInt2 < 0);
    for (int i = paramInt2 + paramString.length(); ; i = paramInt2)
    {
      if (paramInt1 < 0)
        paramInt1 += paramString.length();
      if (i > paramString.length())
        i = paramString.length();
      if (paramInt1 > i)
        return "";
      if (paramInt1 < 0)
        paramInt1 = 0;
      int j = 0;
      if (i < 0);
      while (true)
      {
        return paramString.substring(paramInt1, j);
        j = i;
      }
    }
  }

  public static String substringAfter(String paramString1, String paramString2)
  {
    if (isEmpty(paramString1))
      return paramString1;
    if (paramString2 == null)
      return "";
    int i = paramString1.indexOf(paramString2);
    if (i == -1)
      return "";
    return paramString1.substring(i + paramString2.length());
  }

  public static String substringAfterLast(String paramString1, String paramString2)
  {
    if (isEmpty(paramString1))
      return paramString1;
    if (isEmpty(paramString2))
      return "";
    int i = paramString1.lastIndexOf(paramString2);
    if ((i == -1) || (i == paramString1.length() - paramString2.length()))
      return "";
    return paramString1.substring(i + paramString2.length());
  }

  public static String substringBefore(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) || (paramString2 == null));
    int i;
    do
    {
      return paramString1;
      if (paramString2.length() == 0)
        return "";
      i = paramString1.indexOf(paramString2);
    }
    while (i == -1);
    return paramString1.substring(0, i);
  }

  public static String substringBeforeLast(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)));
    int i;
    do
    {
      return paramString1;
      i = paramString1.lastIndexOf(paramString2);
    }
    while (i == -1);
    return paramString1.substring(0, i);
  }

  public static String substringBetween(String paramString1, String paramString2)
  {
    return substringBetween(paramString1, paramString2, paramString2);
  }

  public static String substringBetween(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null));
    int i;
    int j;
    do
    {
      do
      {
        return null;
        i = paramString1.indexOf(paramString2);
      }
      while (i == -1);
      j = paramString1.indexOf(paramString3, i + paramString2.length());
    }
    while (j == -1);
    return paramString1.substring(i + paramString2.length(), j);
  }

  public static String[] substringsBetween(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (isEmpty(paramString2)) || (isEmpty(paramString3)));
    ArrayList localArrayList;
    do
    {
      return null;
      int i = paramString1.length();
      if (i == 0)
        return ArrayUtils.EMPTY_STRING_ARRAY;
      int j = paramString3.length();
      int k = paramString2.length();
      localArrayList = new ArrayList();
      int i2;
      for (int m = 0; m < i - j; m = i2 + j)
      {
        int n = paramString1.indexOf(paramString2, m);
        if (n < 0)
          break;
        int i1 = n + k;
        i2 = paramString1.indexOf(paramString3, i1);
        if (i2 < 0)
          break;
        localArrayList.add(paramString1.substring(i1, i2));
      }
    }
    while (localArrayList.isEmpty());
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }

  public static String swapCase(String paramString)
  {
    if (isEmpty(paramString))
      return paramString;
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    if (i < arrayOfChar.length)
    {
      char c = arrayOfChar[i];
      if (Character.isUpperCase(c))
        arrayOfChar[i] = Character.toLowerCase(c);
      while (true)
      {
        i++;
        break;
        if (Character.isTitleCase(c))
          arrayOfChar[i] = Character.toLowerCase(c);
        else if (Character.isLowerCase(c))
          arrayOfChar[i] = Character.toUpperCase(c);
      }
    }
    return new String(arrayOfChar);
  }

  public static String toString(byte[] paramArrayOfByte, String paramString)
  {
    if (paramString == null)
      return new String(paramArrayOfByte);
    return new String(paramArrayOfByte, paramString);
  }

  public static String trim(String paramString)
  {
    if (paramString == null)
      return null;
    return paramString.trim();
  }

  public static String trimToEmpty(String paramString)
  {
    if (paramString == null)
      return "";
    return paramString.trim();
  }

  public static String trimToNull(String paramString)
  {
    String str = trim(paramString);
    if (isEmpty(str))
      str = null;
    return str;
  }

  public static String uncapitalize(String paramString)
  {
    int i;
    if (paramString != null)
    {
      i = paramString.length();
      if (i != 0);
    }
    else
    {
      return paramString;
    }
    return i + Character.toLowerCase(paramString.charAt(0)) + paramString.substring(1);
  }

  public static String upperCase(String paramString)
  {
    if (paramString == null)
      return null;
    return paramString.toUpperCase();
  }

  public static String upperCase(String paramString, Locale paramLocale)
  {
    if (paramString == null)
      return null;
    return paramString.toUpperCase(paramLocale);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.StringUtils
 * JD-Core Version:    0.6.2
 */