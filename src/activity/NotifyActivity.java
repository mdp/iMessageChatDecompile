package activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import com.d.a;

public class NotifyActivity extends MyActivity
  implements View.OnClickListener
{
  private Button a;
  private CheckBox m;
  private CheckBox n;
  private CheckBox o;

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
    case 2131427458:
    }
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903076);
    this.a = ((Button)findViewById(2131427458));
    this.a.setOnClickListener(this);
    this.m = ((CheckBox)findViewById(2131427459));
    this.m.setOnCheckedChangeListener(new bs(this));
    this.m.setChecked(this.h.h());
    this.n = ((CheckBox)findViewById(2131427460));
    this.n.setOnCheckedChangeListener(new bt(this));
    this.n.setChecked(this.h.i());
    this.o = ((CheckBox)findViewById(2131427461));
    this.o.setOnCheckedChangeListener(new bu(this));
    this.o.setChecked(this.h.j());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.NotifyActivity
 * JD-Core Version:    0.6.2
 */