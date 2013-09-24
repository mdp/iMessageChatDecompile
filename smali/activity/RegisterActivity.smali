.class public Lactivity/RegisterActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/EditText;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/EditText;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/EditText;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/DatePicker;

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:I

.field private S:I

.field private T:Landroid/app/Dialog;

.field private U:Landroid/os/Handler;

.field private final a:I

.field private m:[Ljava/lang/String;

.field private n:Landroid/widget/Spinner;

.field private o:Landroid/widget/ArrayAdapter;

.field private p:[Ljava/lang/String;

.field private q:[Ljava/lang/String;

.field private r:Landroid/widget/Spinner;

.field private s:Landroid/widget/ArrayAdapter;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    const/16 v0, 0x12

    iput v0, p0, Lactivity/RegisterActivity;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/RegisterActivity;->I:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    new-instance v0, Lactivity/cj;

    invoke-direct {v0, p0}, Lactivity/cj;-><init>(Lactivity/RegisterActivity;)V

    iput-object v0, p0, Lactivity/RegisterActivity;->U:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lactivity/RegisterActivity;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lactivity/RegisterActivity;->n:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic a(Lactivity/RegisterActivity;I)V
    .locals 3

    iget-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/co;

    invoke-direct {v2, p0}, Lactivity/co;-><init>(Lactivity/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lactivity/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/RegisterActivity;->O:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lactivity/RegisterActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lactivity/RegisterActivity;->I:Z

    return-void
.end method

.method private static a([B)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    array-length v6, p0

    move v5, v4

    move v0, v4

    move v2, v4

    move v3, v4

    :goto_0
    if-lt v5, v6, :cond_0

    const/16 v5, 0x8

    if-lt v6, v5, :cond_4

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    :goto_1
    return v1

    :cond_0
    aget-byte v7, p0, v5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_2

    aget-byte v7, p0, v5

    const/16 v8, 0x39

    if-gt v7, v8, :cond_2

    move v3, v1

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    aget-byte v7, p0, v5

    const/16 v8, 0x61

    if-lt v7, v8, :cond_3

    aget-byte v7, p0, v5

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    aget-byte v7, p0, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_1

    aget-byte v7, p0, v5

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_1

    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_1
.end method

.method static synthetic b(Lactivity/RegisterActivity;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lactivity/RegisterActivity;->r:Landroid/widget/Spinner;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lactivity/RegisterActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->J:Ljava/lang/String;

    iget-object v0, p0, Lactivity/RegisterActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->K:Ljava/lang/String;

    iget-object v0, p0, Lactivity/RegisterActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->L:Ljava/lang/String;

    iget-object v0, p0, Lactivity/RegisterActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->M:Ljava/lang/String;

    iget-object v0, p0, Lactivity/RegisterActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->N:Ljava/lang/String;

    iget-object v0, p0, Lactivity/RegisterActivity;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->P:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lactivity/RegisterActivity;->p:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    :goto_1
    iget-object v0, p0, Lactivity/RegisterActivity;->H:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v0

    iput v0, p0, Lactivity/RegisterActivity;->R:I

    iget-object v0, p0, Lactivity/RegisterActivity;->H:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v0

    iput v0, p0, Lactivity/RegisterActivity;->S:I

    return-void

    :cond_0
    iget-object v1, p0, Lactivity/RegisterActivity;->Q:Ljava/lang/String;

    iget-object v2, p0, Lactivity/RegisterActivity;->p:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lactivity/RegisterActivity;->q:[Ljava/lang/String;

    aget-object v0, v1, v0

    iput-object v0, p0, Lactivity/RegisterActivity;->Q:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lactivity/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/RegisterActivity;->Q:Ljava/lang/String;

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
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, -0x100

    const/4 v2, 0x1

    const/high16 v6, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lactivity/RegisterActivity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lactivity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_1

    :cond_0
    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/cn;

    invoke-direct {v2, p0}, Lactivity/cn;-><init>(Lactivity/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lactivity/RegisterActivity;->b()V

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->J:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->K:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->L:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->M:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SP1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->N:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SQ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->O:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SQA "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->P:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MO "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lactivity/RegisterActivity;->R:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DA "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lactivity/RegisterActivity;->S:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lactivity/RegisterActivity;->I:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/RegisterActivity;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lactivity/RegisterActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v2

    :goto_3
    and-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lactivity/RegisterActivity;->K:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lactivity/RegisterActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v2

    :goto_4
    and-int/2addr v3, v0

    iget-object v0, p0, Lactivity/RegisterActivity;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lactivity/RegisterActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v1

    :goto_5
    and-int/2addr v3, v0

    iget-object v0, p0, Lactivity/RegisterActivity;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lactivity/RegisterActivity;->a([B)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lactivity/RegisterActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v2

    :goto_6
    and-int/2addr v3, v0

    iget-object v0, p0, Lactivity/RegisterActivity;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lactivity/RegisterActivity;->a([B)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lactivity/RegisterActivity;->N:Ljava/lang/String;

    iget-object v4, p0, Lactivity/RegisterActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lactivity/RegisterActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v2

    :goto_7
    and-int/2addr v0, v3

    iget-object v3, p0, Lactivity/RegisterActivity;->P:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, p0, Lactivity/RegisterActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_8
    and-int/2addr v0, v2

    if-eqz v0, :cond_e

    iget-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v8, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    :cond_4
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Dialog;

    const v0, 0x7f090001

    invoke-direct {v3, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f030011

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/c/m;->a(Landroid/content/Context;)I

    move-result v4

    const-wide v5, 0x3fe3333333333333L

    int-to-double v7, v4

    mul-double v4, v5, v7

    double-to-int v4, v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f0b0046

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    :cond_5
    const v2, 0x7f07001c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_9
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iput-object v3, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    iget-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v0, Lcom/b/x;

    iget-object v1, p0, Lactivity/RegisterActivity;->U:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcom/b/x;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/RegisterActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/x;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/RegisterActivity;->J:Ljava/lang/String;

    iget-object v2, p0, Lactivity/RegisterActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/RegisterActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/x;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/RegisterActivity;->O:Ljava/lang/String;

    iget-object v2, p0, Lactivity/RegisterActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lactivity/RegisterActivity;->R:I

    iget v2, p0, Lactivity/RegisterActivity;->S:I

    invoke-virtual {v0, v1, v2}, Lcom/b/x;->a(II)V

    iget-object v1, p0, Lactivity/RegisterActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/x;->c(Ljava/lang/String;)V

    iget-boolean v1, p0, Lactivity/RegisterActivity;->I:Z

    invoke-virtual {v0, v1}, Lcom/b/x;->a(Z)V

    invoke-virtual {v0}, Lcom/b/x;->start()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lactivity/RegisterActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v1

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lactivity/RegisterActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v1

    goto/16 :goto_4

    :cond_8
    const-string v0, "^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\\.([a-zA-Z0-9_-])+)+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v4, p0, Lactivity/RegisterActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lactivity/RegisterActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v1

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lactivity/RegisterActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v2

    goto/16 :goto_5

    :cond_a
    iget-object v0, p0, Lactivity/RegisterActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v1

    goto/16 :goto_6

    :cond_b
    iget-object v0, p0, Lactivity/RegisterActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v0, v1

    goto/16 :goto_7

    :cond_c
    iget-object v2, p0, Lactivity/RegisterActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move v2, v1

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_e
    iget-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b00a0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x1090009

    const v2, 0x1090008

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->setContentView(I)V

    invoke-virtual {p0}, Lactivity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->m:[Ljava/lang/String;

    invoke-virtual {p0}, Lactivity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->p:[Ljava/lang/String;

    invoke-virtual {p0}, Lactivity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050366

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->q:[Ljava/lang/String;

    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lactivity/RegisterActivity;->T:Landroid/app/Dialog;

    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lactivity/ck;

    invoke-direct {v1, p0}, Lactivity/ck;-><init>(Lactivity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/RegisterActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/RegisterActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/RegisterActivity;->u:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/RegisterActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/RegisterActivity;->v:Landroid/widget/EditText;

    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/RegisterActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/RegisterActivity;->x:Landroid/widget/EditText;

    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/RegisterActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/RegisterActivity;->z:Landroid/widget/EditText;

    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/RegisterActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/RegisterActivity;->B:Landroid/widget/EditText;

    const v0, 0x7f0b00a9

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/RegisterActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/RegisterActivity;->D:Landroid/widget/EditText;

    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/RegisterActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/RegisterActivity;->F:Landroid/widget/EditText;

    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/RegisterActivity;->G:Landroid/widget/TextView;

    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lactivity/RegisterActivity;->H:Landroid/widget/DatePicker;

    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lactivity/RegisterActivity;->n:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lactivity/RegisterActivity;->m:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lactivity/RegisterActivity;->o:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lactivity/RegisterActivity;->o:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lactivity/RegisterActivity;->n:Landroid/widget/Spinner;

    iget-object v1, p0, Lactivity/RegisterActivity;->o:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lactivity/RegisterActivity;->n:Landroid/widget/Spinner;

    new-instance v1, Lactivity/cl;

    invoke-direct {v1, p0}, Lactivity/cl;-><init>(Lactivity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lactivity/RegisterActivity;->r:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lactivity/RegisterActivity;->p:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lactivity/RegisterActivity;->s:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lactivity/RegisterActivity;->s:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lactivity/RegisterActivity;->r:Landroid/widget/Spinner;

    iget-object v1, p0, Lactivity/RegisterActivity;->s:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lactivity/RegisterActivity;->r:Landroid/widget/Spinner;

    new-instance v1, Lactivity/cm;

    invoke-direct {v1, p0}, Lactivity/cm;-><init>(Lactivity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/RegisterActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/RegisterActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
