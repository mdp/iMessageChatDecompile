package org.apache.commons.lang3.time;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

public class DateUtils
{
  public static final long MILLIS_PER_DAY = 86400000L;
  public static final long MILLIS_PER_HOUR = 3600000L;
  public static final long MILLIS_PER_MINUTE = 60000L;
  public static final long MILLIS_PER_SECOND = 1000L;
  private static final int MODIFY_CEILING = 2;
  private static final int MODIFY_ROUND = 1;
  private static final int MODIFY_TRUNCATE = 0;
  public static final int RANGE_MONTH_MONDAY = 6;
  public static final int RANGE_MONTH_SUNDAY = 5;
  public static final int RANGE_WEEK_CENTER = 4;
  public static final int RANGE_WEEK_MONDAY = 2;
  public static final int RANGE_WEEK_RELATIVE = 3;
  public static final int RANGE_WEEK_SUNDAY = 1;
  public static final int SEMI_MONTH = 1001;
  private static final int[][] fields = { { 14 }, { 13 }, { 12 }, { 11, 10 }, { 5, 5, 9 }, { 2, 1001 }, { 1 }, { 0 } };

  private static Date add(Date paramDate, int paramInt1, int paramInt2)
  {
    if (paramDate == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.add(paramInt1, paramInt2);
    return localCalendar.getTime();
  }

  public static Date addDays(Date paramDate, int paramInt)
  {
    return add(paramDate, 5, paramInt);
  }

  public static Date addHours(Date paramDate, int paramInt)
  {
    return add(paramDate, 11, paramInt);
  }

  public static Date addMilliseconds(Date paramDate, int paramInt)
  {
    return add(paramDate, 14, paramInt);
  }

  public static Date addMinutes(Date paramDate, int paramInt)
  {
    return add(paramDate, 12, paramInt);
  }

  public static Date addMonths(Date paramDate, int paramInt)
  {
    return add(paramDate, 2, paramInt);
  }

  public static Date addSeconds(Date paramDate, int paramInt)
  {
    return add(paramDate, 13, paramInt);
  }

  public static Date addWeeks(Date paramDate, int paramInt)
  {
    return add(paramDate, 3, paramInt);
  }

  public static Date addYears(Date paramDate, int paramInt)
  {
    return add(paramDate, 1, paramInt);
  }

  public static Calendar ceiling(Calendar paramCalendar, int paramInt)
  {
    if (paramCalendar == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = (Calendar)paramCalendar.clone();
    modify(localCalendar, paramInt, 2);
    return localCalendar;
  }

  public static Date ceiling(Object paramObject, int paramInt)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("The date must not be null");
    if ((paramObject instanceof Date))
      return ceiling((Date)paramObject, paramInt);
    if ((paramObject instanceof Calendar))
      return ceiling((Calendar)paramObject, paramInt).getTime();
    throw new ClassCastException("Could not find ceiling of for type: " + paramObject.getClass());
  }

  public static Date ceiling(Date paramDate, int paramInt)
  {
    if (paramDate == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    modify(localCalendar, paramInt, 2);
    return localCalendar.getTime();
  }

  private static long getFragment(Calendar paramCalendar, int paramInt1, int paramInt2)
  {
    long l1 = 0L;
    if (paramCalendar == null)
      throw new IllegalArgumentException("The date must not be null");
    long l2 = getMillisPerUnit(paramInt2);
    switch (paramInt1)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
      switch (paramInt1)
      {
      case 3:
      case 4:
      case 7:
      case 8:
      case 9:
      case 10:
      default:
        throw new IllegalArgumentException("The fragment " + paramInt1 + " is not supported");
        l1 += 86400000L * paramCalendar.get(6) / l2;
        continue;
        l1 += 86400000L * paramCalendar.get(5) / l2;
      case 1:
      case 2:
      case 5:
      case 6:
      case 11:
      case 12:
      case 13:
      case 14:
      }
    l1 += 3600000L * paramCalendar.get(11) / l2;
    l1 += 60000L * paramCalendar.get(12) / l2;
    l1 += 1000L * paramCalendar.get(13) / l2;
    l1 += 1 * paramCalendar.get(14) / l2;
    return l1;
  }

  private static long getFragment(Date paramDate, int paramInt1, int paramInt2)
  {
    if (paramDate == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    return getFragment(localCalendar, paramInt1, paramInt2);
  }

  public static long getFragmentInDays(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, 6);
  }

  public static long getFragmentInDays(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, 6);
  }

  public static long getFragmentInHours(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, 11);
  }

