package org.apache.commons.lang3.exception;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

public class DefaultExceptionContext
  implements Serializable, ExceptionContext
{
  private static final long serialVersionUID = 20110706L;
  private final List contextValues = new ArrayList();

  public DefaultExceptionContext addContextValue(String paramString, Object paramObject)
  {
    this.contextValues.add(new ImmutablePair(paramString, paramObject));
    return this;
  }

  public List getContextEntries()
  {
    return this.contextValues;
  }

  public Set getContextLabels()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.contextValues.iterator();
    while (localIterator.hasNext())
      localHashSet.add(((Pair)localIterator.next()).getKey());
    return localHashSet;
  }

  public List getContextValues(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.contextValues.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      if (StringUtils.equals(paramString, (CharSequence)localPair.getKey()))
        localArrayList.add(localPair.getValue());
    }
    return localArrayList;
  }

  public Object getFirstContextValue(String paramString)
  {
    Iterator localIterator = this.contextValues.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      if (StringUtils.equals(paramString, (CharSequence)localPair.getKey()))
        return localPair.getValue();
    }
    return null;
  }

  public String getFormattedExceptionMessage(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    if (paramString != null)
      localStringBuilder.append(paramString);
    if (this.contextValues.size() > 0)
    {
      if (localStringBuilder.length() > 0)
        localStringBuilder.append('\n');
      localStringBuilder.append("Exception Context:\n");
      Iterator localIterator = this.contextValues.iterator();
      int i = 0;
      if (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        localStringBuilder.append("\t[");
        int j = i + 1;
        localStringBuilder.append(j);
        localStringBuilder.append(':');
        localStringBuilder.append((String)localPair.getKey());
        localStringBuilder.append("=");
        Object localObject = localPair.getValue();
        if (localObject == null)
          localStringBuilder.append("null");
        while (true)
        {
          localStringBuilder.append("]\n");
          i = j;
          break;
          try
          {
            String str2 = localObject.toString();
            str1 = str2;
            localStringBuilder.append(str1);
          }
          catch (Exception localException)
          {
            while (true)
              String str1 = "Exception thrown on toString(): " + ExceptionUtils.getStackTrace(localException);
          }
        }
      }
      localStringBuilder.append("---------------------------------");
    }
    return localStringBuilder.toString();
  }

  public DefaultExceptionContext setContextValue(String paramString, Object paramObject)
  {
    Iterator localIterator = this.contextValues.iterator();
    while (localIterator.hasNext())
      if (StringUtils.equals(paramString, (CharSequence)((Pair)localIterator.next()).getKey()))
        localIterator.remove();
    addContextValue(paramString, paramObject);
    return this;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.exception.DefaultExceptionContext
 * JD-Core Version:    0.6.2
 */