package org.apache.commons.lang3.event;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public class EventListenerSupport$ProxyInvocationHandler
  implements InvocationHandler
{
  private static final long serialVersionUID = 1L;

  protected EventListenerSupport$ProxyInvocationHandler(EventListenerSupport paramEventListenerSupport)
  {
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    Iterator localIterator = EventListenerSupport.access$000(this.this$0).iterator();
    while (localIterator.hasNext())
      paramMethod.invoke(localIterator.next(), paramArrayOfObject);
    return null;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.event.EventListenerSupport.ProxyInvocationHandler
 * JD-Core Version:    0.6.2
 */