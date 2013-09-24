package org.jsoup.parser;

public class ParseError
{
  private int a;
  private String b;

  ParseError(int paramInt, String paramString)
  {
    this.a = paramInt;
    this.b = paramString;
  }

  ParseError(int paramInt, String paramString, Object[] paramArrayOfObject)
  {
    this.b = String.format(paramString, paramArrayOfObject);
    this.a = paramInt;
  }

  public String toString()
  {
    return this.a + ": " + this.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.ParseError
 * JD-Core Version:    0.6.2
 */