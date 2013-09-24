package activity;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.Editable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.widget.EditText;
import com.c.n;
import java.util.ArrayList;

final class bp extends ac
{
  bp(NewMessageActivity paramNewMessageActivity, Context paramContext, int[] paramArrayOfInt, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayOfInt, paramArrayList);
  }

  public final void a()
  {
    int i = NewMessageActivity.g(this.a).getSelectionStart();
    if (i > 0)
      NewMessageActivity.g(this.a).getText().delete(i - 1, i);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = n.a(this.a.getResources(), ((int[])com.c.o.a.get(paramInt1))[paramInt2]);
    ImageSpan localImageSpan = new ImageSpan(this.a, localBitmap);
    SpannableString localSpannableString = new SpannableString(((String[])com.c.o.b.get(paramInt1))[paramInt2]);
    localSpannableString.setSpan(localImageSpan, 0, ((String[])com.c.o.b.get(paramInt1))[paramInt2].length(), 33);
    int i = NewMessageActivity.g(this.a).getSelectionStart();
    NewMessageActivity.g(this.a).getText().insert(i, localSpannableString);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bp
 * JD-Core Version:    0.6.2
 */