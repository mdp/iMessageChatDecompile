.class public Lactivity/IntroduceActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(B)V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b(B)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    const-string v0, "status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/IntroduceActivity;->h:Lcom/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/d/a;->b(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "status"

    const-string v2, "EXIT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lactivity/IntroduceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lactivity/IntroduceActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x111001
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lactivity/IntroduceActivity;->h:Lcom/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/d/a;->b(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "status"

    const-string v2, "EXIT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lactivity/IntroduceActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lactivity/IntroduceActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/FriendListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x111001

    invoke-virtual {p0, v0, v1}, Lactivity/IntroduceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0068
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lactivity/IntroduceActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lactivity/IntroduceActivity;->setContentView(I)V

    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lactivity/IntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/IntroduceActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/IntroduceActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lactivity/IntroduceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/IntroduceActivity;->g:Lactivity/MyApplication;

    new-instance v0, Lcom/d/a;

    const-string v1, "saveUser"

    invoke-direct {v0, p0, v1}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/IntroduceActivity;->h:Lcom/d/a;

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lactivity/IntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lactivity/ay;

    invoke-direct {v1, p0}, Lactivity/ay;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/IntroduceActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/IntroduceActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
