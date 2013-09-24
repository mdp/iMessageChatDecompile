package activity;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.c.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class ac extends RelativeLayout
{
  private Context a;
  private ViewPager b;
  private int[] c;
  private ArrayList d;
  private ImageView[] e;
  private ImageView[] f;
  private LinearLayout[] g;
  private int h;
  private int i = 0;

  public ac(Context paramContext, int[] paramArrayOfInt, ArrayList paramArrayList)
  {
    super(paramContext);
    this.a = paramContext;
    this.c = paramArrayOfInt;
    this.d = paramArrayList;
    LayoutInflater.from(paramContext).inflate(2130903060, this, true);
    FacePagerAdapter localFacePagerAdapter = a((int[])this.d.get(0));
    this.b = ((ViewPager)findViewById(2131427406));
    this.b.setAdapter(localFacePagerAdapter);
    this.b.setCurrentItem(0);
    this.b.setOnPageChangeListener(new ad(this));
    int j = 1 + ((int[])this.d.get(0)).length / 24;
    if ((((int[])this.d.get(0)).length % 24 == 0) && (((int[])this.d.get(0)).length != 0));
    for (int k = j - 1; ; k = j)
    {
      a(k);
      b();
      return;
    }
  }

  private FacePagerAdapter a(int[] paramArrayOfInt)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = b(paramArrayOfInt);
    for (int j = 0; ; j++)
    {
      if (j >= localArrayList2.size())
        return new FacePagerAdapter(localArrayList1);
      ab localab = new ab(this.a, (ArrayList)localArrayList2.get(j));
      localab.setOnItemClickListener(new ae(this));
      localArrayList1.add(localab);
    }
  }

  private void a(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131427405);
    localLinearLayout.removeAllViews();
    this.e = new ImageView[paramInt];
    for (int j = 0; ; j++)
    {
      if (j >= paramInt)
      {
        this.h = 0;
        this.e[this.h].setEnabled(true);
        return;
      }
      this.e[j] = new ImageView(this.a);
      this.e[j].setImageDrawable(getResources().getDrawable(2130837541));
      this.e[j].setPadding(5, 0, 0, 0);
      this.e[j].setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
      this.e[j].setEnabled(false);
      localLinearLayout.addView(this.e[j]);
    }
  }

  private void a(FacePagerAdapter paramFacePagerAdapter)
  {
    if (paramFacePagerAdapter != null)
    {
      this.b.setAdapter(paramFacePagerAdapter);
      this.b.setCurrentItem(0);
      a(paramFacePagerAdapter.getCount());
      return;
    }
    this.b.removeAllViews();
    a(1);
  }

  private static ArrayList b(int[] paramArrayOfInt)
  {
    ArrayList localArrayList1 = new ArrayList();
    int j = paramArrayOfInt.length;
    int k = 0;
    if (k >= j)
      return localArrayList1;
    ArrayList localArrayList2 = new ArrayList();
    int m = k;
    int n = 0;
    while (true)
    {
      if ((m >= j) || (n >= 24))
      {
        localArrayList1.add(localArrayList2);
        k = m;
        break;
      }
      HashMap localHashMap = new HashMap();
      int i1 = m + 1;
      localHashMap.put("imageview", Integer.valueOf(paramArrayOfInt[m]));
      localHashMap.put("text", "Banana");
      localArrayList2.add(localHashMap);
      n++;
      m = i1;
    }
  }

  private void b()
  {
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131427407);
    localLinearLayout1.removeAllViews();
    int j = this.c.length;
    this.f = new ImageView[j + 1];
    this.g = new LinearLayout[j + 1];
    int k = 0;
    if (k >= j + 1)
    {
      this.f[0].setEnabled(true);
      this.g[0].setBackgroundResource(2130838434);
      this.i = 0;
      return;
    }
    LinearLayout localLinearLayout2 = new LinearLayout(this.a);
    localLinearLayout2.setBackgroundResource(2130838433);
    this.g[k] = localLinearLayout2;
    ImageView localImageView = new ImageView(this.a);
    if (k == j)
    {
      localLinearLayout2.setBackgroundResource(2130838436);
      localImageView.setImageDrawable(getResources().getDrawable(2130838408));
    }
    while (true)
    {
      localImageView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
      localImageView.setPadding((int)h.h(), 5, (int)h.h(), 5);
      localImageView.setEnabled(false);
      localLinearLayout2.setGravity(17);
      localLinearLayout2.setOnClickListener(new af(this, k));
      localLinearLayout2.addView(localImageView);
      this.f[k] = localImageView;
      localLinearLayout1.addView(localLinearLayout2);
      k++;
      break;
      localImageView.setImageDrawable(getResources().getDrawable(this.c[k]));
    }
  }

  public abstract void a();

  public abstract void a(int paramInt1, int paramInt2);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ac
 * JD-Core Version:    0.6.2
 */