package activity;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.a.a;
import java.util.ArrayList;

final class bi extends Handler
{
  bi(NewMessageActivity paramNewMessageActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    String str1 = (String)paramMessage.getData().getSerializable("msg");
    br localbr = new br(this.a);
    localbr.a = str1;
    NewMessageActivity.a(this.a, str1);
    switch (paramMessage.what)
    {
    default:
    case 2:
      while (true)
      {
        NewMessageActivity.b(this.a).add(localbr);
        NewMessageActivity.c(this.a);
        return;
        NewMessageActivity.a(this.a, true);
        NewMessageActivity.a(this.a, 1);
        localbr.b = true;
        this.a.c();
      }
    case 3:
    }
    NewMessageActivity.a(this.a, 2);
    localbr.b = false;
    NewMessageActivity.a(this.a, false);
    int i = 0;
    label139: int j;
    if (i >= str1.length())
    {
      j = 1;
      label151: if (j == 0)
        break label300;
    }
    label300: for (String str2 = this.a.b.getString(2131165321); ; str2 = this.a.b.getString(2131165322))
    {
      if (NewMessageActivity.a(this.a) != -2)
        str2 = this.a.b.getString(2131165323);
      z localz = this.a.c.b(str1);
      if (localz != null)
        str1 = localz.b();
      NewMessageActivity.a(this.a, this.a, this.a.b.getString(2131165320), str1 + "\n" + str2 + " ");
      break;
      boolean bool = Character.isDigit(str1.charAt(i));
      j = 0;
      if (!bool)
        break label151;
      i++;
      break label139;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bi
 * JD-Core Version:    0.6.2
 */