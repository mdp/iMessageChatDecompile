package org.apache.commons.lang3;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.builder.ToStringStyle;

class AnnotationUtils$1 extends ToStringStyle
{
  private static final long serialVersionUID = 1L;

  AnnotationUtils$1()
  {
    setDefaultFullDetail(true);
    setArrayContentDetail(true);
    setUseClassName(true);
    setUseShortClassName(true);
    setUseIdentityHashCode(false);
    setContentStart("(");
    setContentEnd(")");
    setFieldSeparator(", ");
    setArrayStart("[");
    setArrayEnd("]");
  }

  protected void appendDetail(StringBuffer paramStringBuffer, String paramString, Object paramObject)
  {
    if ((paramObject instanceof Annotation))
      paramObject = AnnotationUtils.toString((Annotation)paramObject);
    super.appendDetail(paramStringBuffer, paramString, paramObject);
  }

  protected String getShortClassName(Class paramClass)
  {
    Iterator localIterator = ClassUtils.getAllInterfaces(paramClass).iterator();
    Class localClass;
    do
    {
      if (!localIterator.hasNext())
        break;
      localClass = (Class)localIterator.next();
    }
    while (!Annotation.class.isAssignableFrom(localClass));
    while (true)
    {
      if (localClass == null);
      for (String str = ""; ; str = localClass.getName())
        return new StringBuilder(str).insert(0, '@').toString();
      localClass = null;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.AnnotationUtils.1
 * JD-Core Version:    0.6.2
 */