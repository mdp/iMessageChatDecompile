package org.jsoup.safety;

class Whitelist$AttributeKey extends Whitelist.TypedValue
{
  private Whitelist$AttributeKey(String paramString)
  {
    super(paramString);
  }

  static AttributeKey a(String paramString)
  {
    return new AttributeKey(paramString);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.safety.Whitelist.AttributeKey
 * JD-Core Version:    0.6.2
 */