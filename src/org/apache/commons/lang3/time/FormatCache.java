package org.apache.commons.lang3.time;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

abstract class FormatCache
{
  static final int NONE = -1;
  private final ConcurrentMap cDateTimeInstanceCache = new ConcurrentHashMap(7);
  private final ConcurrentMap cInstanceCache = new ConcurrentHashMap(7);

  protected abstract Format createInstance(String paramString, TimeZone paramTimeZone, Locale paramLocale);

  public Format getDateTimeInstance(Integer paramInteger1, Integer paramInteger2, TimeZone paramTimeZone, Locale paramLocale)
  {
    if (paramLocale == null)
      paramLocale = Locale.getDefault();
    FormatCache.MultipartKey localMultipartKey = new FormatCache.MultipartKey(new Object[] { paramInteger1, paramInteger2, paramLocale });
    Object localObject1 = (String)this.cDateTimeInstanceCache.get(localMultipartKey);
    if ((localObject1 != null) || (paramInteger1 == null));
    while (true)
    {
      String str;
      try
      {
        Object localObject2 = DateFormat.getTimeInstance(paramInteger2.intValue(), paramLocale);
        str = ((SimpleDateFormat)localObject2).toPattern();
        localObject1 = (String)this.cDateTimeInstanceCache.putIfAbsent(localMultipartKey, str);
        if (localObject1 != null)
        {
          return getInstance((String)localObject1, paramTimeZone, paramLocale);
          if (paramInteger2 == null)
          {
            localObject2 = DateFormat.getDateInstance(paramInteger1.intValue(), paramLocale);
            continue;
          }
          DateFormat localDateFormat = DateFormat.getDateTimeInstance(paramInteger1.intValue(), paramInteger2.intValue(), paramLocale);
          localObject2 = localDateFormat;
          continue;
        }
      }
      catch (ClassCastException localClassCastException)
      {
        throw new IllegalArgumentException("No date time pattern for locale: " + paramLocale);
      }
      localObject1 = str;
    }
  }

  public Format getInstance()
  {
    return getDateTimeInstance(Integer.valueOf(3), Integer.valueOf(3), TimeZone.getDefault(), Locale.getDefault());
  }

  public Format getInstance(String paramString, TimeZone paramTimeZone, Locale paramLocale)
  {
    if (paramString == null)
      throw new NullPointerException("pattern must not be null");
    if (paramTimeZone == null)
      paramTimeZone = TimeZone.getDefault();
    if (paramLocale == null)
      paramLocale = Locale.getDefault();
    FormatCache.MultipartKey localMultipartKey = new FormatCache.MultipartKey(new Object[] { paramString, paramTimeZone, paramLocale });
    Format localFormat1 = (Format)this.cInstanceCache.get(localMultipartKey);
    Format localFormat2;
    if (localFormat1 == null)
    {
      localFormat2 = createInstance(paramString, paramTimeZone, paramLocale);
      localFormat1 = (Format)this.cInstanceCache.putIfAbsent(localMultipartKey, localFormat2);
      if (localFormat1 == null);
    }
    else
    {
      return localFormat1;
    }
    return localFormat2;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FormatCache
 * JD-Core Version:    0.6.2
 */