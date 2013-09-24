package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class LocaleUtils
{
  private static final ConcurrentMap cCountriesByLanguage = new ConcurrentHashMap();
  private static final ConcurrentMap cLanguagesByCountry = new ConcurrentHashMap();

  public static List availableLocaleList()
  {
    return LocaleUtils.SyncAvoid.access$000();
  }

  public static Set availableLocaleSet()
  {
    return LocaleUtils.SyncAvoid.access$100();
  }

  public static List countriesByLanguage(String paramString)
  {
    List localList1;
    if (paramString == null)
      localList1 = Collections.emptyList();
    do
    {
      return localList1;
      localList1 = (List)cCountriesByLanguage.get(paramString);
    }
    while (localList1 != null);
    ArrayList localArrayList = new ArrayList();
    List localList2 = availableLocaleList();
    for (int i = 0; i < localList2.size(); i++)
    {
      Locale localLocale = (Locale)localList2.get(i);
      if ((paramString.equals(localLocale.getLanguage())) && (localLocale.getCountry().length() != 0) && (localLocale.getVariant().length() == 0))
        localArrayList.add(localLocale);
    }
    List localList3 = Collections.unmodifiableList(localArrayList);
    cCountriesByLanguage.putIfAbsent(paramString, localList3);
    return (List)cCountriesByLanguage.get(paramString);
  }

  public static boolean isAvailableLocale(Locale paramLocale)
  {
    return availableLocaleList().contains(paramLocale);
  }

  public static List languagesByCountry(String paramString)
  {
    List localList1;
    if (paramString == null)
      localList1 = Collections.emptyList();
    do
    {
      return localList1;
      localList1 = (List)cLanguagesByCountry.get(paramString);
    }
    while (localList1 != null);
    ArrayList localArrayList = new ArrayList();
    List localList2 = availableLocaleList();
    for (int i = 0; i < localList2.size(); i++)
    {
      Locale localLocale = (Locale)localList2.get(i);
      if ((paramString.equals(localLocale.getCountry())) && (localLocale.getVariant().length() == 0))
        localArrayList.add(localLocale);
    }
    List localList3 = Collections.unmodifiableList(localArrayList);
    cLanguagesByCountry.putIfAbsent(paramString, localList3);
    return (List)cLanguagesByCountry.get(paramString);
  }

  public static List localeLookupList(Locale paramLocale)
  {
    return localeLookupList(paramLocale, paramLocale);
  }

  public static List localeLookupList(Locale paramLocale1, Locale paramLocale2)
  {
    ArrayList localArrayList = new ArrayList(4);
    if (paramLocale1 != null)
    {
      localArrayList.add(paramLocale1);
      if (paramLocale1.getVariant().length() > 0)
        localArrayList.add(new Locale(paramLocale1.getLanguage(), paramLocale1.getCountry()));
      if (paramLocale1.getCountry().length() > 0)
        localArrayList.add(new Locale(paramLocale1.getLanguage(), ""));
      if (!localArrayList.contains(paramLocale2))
        localArrayList.add(paramLocale2);
    }
    return Collections.unmodifiableList(localArrayList);
  }

  public static Locale toLocale(String paramString)
  {
    if (paramString == null)
      return null;
    int i = paramString.length();
    if ((i != 2) && (i != 5) && (i < 7))
      throw new IllegalArgumentException("Invalid locale format: " + paramString);
    int j = paramString.charAt(0);
    int k = paramString.charAt(1);
    if ((j < 97) || (j > 122) || (k < 97) || (k > 122))
      throw new IllegalArgumentException("Invalid locale format: " + paramString);
    if (i == 2)
      return new Locale(paramString, "");
    if (paramString.charAt(2) != '_')
      throw new IllegalArgumentException("Invalid locale format: " + paramString);
    int m = paramString.charAt(3);
    if (m == 95)
      return new Locale(paramString.substring(0, 2), "", paramString.substring(4));
    int n = paramString.charAt(4);
    if ((m < 65) || (m > 90) || (n < 65) || (n > 90))
      throw new IllegalArgumentException("Invalid locale format: " + paramString);
    if (i == 5)
      return new Locale(paramString.substring(0, 2), paramString.substring(3, 5));
    if (paramString.charAt(5) != '_')
      throw new IllegalArgumentException("Invalid locale format: " + paramString);
    return new Locale(paramString.substring(0, 2), paramString.substring(3, 5), paramString.substring(6));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.LocaleUtils
 * JD-Core Version:    0.6.2
 */