.class public Lactivity/AddToContactActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/c/l;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lactivity/AddToContactActivity;->w:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xa8t 0x3t 0x2t 0x7ft
        0x89t 0x3t 0x2t 0x7ft
        0x8at 0x3t 0x2t 0x7ft
        0x8bt 0x3t 0x2t 0x7ft
        0x8ct 0x3t 0x2t 0x7ft
        0x8dt 0x3t 0x2t 0x7ft
        0x8et 0x3t 0x2t 0x7ft
        0x8ft 0x3t 0x2t 0x7ft
        0x90t 0x3t 0x2t 0x7ft
        0x91t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lactivity/AddToContactActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/AddToContactActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lactivity/AddToContactActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

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
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lactivity/AddToContactActivity;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lactivity/AddToContactActivity;->finish()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lactivity/AddToContactActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lactivity/AddToContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lactivity/z;

    iget-object v2, p0, Lactivity/AddToContactActivity;->a:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lactivity/z;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->c:Lcom/a/a;

    invoke-virtual {v0, v1}, Lcom/a/a;->a(Lactivity/z;)V

    invoke-virtual {p0}, Lactivity/AddToContactActivity;->finish()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lactivity/AddToContactActivity;->b()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lactivity/NewMessageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "touser"

    iget-object v2, p0, Lactivity/AddToContactActivity;->a:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lactivity/AddToContactActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0004
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->setContentView(I)V

    invoke-virtual {p0}, Lactivity/AddToContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/c/l;

    iput-object v0, p0, Lactivity/AddToContactActivity;->a:Lcom/c/l;

    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/AddToContactActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/AddToContactActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/AddToContactActivity;->n:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/AddToContactActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/AddToContactActivity;->o:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/AddToContactActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/AddToContactActivity;->p:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/AddToContactActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/AddToContactActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/AddToContactActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lactivity/AddToContactActivity;->a:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/AddToContactActivity;->u:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/AddToContactActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/AddToContactActivity;->v:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/AddToContactActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lactivity/AddToContactActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/AddToContactActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/AddToContactActivity;->s:Landroid/widget/EditText;

    iget-object v0, p0, Lactivity/AddToContactActivity;->c:Lcom/a/a;

    iget-object v1, p0, Lactivity/AddToContactActivity;->a:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a;->b(Ljava/lang/String;)Lactivity/z;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lactivity/AddToContactActivity;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lactivity/AddToContactActivity;->w:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->r:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->s:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/AddToContactActivity;->a:Lcom/c/l;

    invoke-virtual {v0}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lactivity/AddToContactActivity;->b()V

    :goto_0
    iget-object v1, p0, Lactivity/AddToContactActivity;->m:Landroid/widget/Button;

    iget-object v2, p0, Lactivity/AddToContactActivity;->m:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget v3, Lcom/c/h;->a:F

    const/high16 v4, 0x4316

    mul-float/2addr v3, v4

    const/high16 v4, 0x43f0

    div-float/2addr v3, v4

    invoke-static {v0, v2, v3}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lactivity/AddToContactActivity;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lactivity/AddToContactActivity;->w:[I

    invoke-virtual {v1}, Lactivity/z;->e()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lactivity/AddToContactActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lactivity/AddToContactActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lactivity/AddToContactActivity;->m:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lactivity/AddToContactActivity;->o:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lactivity/AddToContactActivity;->p:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lactivity/AddToContactActivity;->n:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lactivity/AddToContactActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/AddToContactActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v2, p0, Lactivity/AddToContactActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lactivity/AddToContactActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lactivity/MyActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/AddToContactActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/AddToContactActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
