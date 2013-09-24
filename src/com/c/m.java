package com.c;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;

public final class m
{
  public static int a(Context paramContext)
  {
    return ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getWidth();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.m
 * JD-Core Version:    0.6.2
 */