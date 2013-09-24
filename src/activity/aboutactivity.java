package activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class aboutactivity extends MyActivity
  implements View.OnClickListener
{
  private Button a;
  private TextView m;

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
    case 2131427330:
    }
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903040);
    this.a = ((Button)findViewById(2131427330));
    this.a.setOnClickListener(this);
    this.m = ((TextView)findViewById(2131427331));
    this.m.setText(getString(2131165340) + com.c.a.e);
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
 * Qualified Name:     activity.aboutactivity
 * JD-Core Version:    0.6.2
 */