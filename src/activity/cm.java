package activity;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;

final class cm
  implements AdapterView.OnItemSelectedListener
{
  cm(RegisterActivity paramRegisterActivity)
  {
  }

  public final void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView.setVisibility(0);
    RegisterActivity.b(this.a, RegisterActivity.b(this.a).getSelectedItem().toString());
  }

  public final void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cm
 * JD-Core Version:    0.6.2
 */