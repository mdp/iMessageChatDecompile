package activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.c.p;

public class WelcomeActivity extends Activity
  implements View.OnClickListener
{
  private Button a;
  private MyApplication b;
  private com.d.a c;

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 1118465:
    }
    String str;
    do
    {
      do
        return;
      while (paramIntent == null);
      str = (String)paramIntent.getSerializableExtra("status");
    }
    while ((str == null) || (!str.equals("EXIT")));
    finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427535:
    }
    Intent localIntent = new Intent();
    localIntent.setClass(this, LoginActivity.class);
    startActivityForResult(localIntent, 1118465);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903095);
    this.b = ((MyApplication)getApplicationContext());
    this.a = ((Button)findViewById(2131427535));
    this.a.setOnClickListener(this);
    this.c = new com.d.a(this, "saveUser");
    if (!this.b.f())
      startService(new Intent(this, GetMsgService.class));
    String str1 = this.c.a();
    String str2 = p.a(this);
    if ((str1 != null) && (str1.equals(str2)) && (this.c.g()))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(this, FriendListActivity.class);
      startActivity(localIntent);
      finish();
      finish();
      return;
    }
    this.c.c(false);
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.a.a.a(this);
  }

  protected void onResume()
  {
    super.onResume();
    com.umeng.a.a.b(this);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.WelcomeActivity
 * JD-Core Version:    0.6.2
 */