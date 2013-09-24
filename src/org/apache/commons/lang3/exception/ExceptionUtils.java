package org.apache.commons.lang3.exception;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;

public class ExceptionUtils
{
  private static final String[] CAUSE_METHOD_NAMES = { "getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested", "getLinkedException", "getNestedException", "getLinkedCause", "getThrowable" };
  static final String WRAPPED_MARKER = " [wrapped] ";

  public static Throwable getCause(Throwable paramThrowable)
  {
    return getCause(paramThrowable, CAUSE_METHOD_NAMES);
  }

  public static Throwable getCause(Throwable paramThrowable, String[] paramArrayOfString)
  {
    if (paramThrowable == null);
    while (true)
    {
      return null;
      if (paramArrayOfString == null);
      for (String str : CAUSE_METHOD_NAMES)
        if (str != null)
        {
          Throwable localThrowable = getCauseUsingMethodName(paramThrowable, str);
          if (localThrowable != null)
            return localThrowable;
        }
    }
  }

  // ERROR //
  private static Throwable getCauseUsingMethodName(Throwable paramThrowable, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 65	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: aload_1
    //   5: iconst_0
    //   6: anewarray 67	java/lang/Class
    //   9: invokevirtual 71	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   12: astore 9
    //   14: aload 9
    //   16: astore_3
    //   17: aload_3
    //   18: ifnull +47 -> 65
    //   21: ldc 73
    //   23: aload_3
    //   24: invokevirtual 78	java/lang/reflect/Method:getReturnType	()Ljava/lang/Class;
    //   27: invokevirtual 82	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   30: ifeq +35 -> 65
    //   33: aload_3
    //   34: aload_0
    //   35: iconst_0
    //   36: anewarray 4	java/lang/Object
    //   39: invokevirtual 86	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   42: checkcast 73	java/lang/Throwable
    //   45: astore 7
    //   47: aload 7
    //   49: areturn
    //   50: astore 8
    //   52: aconst_null
    //   53: astore_3
    //   54: goto -37 -> 17
    //   57: astore_2
    //   58: aconst_null
    //   59: astore_3
    //   60: goto -43 -> 17
    //   63: astore 6
    //   65: aconst_null
    //   66: areturn
    //   67: astore 5
    //   69: goto -4 -> 65
    //   72: astore 4
    //   74: goto -9 -> 65
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	50	java/lang/NoSuchMethodException
    //   0	14	57	java/lang/SecurityException
    //   33	47	63	java/lang/reflect/InvocationTargetException
    //   33	47	67	java/lang/IllegalArgumentException
    //   33	47	72	java/lang/IllegalAccessException
  }

  public static String[] getDefaultCauseMethodNames()
  {
    return (String[])ArrayUtils.clone(CAUSE_METHOD_NAMES);
  }

  public static String getMessage(Throwable paramThrowable)
  {
    if (paramThrowable == null)
      return "";
    String str1 = ClassUtils.getShortClassName(paramThrowable, null);
    String str2 = paramThrowable.getMessage();
    return str1 + ": " + StringUtils.defaultString(str2);
  }

  public static Throwable getRootCause(Throwable paramThrowable)
  {
    List localList = getThrowableList(paramThrowable);
    if (localList.size() < 2)
      return null;
    return (Throwable)localList.get(-1 + localList.size());
  }

  public static String getRootCauseMessage(Throwable paramThrowable)
  {
    Throwable localThrowable = getRootCause(paramThrowable);
    if (localThrowable == null);
    while (true)
    {
      return getMessage(paramThrowable);
      paramThrowable = localThrowable;
    }
  }

  public static String[] getRootCauseStackTrace(Throwable paramThrowable)
  {
    if (paramThrowable == null)
      return ArrayUtils.EMPTY_STRING_ARRAY;
    Throwable[] arrayOfThrowable = getThrowables(paramThrowable);
    int i = arrayOfThrowable.length;
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = getStackFrameList(arrayOfThrowable[(i - 1)]);
    int j = i;
    int k = j - 1;
    List localList;
    if (k >= 0)
    {
      if (k == 0)
        break label196;
      localList = getStackFrameList(arrayOfThrowable[(k - 1)]);
      removeCommonFrames((List)localObject1, localList);
    }
    label196: for (Object localObject2 = localList; ; localObject2 = localObject1)
    {
      if (k == i - 1)
        localArrayList.add(arrayOfThrowable[k].toString());
      while (true)
      {
        for (int m = 0; m < ((List)localObject1).size(); m++)
          localArrayList.add(((List)localObject1).get(m));
        localArrayList.add(" [wrapped] " + arrayOfThrowable[k].toString());
      }
      j = k;
      localObject1 = localObject2;
      break;
      return (String[])localArrayList.toArray(new String[localArrayList.size()]);
    }
  }

