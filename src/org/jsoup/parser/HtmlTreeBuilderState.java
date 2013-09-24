package org.jsoup.parser;

 enum HtmlTreeBuilderState
{
  private static String x = String.valueOf('\000');

  static
  {
    HtmlTreeBuilderState[] arrayOfHtmlTreeBuilderState = new HtmlTreeBuilderState[23];
    arrayOfHtmlTreeBuilderState[0] = a;
    arrayOfHtmlTreeBuilderState[1] = b;
    arrayOfHtmlTreeBuilderState[2] = c;
    arrayOfHtmlTreeBuilderState[3] = d;
    arrayOfHtmlTreeBuilderState[4] = e;
    arrayOfHtmlTreeBuilderState[5] = f;
    arrayOfHtmlTreeBuilderState[6] = g;
    arrayOfHtmlTreeBuilderState[7] = h;
    arrayOfHtmlTreeBuilderState[8] = i;
    arrayOfHtmlTreeBuilderState[9] = j;
    arrayOfHtmlTreeBuilderState[10] = k;
    arrayOfHtmlTreeBuilderState[11] = l;
    arrayOfHtmlTreeBuilderState[12] = m;
    arrayOfHtmlTreeBuilderState[13] = n;
    arrayOfHtmlTreeBuilderState[14] = o;
    arrayOfHtmlTreeBuilderState[15] = p;
    arrayOfHtmlTreeBuilderState[16] = q;
    arrayOfHtmlTreeBuilderState[17] = r;
    arrayOfHtmlTreeBuilderState[18] = s;
    arrayOfHtmlTreeBuilderState[19] = t;
    arrayOfHtmlTreeBuilderState[20] = u;
    arrayOfHtmlTreeBuilderState[21] = v;
    arrayOfHtmlTreeBuilderState[22] = w;
    y = arrayOfHtmlTreeBuilderState;
  }

  abstract boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState
 * JD-Core Version:    0.6.2
 */