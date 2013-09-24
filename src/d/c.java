package d;

import java.util.Random;

public final class c
{
  public static String a()
  {
    int i = 0;
    Random localRandom = new Random(System.currentTimeMillis());
    String str1 = "";
    int j = 0;
    String str2;
    int m;
    label48: String str3;
    int i1;
    label79: String str4;
    int i3;
    label110: String str5;
    if (j >= 8)
    {
      str2 = str1 + '-';
      m = 0;
      if (m < 4)
        break label186;
      str3 = str2 + '-';
      i1 = 0;
      if (i1 < 4)
        break label227;
      str4 = str3 + '-';
      i3 = 0;
      if (i3 < 4)
        break label268;
      str5 = str4 + '-';
    }
    while (true)
    {
      if (i >= 12)
      {
        return str5;
        int k = localRandom.nextInt(16);
        str1 = str1 + "0123456789ABCDEF".charAt(k);
        j++;
        break;
        label186: int n = localRandom.nextInt(16);
        str2 = str2 + "0123456789ABCDEF".charAt(n);
        m++;
        break label48;
        label227: int i2 = localRandom.nextInt(16);
        str3 = str3 + "0123456789ABCDEF".charAt(i2);
        i1++;
        break label79;
        label268: int i4 = localRandom.nextInt(16);
        str4 = str4 + "0123456789ABCDEF".charAt(i4);
        i3++;
        break label110;
      }
      int i5 = localRandom.nextInt(16);
      str5 = str5 + "0123456789ABCDEF".charAt(i5);
      i++;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.c
 * JD-Core Version:    0.6.2
 */