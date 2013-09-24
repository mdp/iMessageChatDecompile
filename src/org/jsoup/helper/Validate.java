package org.jsoup.helper;

public final class Validate
{
  public static void a(Object paramObject)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("Object must not be null");
  }

  public static void a(Object paramObject, String paramString)
  {
    if (paramObject == null)
      throw new IllegalArgumentException(paramString);
  }

  public static void a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      throw new IllegalArgumentException("String must not be empty");
  }

  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException("Must be true");
  }

  public static void a(boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
      throw new IllegalArgumentException(paramString);
  }

  public static void a(Object[] paramArrayOfObject)
  {
    int i = paramArrayOfObject.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfObject[j] == null)
        throw new IllegalArgumentException("Array must not contain any null objects");
  }

  public static void b(String paramString)
  {
    throw new IllegalArgumentException(paramString);
  }

  public static void b(boolean paramBoolean)
  {
    if (paramBoolean)
      throw new IllegalArgumentException("Must be false");
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.helper.Validate
 * JD-Core Version:    0.6.2
 */