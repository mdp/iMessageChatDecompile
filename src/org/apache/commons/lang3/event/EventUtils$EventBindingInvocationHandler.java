package org.apache.commons.lang3.event;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.reflect.MethodUtils;

class EventUtils$EventBindingInvocationHandler
  implements InvocationHandler
{
  private final Set eventTypes;
  private final String methodName;
  private final Object target;

  EventUtils$EventBindingInvocationHandler(Object paramObject, String paramString, String[] paramArrayOfString)
  {
    this.target = paramObject;
    this.methodName = paramString;
    this.eventTypes = new HashSet(Arrays.asList(paramArrayOfString));
  }

  private boolean hasMatchingParametersMethod(Method paramMethod)
  {
    return MethodUtils.getAccessibleMethod(this.target.getClass(), this.methodName, paramMethod.getParameterTypes()) != null;
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    if ((this.eventTypes.isEmpty()) || (this.eventTypes.contains(paramMethod.getName())))
    {
      if (hasMatchingParametersMethod(paramMethod))
        return MethodUtils.invokeMethod(this.target, this.methodName, paramArrayOfObject);
      return MethodUtils.invokeMethod(this.target, this.methodName, new Object[0]);
    }
    return null;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.event.EventUtils.EventBindingInvocationHandler
 * JD-Core Version:    0.6.2
 */