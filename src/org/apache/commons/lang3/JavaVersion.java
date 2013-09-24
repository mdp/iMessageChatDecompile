package org.apache.commons.lang3;

public enum JavaVersion
{
  private String name;
  private float value;

  static
  {
    JavaVersion[] arrayOfJavaVersion = new JavaVersion[9];
    arrayOfJavaVersion[0] = JAVA_0_9;
    arrayOfJavaVersion[1] = JAVA_1_1;
    arrayOfJavaVersion[2] = JAVA_1_2;
    arrayOfJavaVersion[3] = JAVA_1_3;
    arrayOfJavaVersion[4] = JAVA_1_4;
    arrayOfJavaVersion[5] = JAVA_1_5;
    arrayOfJavaVersion[6] = JAVA_1_6;
    arrayOfJavaVersion[7] = JAVA_1_7;
    arrayOfJavaVersion[8] = JAVA_1_8;
  }

  private JavaVersion(float arg3, String arg4)
  {
    Object localObject1;
    this.value = localObject1;
    Object localObject2;
    this.name = localObject2;
  }

  static JavaVersion get(String paramString)
  {
    if ("0.9".equals(paramString))
      return JAVA_0_9;
    if ("1.1".equals(paramString))
      return JAVA_1_1;
    if ("1.2".equals(paramString))
      return JAVA_1_2;
    if ("1.3".equals(paramString))
      return JAVA_1_3;
    if ("1.4".equals(paramString))
      return JAVA_1_4;
    if ("1.5".equals(paramString))
      return JAVA_1_5;
    if ("1.6".equals(paramString))
      return JAVA_1_6;
    if ("1.7".equals(paramString))
      return JAVA_1_7;
    if ("1.8".equals(paramString))
      return JAVA_1_8;
    return null;
  }

  static JavaVersion getJavaVersion(String paramString)
  {
    return get(paramString);
  }

  public final boolean atLeast(JavaVersion paramJavaVersion)
  {
    return this.value >= paramJavaVersion.value;
  }

  public final String toString()
  {
    return this.name;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.JavaVersion
 * JD-Core Version:    0.6.2
 */