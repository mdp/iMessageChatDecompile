package org.apache.commons.lang3.event;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Proxy;
import org.apache.commons.lang3.reflect.MethodUtils;

public class EventUtils
{
  public static void addEventListener(Object paramObject1, Class paramClass, Object paramObject2)
  {
    try
    {
      MethodUtils.invokeMethod(paramObject1, "add" + paramClass.getSimpleName(), new Object[] { paramObject2 });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new IllegalArgumentException("Class " + paramObject1.getClass().getName() + " does not have a public add" + paramClass.getSimpleName() + " method which takes a parameter of type " + paramClass.getName() + ".");
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalArgumentException("Class " + paramObject1.getClass().getName() + " does not have an accessible add" + paramClass.getSimpleName() + " method which takes a parameter of type " + paramClass.getName() + ".");
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("Unable to add listener.", localInvocationTargetException.getCause());
    }
  }

  public static void bindEventsToMethod(Object paramObject1, String paramString, Object paramObject2, Class paramClass, String[] paramArrayOfString)
  {
    addEventListener(paramObject2, paramClass, paramClass.cast(Proxy.newProxyInstance(paramObject1.getClass().getClassLoader(), new Class[] { paramClass }, new EventUtils.EventBindingInvocationHandler(paramObject1, paramString, paramArrayOfString))));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.event.EventUtils
 * JD-Core Version:    0.6.2
 */