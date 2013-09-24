package org.apache.commons.lang3.event;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.lang3.Validate;

public class EventListenerSupport
  implements Serializable
{
  private static final long serialVersionUID = 3593265990380473632L;
  private List listeners = new CopyOnWriteArrayList();
  private transient Object[] prototypeArray;
  private transient Object proxy;

  private EventListenerSupport()
  {
  }

  public EventListenerSupport(Class paramClass)
  {
    this(paramClass, Thread.currentThread().getContextClassLoader());
  }

  public EventListenerSupport(Class paramClass, ClassLoader paramClassLoader)
  {
    this();
    Validate.notNull(paramClass, "Listener interface cannot be null.", new Object[0]);
    Validate.notNull(paramClassLoader, "ClassLoader cannot be null.", new Object[0]);
    boolean bool = paramClass.isInterface();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramClass.getName();
    Validate.isTrue(bool, "Class {0} is not an interface", arrayOfObject);
    initializeTransientFields(paramClass, paramClassLoader);
  }

  public static EventListenerSupport create(Class paramClass)
  {
    return new EventListenerSupport(paramClass);
  }

  private void createProxy(Class paramClass, ClassLoader paramClassLoader)
  {
    this.proxy = paramClass.cast(Proxy.newProxyInstance(paramClassLoader, new Class[] { paramClass }, createInvocationHandler()));
  }

  private void initializeTransientFields(Class paramClass, ClassLoader paramClassLoader)
  {
    this.prototypeArray = ((Object[])Array.newInstance(paramClass, 0));
    createProxy(paramClass, paramClassLoader);
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    Object[] arrayOfObject = (Object[])paramObjectInputStream.readObject();
    this.listeners = new CopyOnWriteArrayList(arrayOfObject);
    initializeTransientFields(arrayOfObject.getClass().getComponentType(), Thread.currentThread().getContextClassLoader());
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    ArrayList localArrayList = new ArrayList();
    ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(new ByteArrayOutputStream());
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      try
      {
        localObjectOutputStream.writeObject(localObject);
        localArrayList.add(localObject);
      }
      catch (IOException localIOException)
      {
        localObjectOutputStream = new ObjectOutputStream(new ByteArrayOutputStream());
      }
    }
    paramObjectOutputStream.writeObject(localArrayList.toArray(this.prototypeArray));
  }

  public void addListener(Object paramObject)
  {
    Validate.notNull(paramObject, "Listener object cannot be null.", new Object[0]);
    this.listeners.add(paramObject);
  }

  protected InvocationHandler createInvocationHandler()
  {
    return new EventListenerSupport.ProxyInvocationHandler(this);
  }

  public Object fire()
  {
    return this.proxy;
  }

  int getListenerCount()
  {
    return this.listeners.size();
  }

  public Object[] getListeners()
  {
    return this.listeners.toArray(this.prototypeArray);
  }

  public void removeListener(Object paramObject)
  {
    Validate.notNull(paramObject, "Listener object cannot be null.", new Object[0]);
    this.listeners.remove(paramObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.event.EventListenerSupport
 * JD-Core Version:    0.6.2
 */