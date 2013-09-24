package org.apache.commons.lang3;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

class SerializationUtils$ClassLoaderAwareObjectInputStream extends ObjectInputStream
{
  private ClassLoader classLoader;

  public SerializationUtils$ClassLoaderAwareObjectInputStream(InputStream paramInputStream, ClassLoader paramClassLoader)
  {
    super(paramInputStream);
    this.classLoader = paramClassLoader;
  }

  protected Class resolveClass(ObjectStreamClass paramObjectStreamClass)
  {
    String str = paramObjectStreamClass.getName();
    try
    {
      Class localClass = Class.forName(str, false, this.classLoader);
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    return Class.forName(str, false, Thread.currentThread().getContextClassLoader());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.SerializationUtils.ClassLoaderAwareObjectInputStream
 * JD-Core Version:    0.6.2
 */