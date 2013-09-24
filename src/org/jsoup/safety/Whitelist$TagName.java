package org.jsoup.safety;

class Whitelist$TagName extends Whitelist.TypedValue
{
  private Whitelist$TagName(String paramString)
  {
    super(paramString);
  }

  static TagName a(String paramString)
  {
    return new TagName(paramString);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.safety.Whitelist.TagName
 * JD-Core Version:    0.6.2
 */