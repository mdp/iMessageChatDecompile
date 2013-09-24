package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class StrSubstitutor
{
  public static final char DEFAULT_ESCAPE = '$';
  public static final StrMatcher DEFAULT_PREFIX = StrMatcher.stringMatcher("${");
  public static final StrMatcher DEFAULT_SUFFIX = StrMatcher.stringMatcher("}");
  private boolean enableSubstitutionInVariables;
  private char escapeChar;
  private StrMatcher prefixMatcher;
  private StrMatcher suffixMatcher;
  private StrLookup variableResolver;

  public StrSubstitutor()
  {
    this(null, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
  }

  public StrSubstitutor(Map paramMap)
  {
    this(StrLookup.mapLookup(paramMap), DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
  }

  public StrSubstitutor(Map paramMap, String paramString1, String paramString2)
  {
    this(StrLookup.mapLookup(paramMap), paramString1, paramString2, '$');
  }

  public StrSubstitutor(Map paramMap, String paramString1, String paramString2, char paramChar)
  {
    this(StrLookup.mapLookup(paramMap), paramString1, paramString2, paramChar);
  }

  public StrSubstitutor(StrLookup paramStrLookup)
  {
    this(paramStrLookup, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
  }

  public StrSubstitutor(StrLookup paramStrLookup, String paramString1, String paramString2, char paramChar)
  {
    setVariableResolver(paramStrLookup);
    setVariablePrefix(paramString1);
    setVariableSuffix(paramString2);
    setEscapeChar(paramChar);
  }

  public StrSubstitutor(StrLookup paramStrLookup, StrMatcher paramStrMatcher1, StrMatcher paramStrMatcher2, char paramChar)
  {
    setVariableResolver(paramStrLookup);
    setVariablePrefixMatcher(paramStrMatcher1);
    setVariableSuffixMatcher(paramStrMatcher2);
    setEscapeChar(paramChar);
  }

  private void checkCyclicSubstitution(String paramString, List paramList)
  {
    if (!paramList.contains(paramString))
      return;
    StrBuilder localStrBuilder = new StrBuilder(256);
    localStrBuilder.append("Infinite loop in property interpolation of ");
    localStrBuilder.append((String)paramList.remove(0));
    localStrBuilder.append(": ");
    localStrBuilder.appendWithSeparators(paramList, "->");
    throw new IllegalStateException(localStrBuilder.toString());
  }

  public static String replace(Object paramObject, Map paramMap)
  {
    return new StrSubstitutor(paramMap).replace(paramObject);
  }

  public static String replace(Object paramObject, Map paramMap, String paramString1, String paramString2)
  {
    return new StrSubstitutor(paramMap, paramString1, paramString2).replace(paramObject);
  }

  public static String replace(Object paramObject, Properties paramProperties)
  {
    if (paramProperties == null)
      return paramObject.toString();
    HashMap localHashMap = new HashMap();
    Enumeration localEnumeration = paramProperties.propertyNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      localHashMap.put(str, paramProperties.getProperty(str));
    }
    return replace(paramObject, localHashMap);
  }

  public static String replaceSystemProperties(Object paramObject)
  {
    return new StrSubstitutor(StrLookup.systemPropertiesLookup()).replace(paramObject);
  }

  private int substitute(StrBuilder paramStrBuilder, int paramInt1, int paramInt2, List paramList)
  {
    StrMatcher localStrMatcher1 = getVariablePrefixMatcher();
    StrMatcher localStrMatcher2 = getVariableSuffixMatcher();
    int i = getEscapeChar();
    int j;
    int k;
    int m;
    char[] arrayOfChar;
    int n;
    int i1;
    Object localObject;
    if (paramList == null)
    {
      j = 1;
      k = 0;
      m = 0;
      arrayOfChar = paramStrBuilder.buffer;
      n = paramInt1 + paramInt2;
      i1 = paramInt1;
      localObject = paramList;
    }
    int i4;
    int i5;
    label147: int i6;
    String str1;
    StrBuilder localStrBuilder;
    while (true)
      if (i1 < n)
      {
        int i2 = localStrMatcher1.isMatch(arrayOfChar, i1, paramInt1, n);
        if (i2 == 0)
        {
          i1++;
          continue;
          j = 0;
          break;
        }
        if ((i1 > paramInt1) && (arrayOfChar[(i1 - 1)] == i))
        {
          paramStrBuilder.deleteCharAt(i1 - 1);
          arrayOfChar = paramStrBuilder.buffer;
          m--;
          k = 1;
          n--;
        }
        else
        {
          int i3 = i1 + i2;
          i4 = 0;
          i5 = i3;
          while (true)
            if (i5 < n)
              if (isEnableSubstitutionInVariables())
              {
                int i10 = localStrMatcher1.isMatch(arrayOfChar, i5, paramInt1, n);
                if (i10 != 0)
                {
                  i4++;
                  i5 = i10 + i5;
                }
              }
              else
              {
                i6 = localStrMatcher2.isMatch(arrayOfChar, i5, paramInt1, n);
                if (i6 == 0)
                {
                  i5++;
                }
                else if (i4 == 0)
                {
                  str1 = new String(arrayOfChar, i1 + i2, i5 - i1 - i2);
                  if (!isEnableSubstitutionInVariables())
                    break label493;
                  localStrBuilder = new StrBuilder(str1);
                  substitute(localStrBuilder, 0, localStrBuilder.length());
                }
              }
        }
      }
    label493: for (String str2 = localStrBuilder.toString(); ; str2 = str1)
    {
      int i7 = i5 + i6;
      if (localObject == null)
      {
        localObject = new ArrayList();
        ((List)localObject).add(new String(arrayOfChar, paramInt1, paramInt2));
      }
      checkCyclicSubstitution(str2, (List)localObject);
      ((List)localObject).add(str2);
      String str3 = resolveVariable(str2, paramStrBuilder, i1, i7);
      if (str3 != null)
      {
        int i8 = str3.length();
        paramStrBuilder.replace(i1, i7, str3);
        k = 1;
        int i9 = i8 + substitute(paramStrBuilder, i1, i8, (List)localObject) - (i7 - i1);
        i7 += i9;
        n += i9;
        m += i9;
        arrayOfChar = paramStrBuilder.buffer;
      }
      ((List)localObject).remove(-1 + ((List)localObject).size());
      i1 = i7;
      break;
      i4--;
      i5 += i6;
      break label147;
      i1 = i5;
      break;
      if (j != 0)
      {
        if (k != 0)
          m = 1;
      }
      else
        return m;
      return 0;
    }
  }

  public char getEscapeChar()
  {
    return this.escapeChar;
  }

  public StrMatcher getVariablePrefixMatcher()
  {
    return this.prefixMatcher;
  }

  public StrLookup getVariableResolver()
  {
    return this.variableResolver;
  }

  public StrMatcher getVariableSuffixMatcher()
  {
    return this.suffixMatcher;
  }

  public boolean isEnableSubstitutionInVariables()
  {
    return this.enableSubstitutionInVariables;
  }

  public String replace(Object paramObject)
  {
    if (paramObject == null)
      return null;
    StrBuilder localStrBuilder = new StrBuilder().append(paramObject);
    substitute(localStrBuilder, 0, localStrBuilder.length());
    return localStrBuilder.toString();
  }

  public String replace(String paramString)
  {
    if (paramString == null)
      paramString = null;
    StrBuilder localStrBuilder;
    do
    {
      return paramString;
      localStrBuilder = new StrBuilder(paramString);
    }
    while (!substitute(localStrBuilder, 0, paramString.length()));
    return localStrBuilder.toString();
  }

  public String replace(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null)
      return null;
    StrBuilder localStrBuilder = new StrBuilder(paramInt2).append(paramString, paramInt1, paramInt2);
    if (!substitute(localStrBuilder, 0, paramInt2))
      return paramString.substring(paramInt1, paramInt1 + paramInt2);
    return localStrBuilder.toString();
  }

  public String replace(StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null)
      return null;
    StrBuilder localStrBuilder = new StrBuilder(paramStringBuffer.length()).append(paramStringBuffer);
    substitute(localStrBuilder, 0, localStrBuilder.length());
    return localStrBuilder.toString();
  }

  public String replace(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    if (paramStringBuffer == null)
      return null;
    StrBuilder localStrBuilder = new StrBuilder(paramInt2).append(paramStringBuffer, paramInt1, paramInt2);
    substitute(localStrBuilder, 0, paramInt2);
    return localStrBuilder.toString();
  }

  public String replace(StrBuilder paramStrBuilder)
  {
    if (paramStrBuilder == null)
      return null;
    StrBuilder localStrBuilder = new StrBuilder(paramStrBuilder.length()).append(paramStrBuilder);
    substitute(localStrBuilder, 0, localStrBuilder.length());
    return localStrBuilder.toString();
  }

  public String replace(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    if (paramStrBuilder == null)
      return null;
    StrBuilder localStrBuilder = new StrBuilder(paramInt2).append(paramStrBuilder, paramInt1, paramInt2);
    substitute(localStrBuilder, 0, paramInt2);
    return localStrBuilder.toString();
  }

  public String replace(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null)
      return null;
    StrBuilder localStrBuilder = new StrBuilder(paramArrayOfChar.length).append(paramArrayOfChar);
    substitute(localStrBuilder, 0, paramArrayOfChar.length);
    return localStrBuilder.toString();
  }

  public String replace(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramArrayOfChar == null)
      return null;
    StrBuilder localStrBuilder = new StrBuilder(paramInt2).append(paramArrayOfChar, paramInt1, paramInt2);
    substitute(localStrBuilder, 0, paramInt2);
    return localStrBuilder.toString();
  }

  public boolean replaceIn(StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null)
      return false;
    return replaceIn(paramStringBuffer, 0, paramStringBuffer.length());
  }

  public boolean replaceIn(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    if (paramStringBuffer == null);
    StrBuilder localStrBuilder;
    do
    {
      return false;
      localStrBuilder = new StrBuilder(paramInt2).append(paramStringBuffer, paramInt1, paramInt2);
    }
    while (!substitute(localStrBuilder, 0, paramInt2));
    paramStringBuffer.replace(paramInt1, paramInt1 + paramInt2, localStrBuilder.toString());
    return true;
  }

  public boolean replaceIn(StrBuilder paramStrBuilder)
  {
    if (paramStrBuilder == null)
      return false;
    return substitute(paramStrBuilder, 0, paramStrBuilder.length());
  }

  public boolean replaceIn(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    if (paramStrBuilder == null)
      return false;
    return substitute(paramStrBuilder, paramInt1, paramInt2);
  }

  protected String resolveVariable(String paramString, StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    StrLookup localStrLookup = getVariableResolver();
    if (localStrLookup == null)
      return null;
    return localStrLookup.lookup(paramString);
  }

  public void setEnableSubstitutionInVariables(boolean paramBoolean)
  {
    this.enableSubstitutionInVariables = paramBoolean;
  }

  public void setEscapeChar(char paramChar)
  {
    this.escapeChar = paramChar;
  }

  public StrSubstitutor setVariablePrefix(char paramChar)
  {
    return setVariablePrefixMatcher(StrMatcher.charMatcher(paramChar));
  }

  public StrSubstitutor setVariablePrefix(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("Variable prefix must not be null!");
    return setVariablePrefixMatcher(StrMatcher.stringMatcher(paramString));
  }

  public StrSubstitutor setVariablePrefixMatcher(StrMatcher paramStrMatcher)
  {
    if (paramStrMatcher == null)
      throw new IllegalArgumentException("Variable prefix matcher must not be null!");
    this.prefixMatcher = paramStrMatcher;
    return this;
  }

  public void setVariableResolver(StrLookup paramStrLookup)
  {
    this.variableResolver = paramStrLookup;
  }

  public StrSubstitutor setVariableSuffix(char paramChar)
  {
    return setVariableSuffixMatcher(StrMatcher.charMatcher(paramChar));
  }

  public StrSubstitutor setVariableSuffix(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("Variable suffix must not be null!");
    return setVariableSuffixMatcher(StrMatcher.stringMatcher(paramString));
  }

  public StrSubstitutor setVariableSuffixMatcher(StrMatcher paramStrMatcher)
  {
    if (paramStrMatcher == null)
      throw new IllegalArgumentException("Variable suffix matcher must not be null!");
    this.suffixMatcher = paramStrMatcher;
    return this;
  }

  protected boolean substitute(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    return substitute(paramStrBuilder, paramInt1, paramInt2, null) > 0;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrSubstitutor
 * JD-Core Version:    0.6.2
 */