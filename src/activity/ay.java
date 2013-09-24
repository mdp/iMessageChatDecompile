package activity;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public final class ay extends LinearLayout
{
  private ViewPager a;
  private List b;
  private ImageView[] c;
  private int d = 1;
  private int e;

  public ay(Context paramContext)
  {
    super(paramContext);
    LayoutInflater.from(paramContext).inflate(2130903067, this, true);
    this.a = ((ViewPager)findViewById(2131427414));
    this.b = new ArrayList();
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    View localView1 = localLayoutInflater.inflate(2130903068, null);
    localLayoutInflater.inflate(2130903069, null);
    View localView2 = localLayoutInflater.inflate(2130903070, null);
    this.b.add(localView1);
    this.b.add(localView2);
    this.a.setAdapter(new MyPagerAdapter(this.b));
    this.a.setCurrentItem(0);
    this.a.setOnPageChangeListener(new az(this));
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131427405);
    localLinearLayout.removeAllViews();
    this.d = this.b.size();
    this.c = new ImageView[this.d];
    for (int i = 0; ; i++)
    {
      if (i >= this.d)
      {
        this.e = 0;
        this.c[this.e].setEnabled(true);
        return;
      }
      this.c[i] = new ImageView(paramContext);
      this.c[i].setImageDrawable(getResources().getDrawable(2130837541));
      this.c[i].setPadding(5, 0, 0, 0);
      this.c[i].setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
      this.c[i].setEnabled(false);
      localLinearLayout.addView(this.c[i]);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ay
 * JD-Core Version:    0.6.2
 */