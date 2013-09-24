package activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

public class IntroduceActivity extends MyActivity
  implements View.OnClickListener
{
  private Button a;

  public final void a()
  {
  }

  public final void a(byte paramByte)
  {
  }

  public final void a(int paramInt)
  {
  }

  public final void b(byte paramByte)
  {
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 1118209:
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
    this.h.b(true);
    Intent localIntent = new Intent();
    localIntent.putExtra("status", "EXIT");
    setResult(-1, localIntent);
    finish();
  }

  public void onBackPressed()
  {
    this.h.b(true);
    Intent localIntent = new Intent();
    localIntent.putExtra("status", "EXIT");
    setResult(-1, localIntent);
    finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427432:
    }
    startActivityForResult(new Intent(this, FriendListActivity.class), 1118209);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903071);
    this.a = ((Button)findViewById(2131427432));
    this.a.setOnClickListener(this);
    this.g = ((MyApplication)getApplicationContext());
    this.h = new com.d.a(this, "saveUser");
    ((LinearLayout)findViewById(2131427431)).addView(new ay(this));
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.a.a.a(this.b);
  }

  protected void onResume()
  {
    super.onResume();
    com.umeng.a.a.b(this.b);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.IntroduceActivity
 * JD-Core Version:    0.6.2
 */