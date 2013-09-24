package org.apache.commons.lang3.math;

public class IEEE754rUtils
{
  public static double max(double paramDouble1, double paramDouble2)
  {
    if (Double.isNaN(paramDouble1))
      return paramDouble2;
    if (Double.isNaN(paramDouble2))
      return paramDouble1;
    return Math.max(paramDouble1, paramDouble2);
  }

  public static double max(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    return max(max(paramDouble1, paramDouble2), paramDouble3);
  }

  public static double max(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfDouble.length == 0)
      throw new IllegalArgumentException("Array cannot be empty.");
    double d = paramArrayOfDouble[0];
    for (int i = 1; i < paramArrayOfDouble.length; i++)
      d = max(paramArrayOfDouble[i], d);
    return d;
  }

  public static float max(float paramFloat1, float paramFloat2)
  {
    if (Float.isNaN(paramFloat1))
      return paramFloat2;
    if (Float.isNaN(paramFloat2))
      return paramFloat1;
    return Math.max(paramFloat1, paramFloat2);
  }

  public static float max(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return max(max(paramFloat1, paramFloat2), paramFloat3);
  }

  public static float max(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfFloat.length == 0)
      throw new IllegalArgumentException("Array cannot be empty.");
    float f = paramArrayOfFloat[0];
    for (int i = 1; i < paramArrayOfFloat.length; i++)
      f = max(paramArrayOfFloat[i], f);
    return f;
  }

  public static double min(double paramDouble1, double paramDouble2)
  {
    if (Double.isNaN(paramDouble1))
      return paramDouble2;
    if (Double.isNaN(paramDouble2))
      return paramDouble1;
    return Math.min(paramDouble1, paramDouble2);
  }

  public static double min(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    return min(min(paramDouble1, paramDouble2), paramDouble3);
  }

  public static double min(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfDouble.length == 0)
      throw new IllegalArgumentException("Array cannot be empty.");
    double d = paramArrayOfDouble[0];
    for (int i = 1; i < paramArrayOfDouble.length; i++)
      d = min(paramArrayOfDouble[i], d);
    return d;
  }

  public static float min(float paramFloat1, float paramFloat2)
  {
    if (Float.isNaN(paramFloat1))
      return paramFloat2;
    if (Float.isNaN(paramFloat2))
      return paramFloat1;
    return Math.min(paramFloat1, paramFloat2);
  }

  public static float min(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return min(min(paramFloat1, paramFloat2), paramFloat3);
  }

  public static float min(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfFloat.length == 0)
      throw new IllegalArgumentException("Array cannot be empty.");
    float f = paramArrayOfFloat[0];
    for (int i = 1; i < paramArrayOfFloat.length; i++)
      f = min(paramArrayOfFloat[i], f);
    return f;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.math.IEEE754rUtils
 * JD-Core Version:    0.6.2
 */