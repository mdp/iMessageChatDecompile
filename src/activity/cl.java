package activity;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;

final class cl
  implements AdapterView.OnItemSelectedListener
{
  cl(RegisterActivity paramRegisterActivity)
  {
  }

  public final void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView.setVisibility(0);
    RegisterActivity.a(this.a, RegisterActivity.a(this.a).getSelectedItem().toString());
  }

  public final void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cl
 * JD-Core Version:    0.6.2
 */