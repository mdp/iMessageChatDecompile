package org.apache.commons.lang3.time;

import java.io.ObjectInputStream;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class FastDateFormat extends Format
{
  public static final int FULL = 0;
  public static final int LONG = 1;
  public static final int MEDIUM = 2;
  public static final int SHORT = 3;
  private static ConcurrentMap cTimeZoneDisplayCache = new ConcurrentHashMap(7);
  private static final FormatCache cache = new FastDateFormat.1();
  private static final long serialVersionUID = 1L;
  private final Locale mLocale;
  private transient int mMaxLengthEstimate;
  private final String mPattern;
  private transient FastDateFormat.Rule[] mRules;
  private final TimeZone mTimeZone;

  protected FastDateFormat(String paramString, TimeZone paramTimeZone, Locale paramLocale)
  {
    this.mPattern = paramString;
    this.mTimeZone = paramTimeZone;
    this.mLocale = paramLocale;
    init();
  }

  public static FastDateFormat getDateInstance(int paramInt)
  {
    return (FastDateFormat)cache.getDateTimeInstance(Integer.valueOf(paramInt), null, null, null);
  }

  public static FastDateFormat getDateInstance(int paramInt, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateTimeInstance(Integer.valueOf(paramInt), null, null, paramLocale);
  }

  public static FastDateFormat getDateInstance(int paramInt, TimeZone paramTimeZone)
  {
    return (FastDateFormat)cache.getDateTimeInstance(Integer.valueOf(paramInt), null, paramTimeZone, null);
  }

  public static FastDateFormat getDateInstance(int paramInt, TimeZone paramTimeZone, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateTimeInstance(Integer.valueOf(paramInt), null, paramTimeZone, paramLocale);
  }

  public static FastDateFormat getDateTimeInstance(int paramInt1, int paramInt2)
  {
    return (FastDateFormat)cache.getDateTimeInstance(Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), null, null);
  }

  public static FastDateFormat getDateTimeInstance(int paramInt1, int paramInt2, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateTimeInstance(Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), null, paramLocale);
  }

  public static FastDateFormat getDateTimeInstance(int paramInt1, int paramInt2, TimeZone paramTimeZone)
  {
    return getDateTimeInstance(paramInt1, paramInt2, paramTimeZone, null);
  }

  public static FastDateFormat getDateTimeInstance(int paramInt1, int paramInt2, TimeZone paramTimeZone, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateTimeInstance(Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), paramTimeZone, paramLocale);
  }

  public static FastDateFormat getInstance()
  {
    return (FastDateFormat)cache.getDateTimeInstance(Integer.valueOf(3), Integer.valueOf(3), null, null);
  }

  public static FastDateFormat getInstance(String paramString)
  {
    return (FastDateFormat)cache.getInstance(paramString, null, null);
  }

  public static FastDateFormat getInstance(String paramString, Locale paramLocale)
  {
    return (FastDateFormat)cache.getInstance(paramString, null, paramLocale);
  }

  public static FastDateFormat getInstance(String paramString, TimeZone paramTimeZone)
  {
    return (FastDateFormat)cache.getInstance(paramString, paramTimeZone, null);
  }

  public static FastDateFormat getInstance(String paramString, TimeZone paramTimeZone, Locale paramLocale)
  {
    return (FastDateFormat)cache.getInstance(paramString, paramTimeZone, paramLocale);
  }

  public static FastDateFormat getTimeInstance(int paramInt)
  {
    return (FastDateFormat)cache.getDateTimeInstance(null, Integer.valueOf(paramInt), null, null);
  }

  public static FastDateFormat getTimeInstance(int paramInt, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateTimeInstance(null, Integer.valueOf(paramInt), null, paramLocale);
  }

  public static FastDateFormat getTimeInstance(int paramInt, TimeZone paramTimeZone)
  {
    return (FastDateFormat)cache.getDateTimeInstance(null, Integer.valueOf(paramInt), paramTimeZone, null);
  }

  public static FastDateFormat getTimeInstance(int paramInt, TimeZone paramTimeZone, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateTimeInstance(null, Integer.valueOf(paramInt), paramTimeZone, paramLocale);
  }

  static String getTimeZoneDisplay(TimeZone paramTimeZone, boolean paramBoolean, int paramInt, Locale paramLocale)
  {
    FastDateFormat.TimeZoneDisplayKey localTimeZoneDisplayKey = new FastDateFormat.TimeZoneDisplayKey(paramTimeZone, paramBoolean, paramInt, paramLocale);
    String str1 = (String)cTimeZoneDisplayCache.get(localTimeZoneDisplayKey);
    String str2;
    if (str1 == null)
    {
      str2 = paramTimeZone.getDisplayName(paramBoolean, paramInt, paramLocale);
      str1 = (String)cTimeZoneDisplayCache.putIfAbsent(localTimeZoneDisplayKey, str2);
      if (str1 == null);
    }
    else
    {
      return str1;
    }
    return str2;
  }

  private void init()
  {
    List localList = parsePattern();
    this.mRules = ((FastDateFormat.Rule[])localList.toArray(new FastDateFormat.Rule[localList.size()]));
    int i = 0;
    int j = this.mRules.length;
    while (true)
    {
      j--;
      if (j < 0)
        break;
      i += this.mRules[j].estimateLength();
    }
    this.mMaxLengthEstimate = i;
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    init();
  }

  protected StringBuffer applyRules(Calendar paramCalendar, StringBuffer paramStringBuffer)
  {
    FastDateFormat.Rule[] arrayOfRule = this.mRules;
    int i = arrayOfRule.length;
    for (int j = 0; j < i; j++)
      arrayOfRule[j].appendTo(paramStringBuffer, paramCalendar);
    return paramStringBuffer;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof FastDateFormat));
    FastDateFormat localFastDateFormat;
    do
    {
      return false;
      localFastDateFormat = (FastDateFormat)paramObject;
    }
    while ((!this.mPattern.equals(localFastDateFormat.mPattern)) || (!this.mTimeZone.equals(localFastDateFormat.mTimeZone)) || (!this.mLocale.equals(localFastDateFormat.mLocale)));
    return true;
  }

  public String format(long paramLong)
  {
    return format(new Date(paramLong));
  }

  public String format(Calendar paramCalendar)
  {
    return format(paramCalendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
  }

  public String format(Date paramDate)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar(this.mTimeZone, this.mLocale);
    localGregorianCalendar.setTime(paramDate);
    return applyRules(localGregorianCalendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
  }

  public StringBuffer format(long paramLong, StringBuffer paramStringBuffer)
  {
    return format(new Date(paramLong), paramStringBuffer);
  }

  public StringBuffer format(Object paramObject, StringBuffer paramStringBuffer, FieldPosition paramFieldPosition)
  {
    if ((paramObject instanceof Date))
      return format((Date)paramObject, paramStringBuffer);
    if ((paramObject instanceof Calendar))
      return format((Calendar)paramObject, paramStringBuffer);
    if ((paramObject instanceof Long))
      return format(((Long)paramObject).longValue(), paramStringBuffer);
    StringBuilder localStringBuilder = new StringBuilder("Unknown class: ");
    if (paramObject == null);
    for (String str = "<null>"; ; str = paramObject.getClass().getName())
      throw new IllegalArgumentException(str);
  }

  public StringBuffer format(Calendar paramCalendar, StringBuffer paramStringBuffer)
  {
    return applyRules(paramCalendar, paramStringBuffer);
  }

  public StringBuffer format(Date paramDate, StringBuffer paramStringBuffer)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar(this.mTimeZone, this.mLocale);
    localGregorianCalendar.setTime(paramDate);
    return applyRules(localGregorianCalendar, paramStringBuffer);
  }

  public Locale getLocale()
  {
    return this.mLocale;
  }

  public int getMaxLengthEstimate()
  {
    return this.mMaxLengthEstimate;
  }

  public String getPattern()
  {
    return this.mPattern;
  }

  public TimeZone getTimeZone()
  {
    return this.mTimeZone;
  }

  public int hashCode()
  {
    return this.mPattern.hashCode() + 13 * (this.mTimeZone.hashCode() + 13 * this.mLocale.hashCode());
  }

  public Object parseObject(String paramString, ParsePosition paramParsePosition)
  {
    paramParsePosition.setIndex(0);
    paramParsePosition.setErrorIndex(0);
    return null;
  }

  protected List parsePattern()
  {
    DateFormatSymbols localDateFormatSymbols = new DateFormatSymbols(this.mLocale);
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString1 = localDateFormatSymbols.getEras();
    String[] arrayOfString2 = localDateFormatSymbols.getMonths();
    String[] arrayOfString3 = localDateFormatSymbols.getShortMonths();
    String[] arrayOfString4 = localDateFormatSymbols.getWeekdays();
    String[] arrayOfString5 = localDateFormatSymbols.getShortWeekdays();
    String[] arrayOfString6 = localDateFormatSymbols.getAmPmStrings();
    int i = this.mPattern.length();
    int[] arrayOfInt = new int[1];
    int j = 0;
    if (j < i)
    {
      arrayOfInt[0] = j;
      String str1 = parseToken(this.mPattern, arrayOfInt);
      int k = arrayOfInt[0];
      int m = str1.length();
      if (m != 0)
      {
        Object localObject;
        switch (str1.charAt(0))
        {
        default:
          throw new IllegalArgumentException("Illegal pattern component: " + str1);
        case 'G':
          localObject = new FastDateFormat.TextField(0, arrayOfString1);
        case 'y':
        case 'M':
        case 'd':
        case 'h':
        case 'H':
        case 'm':
        case 's':
        case 'S':
        case 'E':
        case 'D':
        case 'F':
        case 'w':
        case 'W':
        case 'a':
        case 'k':
        case 'K':
        case 'z':
        case 'Z':
        case '\'':
        }
        while (true)
        {
          localArrayList.add(localObject);
          j = k + 1;
          break;
          if (m == 2)
          {
            localObject = FastDateFormat.TwoDigitYearField.INSTANCE;
          }
          else
          {
            if (m < 4)
              m = 4;
            localObject = selectNumberRule(1, m);
            continue;
            if (m >= 4)
            {
              localObject = new FastDateFormat.TextField(2, arrayOfString2);
            }
            else if (m == 3)
            {
              localObject = new FastDateFormat.TextField(2, arrayOfString3);
            }
            else if (m == 2)
            {
              localObject = FastDateFormat.TwoDigitMonthField.INSTANCE;
            }
            else
            {
              localObject = FastDateFormat.UnpaddedMonthField.INSTANCE;
              continue;
              localObject = selectNumberRule(5, m);
              continue;
              localObject = new FastDateFormat.TwelveHourField(selectNumberRule(10, m));
              continue;
              localObject = selectNumberRule(11, m);
              continue;
              localObject = selectNumberRule(12, m);
              continue;
              localObject = selectNumberRule(13, m);
              continue;
              localObject = selectNumberRule(14, m);
              continue;
              if (m < 4);
              for (String[] arrayOfString7 = arrayOfString5; ; arrayOfString7 = arrayOfString4)
              {
                localObject = new FastDateFormat.TextField(7, arrayOfString7);
                break;
              }
              localObject = selectNumberRule(6, m);
              continue;
              localObject = selectNumberRule(8, m);
              continue;
              localObject = selectNumberRule(3, m);
              continue;
              localObject = selectNumberRule(4, m);
              continue;
              localObject = new FastDateFormat.TextField(9, arrayOfString6);
              continue;
              localObject = new FastDateFormat.TwentyFourHourField(selectNumberRule(11, m));
              continue;
              localObject = selectNumberRule(10, m);
              continue;
              if (m >= 4)
              {
                localObject = new FastDateFormat.TimeZoneNameRule(this.mTimeZone, this.mLocale, 1);
              }
              else
              {
                localObject = new FastDateFormat.TimeZoneNameRule(this.mTimeZone, this.mLocale, 0);
                continue;
                if (m == 1)
                {
                  localObject = FastDateFormat.TimeZoneNumberRule.INSTANCE_NO_COLON;
                }
                else
                {
                  localObject = FastDateFormat.TimeZoneNumberRule.INSTANCE_COLON;
                  continue;
                  String str2 = str1.substring(1);
                  if (str2.length() == 1)
                    localObject = new FastDateFormat.CharacterLiteral(str2.charAt(0));
                  else
                    localObject = new FastDateFormat.StringLiteral(str2);
                }
              }
            }
          }
        }
      }
    }
    return localArrayList;
  }

  protected String parseToken(String paramString, int[] paramArrayOfInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfInt[0];
    int j = paramString.length();
    char c1 = paramString.charAt(i);
    if (((c1 >= 'A') && (c1 <= 'Z')) || ((c1 >= 'a') && (c1 <= 'z')))
      localStringBuilder.append(c1);
    int k;
    char c2;
    while (true)
      if ((i + 1 < j) && (paramString.charAt(i + 1) == c1))
      {
        localStringBuilder.append(c1);
        i++;
        continue;
        localStringBuilder.append('\'');
        k = 0;
        if (i < j)
        {
          c2 = paramString.charAt(i);
          if (c2 == '\'')
            if ((i + 1 < j) && (paramString.charAt(i + 1) == '\''))
            {
              i++;
              localStringBuilder.append(c2);
            }
        }
      }
    while (true)
    {
      i++;
      break;
      if (k == 0)
      {
        k = 1;
      }
      else
      {
        k = 0;
        continue;
        if ((k == 0) && (((c2 >= 'A') && (c2 <= 'Z')) || ((c2 >= 'a') && (c2 <= 'z'))))
        {
          i--;
          paramArrayOfInt[0] = i;
          return localStringBuilder.toString();
        }
        localStringBuilder.append(c2);
      }
    }
  }

  protected FastDateFormat.NumberRule selectNumberRule(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default:
      return new FastDateFormat.PaddedNumberField(paramInt1, paramInt2);
    case 1:
      return new FastDateFormat.UnpaddedNumberField(paramInt1);
    case 2:
    }
    return new FastDateFormat.TwoDigitNumberField(paramInt1);
  }

  public String toString()
  {
    return "FastDateFormat[" + this.mPattern + "]";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat
 * JD-Core Version:    0.6.2
 */