  static List getStackFrameList(Throwable paramThrowable)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(getStackTrace(paramThrowable), SystemUtils.LINE_SEPARATOR);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    do
      while (true)
      {
        if (!localStringTokenizer.hasMoreTokens())
          break label88;
        String str = localStringTokenizer.nextToken();
        int j = str.indexOf("at");
        if ((j == -1) || (str.substring(0, j).trim().length() != 0))
          break;
        i = 1;
        localArrayList.add(str);
      }
    while (i == 0);
    label88: return localArrayList;
  }

  static String[] getStackFrames(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, SystemUtils.LINE_SEPARATOR);
    ArrayList localArrayList = new ArrayList();
    while (localStringTokenizer.hasMoreTokens())
      localArrayList.add(localStringTokenizer.nextToken());
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }

  public static String[] getStackFrames(Throwable paramThrowable)
  {
    if (paramThrowable == null)
      return ArrayUtils.EMPTY_STRING_ARRAY;
    return getStackFrames(getStackTrace(paramThrowable));
  }

  public static String getStackTrace(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter, true));
    return localStringWriter.getBuffer().toString();
  }

  public static int getThrowableCount(Throwable paramThrowable)
  {
    return getThrowableList(paramThrowable).size();
  }

  public static List getThrowableList(Throwable paramThrowable)
  {
    ArrayList localArrayList = new ArrayList();
    while ((paramThrowable != null) && (!localArrayList.contains(paramThrowable)))
    {
      localArrayList.add(paramThrowable);
      paramThrowable = getCause(paramThrowable);
    }
    return localArrayList;
  }

  public static Throwable[] getThrowables(Throwable paramThrowable)
  {
    List localList = getThrowableList(paramThrowable);
    return (Throwable[])localList.toArray(new Throwable[localList.size()]);
  }

  private static int indexOf(Throwable paramThrowable, Class paramClass, int paramInt, boolean paramBoolean)
  {
    if ((paramThrowable == null) || (paramClass == null))
    {
      paramInt = -1;
      return paramInt;
    }
    if (paramInt < 0)
      paramInt = 0;
    Throwable[] arrayOfThrowable = getThrowables(paramThrowable);
    if (paramInt >= arrayOfThrowable.length)
      return -1;
    if (paramBoolean)
      while (true)
      {
        if (paramInt >= arrayOfThrowable.length)
          break label90;
        if (paramClass.isAssignableFrom(arrayOfThrowable[paramInt].getClass()))
          break;
        paramInt++;
      }
    do
    {
      paramInt++;
      if (paramInt >= arrayOfThrowable.length)
        break;
    }
    while (!paramClass.equals(arrayOfThrowable[paramInt].getClass()));
    return paramInt;
    label90: return -1;
  }

  public static int indexOfThrowable(Throwable paramThrowable, Class paramClass)
  {
    return indexOf(paramThrowable, paramClass, 0, false);
  }

  public static int indexOfThrowable(Throwable paramThrowable, Class paramClass, int paramInt)
  {
    return indexOf(paramThrowable, paramClass, paramInt, false);
  }

  public static int indexOfType(Throwable paramThrowable, Class paramClass)
  {
    return indexOf(paramThrowable, paramClass, 0, true);
  }

  public static int indexOfType(Throwable paramThrowable, Class paramClass, int paramInt)
  {
    return indexOf(paramThrowable, paramClass, paramInt, true);
  }

  public static void printRootCauseStackTrace(Throwable paramThrowable)
  {
    printRootCauseStackTrace(paramThrowable, System.err);
  }

  public static void printRootCauseStackTrace(Throwable paramThrowable, PrintStream paramPrintStream)
  {
    if (paramThrowable == null)
      return;
    if (paramPrintStream == null)
      throw new IllegalArgumentException("The PrintStream must not be null");
    String[] arrayOfString = getRootCauseStackTrace(paramThrowable);
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      paramPrintStream.println(arrayOfString[j]);
    paramPrintStream.flush();
  }

  public static void printRootCauseStackTrace(Throwable paramThrowable, PrintWriter paramPrintWriter)
  {
    if (paramThrowable == null)
      return;
    if (paramPrintWriter == null)
      throw new IllegalArgumentException("The PrintWriter must not be null");
    String[] arrayOfString = getRootCauseStackTrace(paramThrowable);
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      paramPrintWriter.println(arrayOfString[j]);
    paramPrintWriter.flush();
  }

  public static void removeCommonFrames(List paramList1, List paramList2)
  {
    if ((paramList1 == null) || (paramList2 == null))
      throw new IllegalArgumentException("The List must not be null");
    int i = -1 + paramList1.size();
    int j = -1 + paramList2.size();
    int m;
    for (int k = i; (k >= 0) && (j >= 0); k = m)
    {
      if (((String)paramList1.get(k)).equals((String)paramList2.get(j)))
        paramList1.remove(k);
      m = k - 1;
      j--;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.exception.ExceptionUtils
 * JD-Core Version:    0.6.2
 */