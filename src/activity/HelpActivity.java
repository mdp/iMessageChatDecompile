package activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

public class HelpActivity extends MyActivity
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

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427429:
    }
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903066);
    this.a = ((Button)findViewById(2131427429));
    this.a.setOnClickListener(this);
    ((LinearLayout)findViewById(2131427430)).addView(new ay(this));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.HelpActivity
 * JD-Core Version:    0.6.2
 */