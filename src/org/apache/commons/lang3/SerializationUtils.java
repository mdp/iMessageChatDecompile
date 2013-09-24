package org.apache.commons.lang3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Serializable;

public class SerializationUtils
{
  // ERROR //
  public static Serializable clone(Serializable paramSerializable)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 16	java/io/ByteArrayInputStream
    //   9: dup
    //   10: aload_0
    //   11: invokestatic 20	org/apache/commons/lang3/SerializationUtils:serialize	(Ljava/io/Serializable;)[B
    //   14: invokespecial 23	java/io/ByteArrayInputStream:<init>	([B)V
    //   17: astore_1
    //   18: new 25	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream
    //   21: dup
    //   22: aload_1
    //   23: aload_0
    //   24: invokevirtual 29	java/lang/Object:getClass	()Ljava/lang/Class;
    //   27: invokevirtual 35	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   30: invokespecial 38	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream:<init>	(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    //   33: astore_2
    //   34: aload_2
    //   35: invokevirtual 42	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream:readObject	()Ljava/lang/Object;
    //   38: checkcast 44	java/io/Serializable
    //   41: astore 7
    //   43: aload_2
    //   44: invokevirtual 47	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream:close	()V
    //   47: aload 7
    //   49: areturn
    //   50: astore 8
    //   52: new 49	org/apache/commons/lang3/SerializationException
    //   55: dup
    //   56: ldc 51
    //   58: aload 8
    //   60: invokespecial 54	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   63: athrow
    //   64: astore 11
    //   66: aconst_null
    //   67: astore_2
    //   68: aload 11
    //   70: astore_3
    //   71: new 49	org/apache/commons/lang3/SerializationException
    //   74: dup
    //   75: ldc 56
    //   77: aload_3
    //   78: invokespecial 54	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   81: athrow
    //   82: astore 4
    //   84: aload_2
    //   85: ifnull +7 -> 92
    //   88: aload_2
    //   89: invokevirtual 47	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream:close	()V
    //   92: aload 4
    //   94: athrow
    //   95: astore 10
    //   97: aconst_null
    //   98: astore_2
    //   99: aload 10
    //   101: astore 6
    //   103: new 49	org/apache/commons/lang3/SerializationException
    //   106: dup
    //   107: ldc 58
    //   109: aload 6
    //   111: invokespecial 54	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   114: athrow
    //   115: astore 5
    //   117: new 49	org/apache/commons/lang3/SerializationException
    //   120: dup
    //   121: ldc 51
    //   123: aload 5
    //   125: invokespecial 54	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   128: athrow
    //   129: astore 9
    //   131: aload 9
    //   133: astore 4
    //   135: aconst_null
    //   136: astore_2
    //   137: goto -53 -> 84
    //   140: astore 6
    //   142: goto -39 -> 103
    //   145: astore_3
    //   146: goto -75 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   43	47	50	java/io/IOException
    //   18	34	64	java/lang/ClassNotFoundException
    //   34	43	82	finally
    //   71	82	82	finally
    //   103	115	82	finally
    //   18	34	95	java/io/IOException
    //   88	92	115	java/io/IOException
    //   18	34	129	finally
    //   34	43	140	java/io/IOException
    //   34	43	145	java/lang/ClassNotFoundException
  }

  // ERROR //
  public static Object deserialize(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: new 62	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 64
    //   10: invokespecial 67	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aconst_null
    //   15: astore_1
    //   16: new 69	java/io/ObjectInputStream
    //   19: dup
    //   20: aload_0
    //   21: invokespecial 72	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   24: astore_2
    //   25: aload_2
    //   26: invokevirtual 73	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   29: astore 7
    //   31: aload_2
    //   32: invokevirtual 74	java/io/ObjectInputStream:close	()V
    //   35: aload 7
    //   37: areturn
    //   38: astore_3
    //   39: aconst_null
    //   40: astore_2
    //   41: new 49	org/apache/commons/lang3/SerializationException
    //   44: dup
    //   45: aload_3
    //   46: invokespecial 77	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/Throwable;)V
    //   49: athrow
    //   50: astore 4
    //   52: aload_2
    //   53: astore_1
    //   54: aload_1
    //   55: ifnull +7 -> 62
    //   58: aload_1
    //   59: invokevirtual 74	java/io/ObjectInputStream:close	()V
    //   62: aload 4
    //   64: athrow
    //   65: astore 6
    //   67: new 49	org/apache/commons/lang3/SerializationException
    //   70: dup
    //   71: aload 6
    //   73: invokespecial 77	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/Throwable;)V
    //   76: athrow
    //   77: astore 4
    //   79: goto -25 -> 54
    //   82: astore 8
    //   84: aload 7
    //   86: areturn
    //   87: astore 5
    //   89: goto -27 -> 62
    //   92: astore 6
    //   94: aload_2
    //   95: astore_1
    //   96: goto -29 -> 67
    //   99: astore_3
    //   100: goto -59 -> 41
    //
    // Exception table:
    //   from	to	target	type
    //   16	25	38	java/lang/ClassNotFoundException
    //   25	31	50	finally
    //   41	50	50	finally
    //   16	25	65	java/io/IOException
    //   16	25	77	finally
    //   67	77	77	finally
    //   31	35	82	java/io/IOException
    //   58	62	87	java/io/IOException
    //   25	31	92	java/io/IOException
    //   25	31	99	java/lang/ClassNotFoundException
  }

  public static Object deserialize(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("The byte[] must not be null");
    return deserialize(new ByteArrayInputStream(paramArrayOfByte));
  }

  // ERROR //
  public static void serialize(Serializable paramSerializable, java.io.OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 62	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 85
    //   10: invokespecial 67	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: new 87	java/io/ObjectOutputStream
    //   17: dup
    //   18: aload_1
    //   19: invokespecial 90	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore_2
    //   23: aload_2
    //   24: aload_0
    //   25: invokevirtual 94	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   28: aload_2
    //   29: invokevirtual 95	java/io/ObjectOutputStream:close	()V
    //   32: return
    //   33: astore_3
    //   34: aconst_null
    //   35: astore_2
    //   36: new 49	org/apache/commons/lang3/SerializationException
    //   39: dup
    //   40: aload_3
    //   41: invokespecial 77	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/Throwable;)V
    //   44: athrow
    //   45: astore 4
    //   47: aload_2
    //   48: ifnull +7 -> 55
    //   51: aload_2
    //   52: invokevirtual 95	java/io/ObjectOutputStream:close	()V
    //   55: aload 4
    //   57: athrow
    //   58: astore 6
    //   60: return
    //   61: astore 5
    //   63: goto -8 -> 55
    //   66: astore 4
    //   68: aconst_null
    //   69: astore_2
    //   70: goto -23 -> 47
    //   73: astore_3
    //   74: goto -38 -> 36
    //
    // Exception table:
    //   from	to	target	type
    //   14	23	33	java/io/IOException
    //   23	28	45	finally
    //   36	45	45	finally
    //   28	32	58	java/io/IOException
    //   51	55	61	java/io/IOException
    //   14	23	66	finally
    //   23	28	73	java/io/IOException
  }

  public static byte[] serialize(Serializable paramSerializable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(512);
    serialize(paramSerializable, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.SerializationUtils
 * JD-Core Version:    0.6.2
 */