package com.c;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.view.Window;
import android.widget.TextView;

public final class c
{
  public static Dialog a(Context paramContext, String paramString)
  {
    Dialog localDialog = new Dialog(paramContext, 2131296257);
    localDialog.setContentView(2130903056);
    localDialog.getWindow().getAttributes().width = ((int)(0.6D * m.a(paramContext)));
    TextView localTextView = (TextView)localDialog.findViewById(2131427398);
    if ((paramString == null) || (paramString.length() == 0))
      localTextView.setText(2131165212);
    while (true)
    {
      localDialog.setCancelable(false);
      return localDialog;
      localTextView.setText(paramString);
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    new AlertDialog.Builder(paramContext).setTitle(paramString1).setMessage(paramString2).setPositiveButton("确定", null).create().show();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.c
 * JD-Core Version:    0.6.2
 */