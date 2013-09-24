package org.apache.commons.lang3;

import java.lang.reflect.Method;
import java.util.regex.Pattern;

class StringUtils$InitStripAccents
{
  private static final Throwable java6Exception;
  private static final Method java6NormalizeMethod;
  private static final Object java6NormalizerFormNFD;
  private static final Pattern java6Pattern;
  private static final Method sunDecomposeMethod;
  private static final Throwable sunException;
  private static final Pattern sunPattern;

  // ERROR //
  static
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: ldc 21
    //   4: invokestatic 27	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   7: astore_1
    //   8: aload_1
    //   9: putstatic 29	org/apache/commons/lang3/StringUtils$InitStripAccents:sunPattern	Ljava/util/regex/Pattern;
    //   12: aload_1
    //   13: putstatic 31	org/apache/commons/lang3/StringUtils$InitStripAccents:java6Pattern	Ljava/util/regex/Pattern;
    //   16: invokestatic 37	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   19: invokevirtual 41	java/lang/Thread:getContextClassLoader	()Ljava/lang/ClassLoader;
    //   22: ldc 43
    //   24: invokevirtual 49	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   27: astore 12
    //   29: aload 12
    //   31: ldc 51
    //   33: invokevirtual 57	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   36: aconst_null
    //   37: invokevirtual 63	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   40: astore 13
    //   42: invokestatic 37	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   45: invokevirtual 41	java/lang/Thread:getContextClassLoader	()Ljava/lang/ClassLoader;
    //   48: ldc 65
    //   50: invokevirtual 49	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   53: ldc 67
    //   55: iconst_2
    //   56: anewarray 53	java/lang/Class
    //   59: dup
    //   60: iconst_0
    //   61: ldc 69
    //   63: aastore
    //   64: dup
    //   65: iconst_1
    //   66: aload 12
    //   68: aastore
    //   69: invokevirtual 73	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   72: astore 15
    //   74: aload 15
    //   76: astore 8
    //   78: aload 13
    //   80: astore 5
    //   82: aconst_null
    //   83: astore 6
    //   85: aconst_null
    //   86: astore 7
    //   88: aload 6
    //   90: putstatic 75	org/apache/commons/lang3/StringUtils$InitStripAccents:java6Exception	Ljava/lang/Throwable;
    //   93: aload 5
    //   95: putstatic 77	org/apache/commons/lang3/StringUtils$InitStripAccents:java6NormalizerFormNFD	Ljava/lang/Object;
    //   98: aload 8
    //   100: putstatic 79	org/apache/commons/lang3/StringUtils$InitStripAccents:java6NormalizeMethod	Ljava/lang/reflect/Method;
    //   103: aload_0
    //   104: putstatic 81	org/apache/commons/lang3/StringUtils$InitStripAccents:sunException	Ljava/lang/Throwable;
    //   107: aload 7
    //   109: putstatic 83	org/apache/commons/lang3/StringUtils$InitStripAccents:sunDecomposeMethod	Ljava/lang/reflect/Method;
    //   112: return
    //   113: astore_2
    //   114: aconst_null
    //   115: astore_3
    //   116: invokestatic 37	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   119: invokevirtual 41	java/lang/Thread:getContextClassLoader	()Ljava/lang/ClassLoader;
    //   122: ldc 85
    //   124: invokevirtual 49	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   127: astore 9
    //   129: iconst_3
    //   130: anewarray 53	java/lang/Class
    //   133: astore 10
    //   135: aload 10
    //   137: iconst_0
    //   138: ldc 87
    //   140: aastore
    //   141: aload 10
    //   143: iconst_1
    //   144: getstatic 93	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   147: aastore
    //   148: aload 10
    //   150: iconst_2
    //   151: getstatic 96	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   154: aastore
    //   155: aload 9
    //   157: ldc 98
    //   159: aload 10
    //   161: invokevirtual 73	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   164: astore 11
    //   166: aload_3
    //   167: astore 5
    //   169: aload_2
    //   170: astore 6
    //   172: aload 11
    //   174: astore 7
    //   176: aconst_null
    //   177: astore_0
    //   178: aconst_null
    //   179: astore 8
    //   181: goto -93 -> 88
    //   184: astore 4
    //   186: aload_3
    //   187: astore 5
    //   189: aload 4
    //   191: astore_0
    //   192: aload_2
    //   193: astore 6
    //   195: aconst_null
    //   196: astore 7
    //   198: aconst_null
    //   199: astore 8
    //   201: goto -113 -> 88
    //   204: astore 14
    //   206: aload 13
    //   208: astore_3
    //   209: aload 14
    //   211: astore_2
    //   212: goto -96 -> 116
    //
    // Exception table:
    //   from	to	target	type
    //   16	42	113	java/lang/Exception
    //   116	166	184	java/lang/Exception
    //   42	74	204	java/lang/Exception
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.StringUtils.InitStripAccents
 * JD-Core Version:    0.6.2
 */