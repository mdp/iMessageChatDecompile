.class public Lactivity/LoginActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static A:I

.field private static B:J

.field public static a:I


# instance fields
.field private C:Lcom/b/aa;

.field private D:Z

.field private final E:J

.field private F:Landroid/os/Handler;

.field private G:Landroid/app/Dialog;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Z

.field private t:Z

.field private u:Landroid/widget/ProgressBar;

.field private v:I

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    iput-boolean v0, p0, Lactivity/LoginActivity;->s:Z

    iput-boolean v0, p0, Lactivity/LoginActivity;->t:Z

    iput v0, p0, Lactivity/LoginActivity;->v:I

    iput-boolean v0, p0, Lactivity/LoginActivity;->w:Z

    iput-boolean v0, p0, Lactivity/LoginActivity;->y:Z

    iput-boolean v0, p0, Lactivity/LoginActivity;->D:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lactivity/LoginActivity;->E:J

    new-instance v0, Lactivity/ba;

    invoke-direct {v0, p0}, Lactivity/ba;-><init>(Lactivity/LoginActivity;)V

    iput-object v0, p0, Lactivity/LoginActivity;->F:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lactivity/LoginActivity;)Lcom/b/aa;
    .locals 1

    iget-object v0, p0, Lactivity/LoginActivity;->C:Lcom/b/aa;

    return-object v0
.end method

.method static synthetic a(Lactivity/LoginActivity;Lcom/b/aa;)V
    .locals 0

    iput-object p1, p0, Lactivity/LoginActivity;->C:Lcom/b/aa;

    return-void
.end method

.method static synthetic a(Lactivity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/LoginActivity;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lactivity/LoginActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lactivity/LoginActivity;->w:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/bf;

    invoke-direct {v2, p0}, Lactivity/bf;-><init>(Lactivity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static b(I)V
    .locals 2

    sput p0, Lactivity/LoginActivity;->A:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lactivity/LoginActivity;->B:J

    return-void
.end method

.method static synthetic b(Lactivity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/LoginActivity;->z:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lactivity/LoginActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lactivity/LoginActivity;->y:Z

    return-void
.end method

.method static synthetic b(Lactivity/LoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lactivity/LoginActivity;->D:Z

    return v0
.end method

.method static synthetic c(Lactivity/LoginActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lactivity/LoginActivity;->F:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lactivity/LoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/LoginActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lactivity/LoginActivity;->A:I

    return v0
.end method

.method static synthetic f()J
    .locals 2

    sget-wide v0, Lactivity/LoginActivity;->B:J

    return-wide v0
.end method

.method private h()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lactivity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .locals 1

    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lactivity/LoginActivity;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/bb;

    invoke-direct {v2, p0}, Lactivity/bb;-><init>(Lactivity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/bc;

    invoke-direct {v2, p0}, Lactivity/bc;-><init>(Lactivity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final b(B)V
    .locals 7

    const v6, 0x111001

    const/4 v5, 0x0

    const v2, 0x7f070012

    const/4 v4, 0x1

    iget-boolean v0, p0, Lactivity/LoginActivity;->t:Z

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lactivity/LoginActivity;->t:Z

    const/4 v0, -0x1

    sput v0, Lactivity/LoginActivity;->a:I

    invoke-virtual {p0}, Lactivity/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    iput-boolean v4, p0, Lactivity/LoginActivity;->D:Z

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/c/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lactivity/LoginActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0, v4}, Lactivity/MyApplication;->b(Z)V

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v1}, Lcom/d/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v4}, Lcom/d/a;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/IntroduceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v6}, Lactivity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lactivity/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lactivity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lactivity/LoginActivity;->v:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    iput v5, p0, Lactivity/LoginActivity;->v:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/bg;

    invoke-direct {v2, p0}, Lactivity/bg;-><init>(Lactivity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lactivity/LoginActivity;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lactivity/LoginActivity;->v:I

    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v3, 0x7f07007a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v3, 0x7f07007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v3, 0x7f07007d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v3, 0x7f07007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lactivity/LoginActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0, v5}, Lactivity/MyApplication;->b(Z)V

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v1}, Lcom/d/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v4}, Lcom/d/a;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/FriendListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v6}, Lactivity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0xa -> :sswitch_4
        0x70 -> :sswitch_5
    .end sparse-switch
