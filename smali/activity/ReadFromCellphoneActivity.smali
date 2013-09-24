.class public Lactivity/ReadFromCellphoneActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/Spinner;

.field private q:Landroid/widget/ArrayAdapter;

.field private r:[Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/b/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lactivity/ReadFromCellphoneActivity;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic a(Lactivity/ReadFromCellphoneActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/ReadFromCellphoneActivity;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lactivity/ReadFromCellphoneActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lactivity/ReadFromCellphoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->t:Ljava/lang/String;

    return-object v0
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

.method public final d()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    const v1, 0x7f0700a9

    invoke-virtual {p0, v1}, Lactivity/ReadFromCellphoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    invoke-virtual {p0}, Lactivity/ReadFromCellphoneActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lactivity/ReadFromCellphoneActivity;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->h:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->b:Landroid/content/Context;

    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->b:Landroid/content/Context;

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/bw;

    invoke-direct {v2, p0}, Lactivity/bw;-><init>(Lactivity/ReadFromCellphoneActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    const v1, 0x7f0700aa

    invoke-virtual {p0, v1}, Lactivity/ReadFromCellphoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lcom/b/v;

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lactivity/ReadFromCellphoneActivity;->t:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/b/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/ReadFromCellphoneActivity;->u:Lcom/b/v;

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->u:Lcom/b/v;

    invoke-virtual {v0}, Lcom/b/v;->start()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->u:Lcom/b/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->u:Lcom/b/v;

    invoke-virtual {v0}, Lcom/b/v;->a()V

    iput-object v3, p0, Lactivity/ReadFromCellphoneActivity;->u:Lcom/b/v;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b008a
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lactivity/ReadFromCellphoneActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lactivity/ReadFromCellphoneActivity;->setContentView(I)V

    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lactivity/ReadFromCellphoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ReadFromCellphoneActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lactivity/ReadFromCellphoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lactivity/ReadFromCellphoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ReadFromCellphoneActivity;->n:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lactivity/ReadFromCellphoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lactivity/ReadFromCellphoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->l()I

    move-result v0

    invoke-virtual {p0}, Lactivity/ReadFromCellphoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/ReadFromCellphoneActivity;->s:[Ljava/lang/String;

    invoke-virtual {p0}, Lactivity/ReadFromCellphoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/ReadFromCellphoneActivity;->r:[Ljava/lang/String;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lactivity/ReadFromCellphoneActivity;->r:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lactivity/ReadFromCellphoneActivity;->q:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->q:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    iget-object v2, p0, Lactivity/ReadFromCellphoneActivity;->q:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    new-instance v2, Lactivity/bv;

    invoke-direct {v2, p0}, Lactivity/bv;-><init>(Lactivity/ReadFromCellphoneActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    if-gez v0, :cond_0

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    const v1, 0x7f0700a9

    invoke-virtual {p0, v1}, Lactivity/ReadFromCellphoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    const v2, 0x7f0700aa

    invoke-virtual {p0, v2}, Lactivity/ReadFromCellphoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setClickable(Z)V

    sget v0, Lcom/c/a;->g:I

    if-ltz v0, :cond_1

    sget v0, Lcom/c/a;->g:I

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->r:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_1
    sput v4, Lcom/c/a;->g:I

    :cond_2
    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    sget v1, Lcom/c/a;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->l()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    const v1, 0x7f0700a9

    invoke-virtual {p0, v1}, Lactivity/ReadFromCellphoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    const v2, 0x7f0700aa

    invoke-virtual {p0, v2}, Lactivity/ReadFromCellphoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->m:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setClickable(Z)V

    sget v0, Lcom/c/a;->g:I

    if-ltz v0, :cond_1

    sget v0, Lcom/c/a;->g:I

    iget-object v1, p0, Lactivity/ReadFromCellphoneActivity;->r:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_1
    sput v3, Lcom/c/a;->g:I

    :cond_2
    iget-object v0, p0, Lactivity/ReadFromCellphoneActivity;->p:Landroid/widget/Spinner;

    sget v1, Lcom/c/a;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method
