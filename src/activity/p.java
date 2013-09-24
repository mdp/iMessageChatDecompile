package activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.c.e;
import com.c.g;
import java.io.File;
import java.util.List;

public final class p extends BaseAdapter
{
  private Context a;
  private List b;
  private LayoutInflater c;
  private Handler d;

  public p(Handler paramHandler, Context paramContext, List paramList)
  {
    this.b = paramList;
    this.c = LayoutInflater.from(paramContext);
    this.a = paramContext;
    this.d = paramHandler;
  }

  public final void a(String paramString)
  {
    File localFile = new File(paramString);
    String str;
    if (localFile.isFile())
    {
      str = localFile.toString();
      if (e.a(str, this.a.getResources().getStringArray(2131034967)))
      {
        Intent localIntent1 = new Intent("android.intent.action.VIEW");
        localIntent1.addCategory("android.intent.category.DEFAULT");
        localIntent1.addFlags(268435456);
        localIntent1.setDataAndType(Uri.fromFile(localFile), "image/*");
        this.a.startActivity(localIntent1);
      }
    }
    else
    {
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034971)))
    {
      Uri localUri = Uri.parse(localFile.toString()).buildUpon().encodedAuthority("com.android.htmlfileprovider").scheme("content").encodedPath(localFile.toString()).build();
      Intent localIntent11 = new Intent("android.intent.action.VIEW");
      localIntent11.setDataAndType(localUri, "text/html");
      this.a.startActivity(localIntent11);
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034970)))
    {
      Intent localIntent2 = new Intent();
      localIntent2.addFlags(268435456);
      localIntent2.setAction("android.intent.action.VIEW");
      localIntent2.setDataAndType(Uri.fromFile(localFile), "application/vnd.android.package-archive");
      this.a.startActivity(localIntent2);
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034968)))
    {
      Intent localIntent3 = new Intent("android.intent.action.VIEW");
      localIntent3.addFlags(67108864);
      localIntent3.putExtra("oneshot", 0);
      localIntent3.putExtra("configchange", 0);
      localIntent3.setDataAndType(Uri.fromFile(localFile), "audio/*");
      this.a.startActivity(localIntent3);
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034969)))
    {
      Intent localIntent4 = new Intent("android.intent.action.VIEW");
      localIntent4.addFlags(67108864);
      localIntent4.putExtra("oneshot", 0);
      localIntent4.putExtra("configchange", 0);
      localIntent4.setDataAndType(Uri.fromFile(localFile), "video/*");
      this.a.startActivity(localIntent4);
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034972)))
    {
      Intent localIntent5 = new Intent("android.intent.action.VIEW");
      localIntent5.addCategory("android.intent.category.DEFAULT");
      localIntent5.addFlags(268435456);
      localIntent5.setDataAndType(Uri.fromFile(localFile), "text/plain");
      this.a.startActivity(localIntent5);
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034976)))
    {
      Intent localIntent6 = new Intent("android.intent.action.VIEW");
      localIntent6.addCategory("android.intent.category.DEFAULT");
      localIntent6.addFlags(268435456);
      localIntent6.setDataAndType(Uri.fromFile(localFile), "application/pdf");
      this.a.startActivity(localIntent6);
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034973)))
    {
      Intent localIntent7 = new Intent("android.intent.action.VIEW");
      localIntent7.addCategory("android.intent.category.DEFAULT");
      localIntent7.addFlags(268435456);
      localIntent7.setDataAndType(Uri.fromFile(localFile), "application/msword");
      this.a.startActivity(localIntent7);
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034974)))
    {
      Intent localIntent8 = new Intent("android.intent.action.VIEW");
      localIntent8.addCategory("android.intent.category.DEFAULT");
      localIntent8.addFlags(268435456);
      localIntent8.setDataAndType(Uri.fromFile(localFile), "application/vnd.ms-excel");
      this.a.startActivity(localIntent8);
      return;
    }
    if (e.a(str, this.a.getResources().getStringArray(2131034975)))
    {
      Intent localIntent9 = new Intent("android.intent.action.VIEW");
      localIntent9.addCategory("android.intent.category.DEFAULT");
      localIntent9.addFlags(268435456);
      localIntent9.setDataAndType(Uri.fromFile(localFile), "application/vnd.ms-powerpoint");
      this.a.startActivity(localIntent9);
      return;
    }
    Intent localIntent10 = Intent.createChooser(new Intent("android.intent.action.SEND"), this.a.getString(2131165274));
    this.a.startActivity(localIntent10);
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    return ((o)this.b.get(paramInt)).l();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    o localo = (o)this.b.get(paramInt);
    int i = localo.l();
    q localq = new q(this, localo);
    r localr = new r(this, localo);
    s locals = new s(this, localo);
    u localu1;
    label132: u localu2;
    if (paramView == null)
    {
      localu1 = new u();
      switch (i)
      {
      default:
        localu1.g = i;
        paramView.setTag(localu1);
        localu2 = localu1;
        label149: if (localu2.g == 4)
        {
          localu2.b.setClickable(true);
          localu2.b.setOnClickListener(localq);
        }
        break;
      case 2:
      case 1:
      case 4:
      case 10:
      case 0:
      case 3:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      }
    }
    while (true)
    {
      if (localu2.a != null)
      {
        localu2.a.setClickable(true);
        localu2.a.setOnClickListener(locals);
      }
      switch (localu2.g)
      {
      case 7:
      case 8:
      case 9:
      default:
        return paramView;
        paramView = this.c.inflate(2130903051, null);
        localu1.a = ((TextView)paramView.findViewById(2131427385));
        break label132;
        paramView = this.c.inflate(2130903049, null);
        localu1.a = ((TextView)paramView.findViewById(2131427382));
        break label132;
        paramView = this.c.inflate(2130903050, null);
        localu1.a = ((TextView)paramView.findViewById(2131427384));
        localu1.b = ((ImageView)paramView.findViewById(2131427383));
        break label132;
        paramView = this.c.inflate(2130903048, null);
        localu1.a = ((TextView)paramView.findViewById(2131427381));
        localu1.b = ((ImageView)paramView.findViewById(2131427380));
        break label132;
        paramView = this.c.inflate(2130903047, null);
        localu1.a = ((TextView)paramView.findViewById(2131427379));
        break label132;
        paramView = this.c.inflate(2130903058, null);
        localu1.c = ((Button)paramView.findViewById(2131427400));
        localu1.d = ((Button)paramView.findViewById(2131427401));
        localu1.d.setText(localo.e());
        t localt = new t(this, localo);
        localu1.c.setOnClickListener(localt);
        localu1.d.setOnClickListener(localt);
        break label132;
        paramView = this.c.inflate(2130903043, null);
        localu1.a = ((TextView)paramView.findViewById(2131427365));
        break label132;
        localu2 = (u)paramView.getTag();
        break label149;
        if (localu2.g == 10)
        {
          localu2.b.setClickable(true);
          localu2.b.setOnClickListener(localr);
        }
        break;
      case 2:
      case 0:
      case 1:
      case 4:
      case 10:
      case 3:
      case 5:
      case 6:
      }
    }
    String str = localo.d();
    if (str.length() > 3)
      str = str.substring(0, -3 + str.length());
    localu2.a.setText(str);
    return paramView;
    g.b(localu2.a, localo.e(), this.a);
    return paramView;
    localu2.d.setText(localo.e());
    return paramView;
    localu2.a.setText(this.a.getString(2131165268));
    return paramView;
    localu2.a.setText(this.a.getString(2131165269));
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 11;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.p
 * JD-Core Version:    0.6.2
 */