  public static long getFragmentInHours(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, 11);
  }

  public static long getFragmentInMilliseconds(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, 14);
  }

  public static long getFragmentInMilliseconds(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, 14);
  }

  public static long getFragmentInMinutes(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, 12);
  }

  public static long getFragmentInMinutes(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, 12);
  }

  public static long getFragmentInSeconds(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, 13);
  }

  public static long getFragmentInSeconds(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, 13);
  }

  private static long getMillisPerUnit(int paramInt)
  {
    switch (paramInt)
    {
    case 7:
    case 8:
    case 9:
    case 10:
    default:
      throw new IllegalArgumentException("The unit " + paramInt + " cannot be represented is milleseconds");
    case 5:
    case 6:
      return 86400000L;
    case 11:
      return 3600000L;
    case 12:
      return 60000L;
    case 13:
      return 1000L;
    case 14:
    }
    return 1L;
  }

  public static boolean isSameDay(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    if ((paramCalendar1 == null) || (paramCalendar2 == null))
      throw new IllegalArgumentException("The date must not be null");
    return (paramCalendar1.get(0) == paramCalendar2.get(0)) && (paramCalendar1.get(1) == paramCalendar2.get(1)) && (paramCalendar1.get(6) == paramCalendar2.get(6));
  }

  public static boolean isSameDay(Date paramDate1, Date paramDate2)
  {
    if ((paramDate1 == null) || (paramDate2 == null))
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.setTime(paramDate1);
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.setTime(paramDate2);
    return isSameDay(localCalendar1, localCalendar2);
  }

  public static boolean isSameInstant(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    if ((paramCalendar1 == null) || (paramCalendar2 == null))
      throw new IllegalArgumentException("The date must not be null");
    return paramCalendar1.getTime().getTime() == paramCalendar2.getTime().getTime();
  }

  public static boolean isSameInstant(Date paramDate1, Date paramDate2)
  {
    if ((paramDate1 == null) || (paramDate2 == null))
      throw new IllegalArgumentException("The date must not be null");
    return paramDate1.getTime() == paramDate2.getTime();
  }

  public static boolean isSameLocalTime(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    if ((paramCalendar1 == null) || (paramCalendar2 == null))
      throw new IllegalArgumentException("The date must not be null");
    return (paramCalendar1.get(14) == paramCalendar2.get(14)) && (paramCalendar1.get(13) == paramCalendar2.get(13)) && (paramCalendar1.get(12) == paramCalendar2.get(12)) && (paramCalendar1.get(11) == paramCalendar2.get(11)) && (paramCalendar1.get(6) == paramCalendar2.get(6)) && (paramCalendar1.get(1) == paramCalendar2.get(1)) && (paramCalendar1.get(0) == paramCalendar2.get(0)) && (paramCalendar1.getClass() == paramCalendar2.getClass());
  }

  public static Iterator iterator(Object paramObject, int paramInt)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("The date must not be null");
    if ((paramObject instanceof Date))
      return iterator((Date)paramObject, paramInt);
    if ((paramObject instanceof Calendar))
      return iterator((Calendar)paramObject, paramInt);
    throw new ClassCastException("Could not iterate based on " + paramObject);
  }

  public static Iterator iterator(Calendar paramCalendar, int paramInt)
  {
    int i = 2;
    if (paramCalendar == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar3;
    Calendar localCalendar4;
    Calendar localCalendar1;
    Calendar localCalendar2;
    int j;
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("The range style " + paramInt + " is not valid.");
    case 5:
    case 6:
      localCalendar3 = truncate(paramCalendar, i);
      localCalendar4 = (Calendar)localCalendar3.clone();
      localCalendar4.add(i, 1);
      localCalendar4.add(5, -1);
      if (paramInt == 6)
      {
        localCalendar1 = localCalendar3;
        localCalendar2 = localCalendar4;
        j = 1;
      }
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      if (i <= 0)
        i += 7;
      if (i > 7)
        i -= 7;
      if (j <= 0)
        j += 7;
      if (j > 7)
        j -= 7;
      while (true)
        if (localCalendar1.get(7) != i)
        {
          localCalendar1.add(5, -1);
          continue;
          localCalendar1 = truncate(paramCalendar, 5);
          localCalendar2 = truncate(paramCalendar, 5);
          switch (paramInt)
          {
          default:
            j = 7;
            i = 1;
            break;
          case 1:
            j = 7;
            i = 1;
            break;
          case 2:
            j = 1;
            break;
          case 3:
            i = paramCalendar.get(7);
            j = i - 1;
            break;
          case 4:
            i = -3 + paramCalendar.get(7);
            j = 3 + paramCalendar.get(7);
            break;
          }
        }
      while (localCalendar2.get(7) != j)
        localCalendar2.add(5, 1);
      return new DateUtils.DateIterator(localCalendar1, localCalendar2);
      i = 1;
      localCalendar1 = localCalendar3;
      localCalendar2 = localCalendar4;
      j = 7;
    }
  }

  public static Iterator iterator(Date paramDate, int paramInt)
  {
    if (paramDate == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    return iterator(localCalendar, paramInt);
  }

  private static void modify(Calendar paramCalendar, int paramInt1, int paramInt2)
  {
    if (paramCalendar.get(1) > 280000000)
      throw new ArithmeticException("Calendar value too large for accurate calculations");
    if (paramInt1 == 14)
      return;
    Date localDate = paramCalendar.getTime();
    long l1 = localDate.getTime();
    int i = paramCalendar.get(14);
    if ((paramInt2 == 0) || (i < 500))
      l1 -= i;
    int j = 0;
    if (paramInt1 == 13)
      j = 1;
    int k = paramCalendar.get(13);
    if ((j == 0) && ((paramInt2 == 0) || (k < 30)))
      l1 -= 1000L * k;
    if (paramInt1 == 12)
      j = 1;
    int m = paramCalendar.get(12);
    if ((j == 0) && ((paramInt2 == 0) || (m < 30)));
    for (long l2 = l1 - 60000L * m; ; l2 = l1)
    {
      if (localDate.getTime() != l2)
      {
        localDate.setTime(l2);
        paramCalendar.setTime(localDate);
      }
      int[][] arrayOfInt = fields;
      int n = arrayOfInt.length;
      int i1 = 0;
      int i2 = 0;
      if (i2 < n)
      {
        int[] arrayOfInt1 = arrayOfInt[i2];
        int i3 = arrayOfInt1.length;
        for (int i4 = 0; ; i4++)
        {
          if (i4 >= i3)
            break label342;
          if (arrayOfInt1[i4] == paramInt1)
          {
            if ((paramInt2 != 2) && ((paramInt2 != 1) || (i1 == 0)))
              break;
            if (paramInt1 == 1001)
            {
              if (paramCalendar.get(5) == 1)
              {
                paramCalendar.add(5, 15);
                return;
              }
              paramCalendar.add(5, -15);
              paramCalendar.add(2, 1);
              return;
            }
            if (paramInt1 == 9)
            {
              if (paramCalendar.get(11) == 0)
              {
                paramCalendar.add(11, 12);
                return;
              }
              paramCalendar.add(11, -12);
              paramCalendar.add(5, 1);
              return;
            }
            paramCalendar.add(arrayOfInt1[0], 1);
            return;
          }
        }
        label342: label368: int i7;
        int i8;
        int i9;
        int i12;
        switch (paramInt1)
        {
        default:
          i7 = i1;
          i8 = 0;
          i9 = 0;
          if (i9 == 0)
          {
            int i10 = paramCalendar.getActualMinimum(arrayOfInt1[0]);
            int i11 = paramCalendar.getActualMaximum(arrayOfInt1[0]);
            i12 = paramCalendar.get(arrayOfInt1[0]) - i10;
            if (i12 <= (i11 - i10) / 2)
              break label587;
          }
          break;
        case 1001:
        case 9:
        }
        label587: for (int i13 = 1; ; i13 = 0)
        {
          i7 = i13;
          i8 = i12;
          if (i8 != 0)
            paramCalendar.set(arrayOfInt1[0], paramCalendar.get(arrayOfInt1[0]) - i8);
          i2++;
          i1 = i7;
          break;
          if (arrayOfInt1[0] != 5)
            break label368;
          int i14 = -1 + paramCalendar.get(5);
          if (i14 >= 15)
            i14 -= 15;
          if (i14 > 7);
          for (int i15 = 1; ; i15 = 0)
          {
            i7 = i15;
            i8 = i14;
            i9 = 1;
            break;
          }
          if (arrayOfInt1[0] != 11)
            break label368;
          int i5 = paramCalendar.get(11);
          if (i5 >= 12)
            i5 -= 12;
          if (i5 >= 6);
          for (int i6 = 1; ; i6 = 0)
          {
            i7 = i6;
            i8 = i5;
            i9 = 1;
            break;
          }
        }
      }
      throw new IllegalArgumentException("The field " + paramInt1 + " is not supported");
    }
  }

  public static Date parseDate(String paramString, String[] paramArrayOfString)
  {
    return parseDateWithLeniency(paramString, paramArrayOfString, true);
  }

  public static Date parseDateStrictly(String paramString, String[] paramArrayOfString)
  {
    return parseDateWithLeniency(paramString, paramArrayOfString, false);
  }

  private static Date parseDateWithLeniency(String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    if ((paramString == null) || (paramArrayOfString == null))
      throw new IllegalArgumentException("Date and Patterns must not be null");
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat();
    localSimpleDateFormat.setLenient(paramBoolean);
    ParsePosition localParsePosition = new ParsePosition(0);
    int i = paramArrayOfString.length;
    int j = 0;
    String str1;
    if (j < i)
    {
      str1 = paramArrayOfString[j];
      if (!str1.endsWith("ZZ"))
        break label188;
    }
    label188: for (String str2 = str1.substring(0, -1 + str1.length()); ; str2 = str1)
    {
      localSimpleDateFormat.applyPattern(str2);
      localParsePosition.setIndex(0);
      if (str1.endsWith("ZZ"));
      for (String str3 = paramString.replaceAll("([-+][0-9][0-9]):([0-9][0-9])$", "$1$2"); ; str3 = paramString)
      {
        Date localDate = localSimpleDateFormat.parse(str3, localParsePosition);
        if ((localDate != null) && (localParsePosition.getIndex() == str3.length()))
          return localDate;
        j++;
        break;
        throw new ParseException("Unable to parse the date: " + paramString, -1);
      }
    }
  }

  public static Calendar round(Calendar paramCalendar, int paramInt)
  {
    if (paramCalendar == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = (Calendar)paramCalendar.clone();
    modify(localCalendar, paramInt, 1);
    return localCalendar;
  }

  public static Date round(Object paramObject, int paramInt)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("The date must not be null");
    if ((paramObject instanceof Date))
      return round((Date)paramObject, paramInt);
    if ((paramObject instanceof Calendar))
      return round((Calendar)paramObject, paramInt).getTime();
    throw new ClassCastException("Could not round " + paramObject);
  }

  public static Date round(Date paramDate, int paramInt)
  {
    if (paramDate == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    modify(localCalendar, paramInt, 1);
    return localCalendar.getTime();
  }

  private static Date set(Date paramDate, int paramInt1, int paramInt2)
  {
    if (paramDate == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setLenient(false);
    localCalendar.setTime(paramDate);
    localCalendar.set(paramInt1, paramInt2);
    return localCalendar.getTime();
  }

  public static Date setDays(Date paramDate, int paramInt)
  {
    return set(paramDate, 5, paramInt);
  }

  public static Date setHours(Date paramDate, int paramInt)
  {
    return set(paramDate, 11, paramInt);
  }

  public static Date setMilliseconds(Date paramDate, int paramInt)
  {
    return set(paramDate, 14, paramInt);
  }

  public static Date setMinutes(Date paramDate, int paramInt)
  {
    return set(paramDate, 12, paramInt);
  }

  public static Date setMonths(Date paramDate, int paramInt)
  {
    return set(paramDate, 2, paramInt);
  }

  public static Date setSeconds(Date paramDate, int paramInt)
  {
    return set(paramDate, 13, paramInt);
  }

  public static Date setYears(Date paramDate, int paramInt)
  {
    return set(paramDate, 1, paramInt);
  }

  public static Calendar toCalendar(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    return localCalendar;
  }

  public static Calendar truncate(Calendar paramCalendar, int paramInt)
  {
    if (paramCalendar == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = (Calendar)paramCalendar.clone();
    modify(localCalendar, paramInt, 0);
    return localCalendar;
  }

  public static Date truncate(Object paramObject, int paramInt)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("The date must not be null");
    if ((paramObject instanceof Date))
      return truncate((Date)paramObject, paramInt);
    if ((paramObject instanceof Calendar))
      return truncate((Calendar)paramObject, paramInt).getTime();
    throw new ClassCastException("Could not truncate " + paramObject);
  }

  public static Date truncate(Date paramDate, int paramInt)
  {
    if (paramDate == null)
      throw new IllegalArgumentException("The date must not be null");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    modify(localCalendar, paramInt, 0);
    return localCalendar.getTime();
  }

  public static int truncatedCompareTo(Calendar paramCalendar1, Calendar paramCalendar2, int paramInt)
  {
    return truncate(paramCalendar1, paramInt).compareTo(truncate(paramCalendar2, paramInt));
  }

  public static int truncatedCompareTo(Date paramDate1, Date paramDate2, int paramInt)
  {
    return truncate(paramDate1, paramInt).compareTo(truncate(paramDate2, paramInt));
  }

  public static boolean truncatedEquals(Calendar paramCalendar1, Calendar paramCalendar2, int paramInt)
  {
    return truncatedCompareTo(paramCalendar1, paramCalendar2, paramInt) == 0;
  }

  public static boolean truncatedEquals(Date paramDate1, Date paramDate2, int paramInt)
  {
    return truncatedCompareTo(paramDate1, paramDate2, paramInt) == 0;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.DateUtils
 * JD-Core Version:    0.6.2
 */