.class public Lactivity/NotifyActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/CheckBox;


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

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lactivity/NotifyActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0082
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lactivity/NotifyActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lactivity/NotifyActivity;->setContentView(I)V

    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lactivity/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/NotifyActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/NotifyActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lactivity/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lactivity/NotifyActivity;->m:Landroid/widget/CheckBox;

    iget-object v0, p0, Lactivity/NotifyActivity;->m:Landroid/widget/CheckBox;

    new-instance v1, Lactivity/bs;

    invoke-direct {v1, p0}, Lactivity/bs;-><init>(Lactivity/NotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lactivity/NotifyActivity;->m:Landroid/widget/CheckBox;

    iget-object v1, p0, Lactivity/NotifyActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lactivity/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lactivity/NotifyActivity;->n:Landroid/widget/CheckBox;

    iget-object v0, p0, Lactivity/NotifyActivity;->n:Landroid/widget/CheckBox;

    new-instance v1, Lactivity/bt;

    invoke-direct {v1, p0}, Lactivity/bt;-><init>(Lactivity/NotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lactivity/NotifyActivity;->n:Landroid/widget/CheckBox;

    iget-object v1, p0, Lactivity/NotifyActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lactivity/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lactivity/NotifyActivity;->o:Landroid/widget/CheckBox;

    iget-object v0, p0, Lactivity/NotifyActivity;->o:Landroid/widget/CheckBox;

    new-instance v1, Lactivity/bu;

    invoke-direct {v1, p0}, Lactivity/bu;-><init>(Lactivity/NotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lactivity/NotifyActivity;->o:Landroid/widget/CheckBox;

    iget-object v1, p0, Lactivity/NotifyActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
