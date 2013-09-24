package org.apache.commons.lang3;

import java.io.Serializable;

public class ObjectUtils$Null
  implements Serializable
{
  private static final long serialVersionUID = 7092611880189329093L;

  private Object readResolve()
  {
    return ObjectUtils.NULL;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.ObjectUtils.Null
 * JD-Core Version:    0.6.2
 */