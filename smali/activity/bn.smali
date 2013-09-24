.class final Lactivity/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Choose"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->b()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    const v2, 0x11002

    invoke-virtual {v1, v0, v2}, Lactivity/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    iget-object v2, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    iget-object v2, v2, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x11000

    invoke-virtual {v1, v0, v2}, Lactivity/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    iget-object v1, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    iget-object v1, v1, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f07004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    iget-object v2, v2, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v3, 0x7f07004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->h(Lactivity/NewMessageActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v0, p0, Lactivity/bn;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->i(Lactivity/NewMessageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
