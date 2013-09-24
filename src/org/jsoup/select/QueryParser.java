package org.jsoup.select;

import java.util.regex.Pattern;

class QueryParser
{
  private static final String[] a = { ",", ">", "+", "~", " " };
  private static final Pattern b = Pattern.compile("((\\+|-)?(\\d+)?)n(\\s*(\\+|-)?\\s*\\d+)?", 2);
  private static final Pattern c = Pattern.compile("(\\+|-)?(\\d+)");
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.QueryParser
 * JD-Core Version:    0.6.2
 */