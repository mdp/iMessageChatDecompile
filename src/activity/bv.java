package activity;

import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;

final class bv
  implements AdapterView.OnItemSelectedListener
{
  bv(ReadFromCellphoneActivity paramReadFromCellphoneActivity)
  {
  }

  public final void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView.setVisibility(0);
    Log.d("ReadFromCellphone", " code " + ReadFromCellphoneActivity.a(this.a).getSelectedItemPosition());
    com.c.a.g = ReadFromCellphoneActivity.a(this.a).getSelectedItemPosition();
    ReadFromCellphoneActivity.a(this.a, ReadFromCellphoneActivity.b(this.a)[com.c.a.g]);
    ReadFromCellphoneActivity.a(this.a, ReadFromCellphoneActivity.c(this.a).substring(1, -1 + ReadFromCellphoneActivity.c(this.a).length()));
  }

  public final void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bv
 * JD-Core Version:    0.6.2
 */