.end method

.method public final c()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/bd;

    invoke-direct {v2, p0}, Lactivity/bd;-><init>(Lactivity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/be;

    invoke-direct {v2, p0}, Lactivity/be;-><init>(Lactivity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

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

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "status"

    const-string v2, "EXIT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lactivity/LoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lactivity/LoginActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x111001
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/GetMsgService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lactivity/LoginActivity;->g:Lactivity/MyApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->a(Z)V

    invoke-virtual {p0}, Lactivity/LoginActivity;->g()V

    invoke-virtual {p0}, Lactivity/LoginActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lactivity/RegisterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lactivity/LoginActivity;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0}, Lactivity/LoginActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lactivity/LoginActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lactivity/LoginActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    :cond_3
    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v3, 0x7f070071

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    const v3, 0x7f0b0045

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lactivity/LoginActivity;->u:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lactivity/LoginActivity;->u:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lactivity/LoginActivity;->G:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v1}, Lcom/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v2}, Lcom/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/LoginActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/c/l;->b(Ljava/lang/String;)V

    iput-boolean v4, p0, Lactivity/LoginActivity;->t:Z

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v1}, Lcom/d/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/LoginActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/i;->b()Z

    iput-boolean v4, p0, Lactivity/LoginActivity;->D:Z

    sput v4, Lactivity/LoginActivity;->A:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lactivity/LoginActivity;->B:J

    iget-object v0, p0, Lactivity/LoginActivity;->C:Lcom/b/aa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lactivity/LoginActivity;->C:Lcom/b/aa;

    invoke-virtual {v0}, Lcom/b/aa;->c()V

    :cond_4
    new-instance v0, Lcom/b/aa;

    sget v1, Lactivity/LoginActivity;->A:I

    sget-wide v2, Lactivity/LoginActivity;->B:J

    const-wide/16 v4, 0x7530

    iget-object v6, p0, Lactivity/LoginActivity;->F:Landroid/os/Handler;

    invoke-direct/range {v0 .. v6}, Lcom/b/aa;-><init>(IJJLandroid/os/Handler;)V

    iput-object v0, p0, Lactivity/LoginActivity;->C:Lcom/b/aa;

    iget-object v0, p0, Lactivity/LoginActivity;->C:Lcom/b/aa;

    invoke-virtual {v0}, Lcom/b/aa;->start()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lactivity/LoginActivity;->g()V

    invoke-virtual {p0}, Lactivity/LoginActivity;->finish()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lactivity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b006e
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->setContentView(I)V

    const/4 v0, -0x1

    sput v0, Lactivity/LoginActivity;->a:I

    new-instance v0, Lc/a;

    iget-object v1, p0, Lactivity/LoginActivity;->F:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lc/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lc/a;->start()V

    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/LoginActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/LoginActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/LoginActivity;->n:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/LoginActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/LoginActivity;->o:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/LoginActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/LoginActivity;->p:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/LoginActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/LoginActivity;->q:Landroid/widget/EditText;

    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/LoginActivity;->r:Landroid/widget/EditText;

    iget-object v0, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/LoginActivity;->h:Lcom/d/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/d/a;->a(Z)V

    iget-object v2, p0, Lactivity/LoginActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/LoginActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lactivity/LoginActivity;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0}, Lactivity/LoginActivity;->a(Landroid/content/Context;)V

    :cond_0
    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lactivity/LoginActivity;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lactivity/LoginActivity;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget v0, Lactivity/LoginActivity;->a:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->b(B)V

    :cond_1
    iget-boolean v0, p0, Lactivity/LoginActivity;->w:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lactivity/LoginActivity;->b()V

    :cond_2
    return-void
.end method
