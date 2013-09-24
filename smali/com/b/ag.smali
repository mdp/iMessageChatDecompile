.class public final Lcom/b/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/q;


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lactivity/MyApplication;

.field private d:Lcom/b/i;

.field private e:Lcom/b/d;

.field private f:Lcom/b/ad;

.field private g:Lcom/d/a;

.field private h:Lcom/a/d;

.field private i:Lcom/a/g;

.field private j:Lcom/a/f;

.field private k:Lcom/c/l;

.field private l:Lcom/a/c;

.field private m:Landroid/os/Handler;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lactivity/MyApplication;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/ag;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/b/ag;->c:Lactivity/MyApplication;

    invoke-virtual {p3}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/b/ag;->k:Lcom/c/l;

    new-instance v0, Lcom/d/a;

    iget-object v1, p0, Lcom/b/ag;->b:Landroid/content/Context;

    const-string v2, "saveUser"

    invoke-direct {v0, v1, v2}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {p3}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/b/ag;->d:Lcom/b/i;

    invoke-virtual {p3}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/b/ag;->e:Lcom/b/d;

    invoke-virtual {p3}, Lactivity/MyApplication;->c()Lcom/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/b/ag;->f:Lcom/b/ad;

    iput-object p2, p0, Lcom/b/ag;->m:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/b/ag;->l:Lcom/a/c;

    const-string v2, "Login"

    const-string v3, " Pri "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/b/ag;->n:Z

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/a/c;->b(Ljava/lang/String;)V

    const-string v0, "Login"

    const-string v1, " getPri "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/b/ag;->f:Lcom/b/ad;

    invoke-virtual {v0}, Lcom/b/ad;->a()Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.way.loginstep"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/b/ag;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Lcom/a/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/c/b;)V
    .locals 8

    const/4 v7, 0x1

    const v6, 0xff00

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v3

    const/16 v0, 0x8

    iput-boolean v5, p0, Lcom/b/ag;->n:Z

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x4

    sput-object v1, Le/c;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x8

    and-int v4, v0, v6

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    sput v1, Le/c;->h:I

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_1

    iput-boolean v7, p0, Lcom/b/ag;->n:Z

    :cond_1
    sput-object v1, Le/c;->j:[B

    add-int/2addr v0, v4

    goto/16 :goto_0

    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    if-eqz v0, :cond_2

    iput-boolean v7, p0, Lcom/b/ag;->n:Z

    :cond_2
    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    sput-object v1, Le/c;->i:[B

    goto/16 :goto_0

    :pswitch_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    sput-object v1, Le/c;->n:[B

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private b(Lcom/c/b;)V
    .locals 7

    const/4 v6, 0x1

    const v5, 0xff00

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v2

    const/4 v0, 0x7

    iput-boolean v4, p0, Lcom/b/ag;->n:Z

    :goto_0
    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x4

    sput-object v1, Le/c;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x8

    and-int v3, v0, v5

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    sput v1, Le/c;->h:I

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/b/ag;->n:Z

    :cond_1
    sput-object v1, Le/c;->j:[B

    add-int/2addr v0, v3

    goto/16 :goto_0

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    if-eqz v0, :cond_2

    iput-boolean v6, p0, Lcom/b/ag;->n:Z

    :cond_2
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    sput-object v1, Le/c;->i:[B

    goto/16 :goto_0

    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Le/c;->k:[B

    add-int/2addr v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c(Lcom/c/b;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lb/a;

    invoke-direct {v1, p1}, Lb/a;-><init>(Lcom/c/b;)V

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v2

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    invoke-static {v2}, Lb/a;->a(B)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v2}, Lactivity/LoginActivity;->b(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.way.loginstep"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "message"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/b/ag;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {v1}, Lb/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-virtual {v1}, Lb/a;->b()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/ag;->d:Lcom/b/i;

    invoke-virtual {v1, v0}, Lcom/b/i;->a(Lcom/c/j;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/c/j;

    invoke-direct {v1}, Lcom/c/j;-><init>()V

    const-string v2, "NetWork "

    const-string v3, "Down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/b/p;->a()Lcom/c/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    invoke-virtual {v1}, Lcom/c/j;->k()V

    const-string v2, "com.way.message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/b/ag;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/a/d;Lcom/a/g;Lcom/a/f;Lcom/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/b/ag;->h:Lcom/a/d;

    iput-object p2, p0, Lcom/b/ag;->i:Lcom/a/g;

    iput-object p3, p0, Lcom/b/ag;->j:Lcom/a/f;

    iput-object p4, p0, Lcom/b/ag;->l:Lcom/a/c;

    return-void
.end method

.method public final a(Lcom/c/j;)V
    .locals 13

    const/4 v6, 0x5

    const/4 v12, 0x2

    const/4 v2, 0x7

    const/4 v11, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/c/j;->i()I

    move-result v0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v1, "InMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " type "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/c/j;->n()I

    move-result v2

    invoke-static {v1, v2}, Lcom/b/b;->a([BI)Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/ag;->f:Lcom/b/ad;

    invoke-virtual {v1, v0}, Lcom/b/ad;->a(Lcom/c/j;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/c/f;

    invoke-direct {v0}, Lcom/c/f;-><init>()V

    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/j;->n()I

    move-result v1

    invoke-static {v0, v1}, Lcom/c/f;->a([BI)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/c/j;->n()I

    move-result v4

    const/4 v0, 0x6

    aget-byte v0, v3, v0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v2, v1

    :goto_2
    if-lez v2, :cond_0

    invoke-static {v2}, Lactivity/LoginActivity;->b(I)V

    const-string v0, "com.way.loginstep"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/b/ag;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v3}, Le/a;->a([B)V

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-static {}, Le/a;->c()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/ag;->d:Lcom/b/i;

    invoke-virtual {v1, v0}, Lcom/b/i;->a(Lcom/c/j;)V

    const/4 v2, 0x3

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/b/ag;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ProgrameUUID"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "id: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "35"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ProgrameUUID"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "device_uuid: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "android_id"

    invoke-static {v0, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    const-string v0, "209bc4511c6df7s"

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "ProgrameUUID"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "android_id_uuid: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Auth_Result"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4}, Le/a;->a([BI)Z

    move-result v3

    iget-object v4, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v4}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    sget-object v1, Le/c;->e:[B

    iget-object v3, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v3}, Lcom/d/a;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/b/ag;->l:Lcom/a/c;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/b/ag;->l:Lcom/a/c;

    invoke-virtual {v3, v4}, Lcom/a/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v6, Lcom/b/o;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v6, v4, v3, v0, v1}, Lcom/b/o;-><init>(Ljava/lang/String;[B[B[B)V

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-virtual {v6}, Lcom/b/o;->a()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/ag;->d:Lcom/b/i;

    invoke-virtual {v1, v0}, Lcom/b/i;->a(Lcom/c/j;)V

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v3}, Lcom/d/a;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/b/o;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v6, v4, v3, v0, v1}, Lcom/b/o;-><init>(Ljava/lang/String;[B[B[B)V

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-virtual {v6}, Lcom/b/o;->b()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/ag;->d:Lcom/b/i;

    invoke-virtual {v1, v0}, Lcom/b/i;->a(Lcom/c/j;)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/b/ag;->d:Lcom/b/i;

    invoke-virtual {v0}, Lcom/b/i;->d()V

    iget-object v0, p0, Lcom/b/ag;->f:Lcom/b/ad;

    invoke-virtual {v0}, Lcom/b/ad;->b()V

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "Heart"

    const-string v1, "Respone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/j;->n()I

    move-result v1

    if-ne v1, v6, :cond_5

    aget-byte v1, v0, v11

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    aget-byte v2, v0, v12

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    sput v0, Lcom/c/a;->d:I

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, -0x100

    and-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v4, 0xff

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    sput v0, Lcom/c/a;->d:I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v0

    aget-byte v0, v0, v2

    invoke-static {v0}, Lb/a;->a(B)I

    move-result v0

    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v1

    aget-byte v1, v1, v2

    sparse-switch v1, :sswitch_data_1

    invoke-virtual {p1}, Lcom/c/j;->h()Lcom/c/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/ag;->c(Lcom/c/b;)V

    goto/16 :goto_0

    :sswitch_6
    sput-boolean v11, Lcom/b/ag;->a:Z

    invoke-virtual {p1}, Lcom/c/j;->h()Lcom/c/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/b/ag;->a(Lcom/c/b;)V

    invoke-direct {p0, v0}, Lcom/b/ag;->a(I)V

    goto/16 :goto_0

    :sswitch_7
    sput-boolean v4, Lcom/b/ag;->a:Z

    invoke-virtual {p1}, Lcom/c/j;->h()Lcom/c/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/b/ag;->b(Lcom/c/b;)V

    invoke-direct {p0, v0}, Lcom/b/ag;->a(I)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/c/j;->h()Lcom/c/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/ag;->c(Lcom/c/b;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/c/j;->k()V

    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v0

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    sput v0, Lactivity/LoginActivity;->a:I

    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v0

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/b/ag;->f:Lcom/b/ad;

    invoke-virtual {v0}, Lcom/b/ad;->c()V

    iget-object v0, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v0, v11}, Lcom/d/a;->a(Z)V

    iget-object v0, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v0, v12}, Lcom/d/a;->a(I)V

    iget-object v0, p0, Lcom/b/ag;->c:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->e()Lcom/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/m;->b()V

    iget-object v0, p0, Lcom/b/ag;->c:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/d;->a()Z

    invoke-virtual {p1}, Lcom/c/j;->l()Lcom/b/p;

    move-result-object v0

    iget-object v1, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/b/ag;->l:Lcom/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/b/p;->a(Ljava/lang/String;Lcom/a/c;)V

    iget-object v0, p0, Lcom/b/ag;->d:Lcom/b/i;

    invoke-virtual {v0}, Lcom/b/i;->c()V

    iget-object v0, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v0, v11}, Lcom/d/a;->c(Z)V

    :goto_3
    const-string v0, "com.way.message"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/b/ag;->b:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "Login error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v2

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/ag;->g:Lcom/d/a;

    invoke-virtual {v0, v11}, Lcom/d/a;->a(I)V

    iget-object v0, p0, Lcom/b/ag;->b:Landroid/content/Context;

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/c;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/ag;->d:Lcom/b/i;

    invoke-virtual {v0}, Lcom/b/i;->d()V

    iget-object v0, p0, Lcom/b/ag;->f:Lcom/b/ad;

    invoke-virtual {v0}, Lcom/b/ad;->b()V

    goto :goto_3

    :sswitch_a
    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v0

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    const-string v1, "InMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "stype"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/c/j;->o()Lcom/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/z;->b()J

    move-result-wide v3

    new-instance v1, Lcom/c/j;

    invoke-direct {v1}, Lcom/c/j;-><init>()V

    invoke-static {v3, v4}, Lcom/b/s;->a(J)Lcom/c/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/c/j;->a(Lcom/c/b;)V

    const/16 v3, 0x8

    invoke-virtual {v0}, Lcom/b/z;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    invoke-virtual {v0}, Lcom/b/z;->b()J

    move-result-wide v0

    move v2, v3

    :goto_4
    iget-object v3, p0, Lcom/b/ag;->h:Lcom/a/d;

    iget-object v4, p0, Lcom/b/ag;->k:Lcom/c/l;

    invoke-virtual {v4}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/a/d;->a(Ljava/lang/String;JI)V

    iget-object v3, p0, Lcom/b/ag;->h:Lcom/a/d;

    iget-object v4, p0, Lcom/b/ag;->k:Lcom/c/l;

    invoke-virtual {v4}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/a/d;->b(Ljava/lang/String;JI)V

    invoke-virtual {p1}, Lcom/c/j;->b()V

    const-string v0, "com.way.message"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/b/ag;->b:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/c/j;->d()V

    invoke-virtual {p1}, Lcom/c/j;->m()Lcom/b/w;

    move-result-object v8

    invoke-virtual {v8}, Lcom/b/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/b/w;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/b/w;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/ag;->h:Lcom/a/d;

    iget-object v2, p0, Lcom/b/ag;->k:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/b/w;->c()J

    move-result-wide v9

    invoke-virtual {v0, v2, v9, v10}, Lcom/a/d;->c(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "messageDB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Msg Exit"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/ag;->b:Landroid/content/Context;

    const-string v2, "MsgExitError"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v8}, Lcom/b/w;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v3, "...."

    iget-object v0, p0, Lcom/b/ag;->c:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/d;->a(Lcom/c/j;)V

    new-instance v0, Lactivity/o;

    invoke-static {}, Lcom/a/e;->b()Ljava/lang/String;

    move-result-object v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lactivity/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lactivity/o;->e(I)V

    invoke-virtual {v8}, Lcom/b/w;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lactivity/o;->a(J)V

    invoke-virtual {v8}, Lcom/b/w;->b()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/o;->a([B)V

    invoke-virtual {v8}, Lcom/b/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/o;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lactivity/o;->b(I)V

    iget-object v2, p0, Lcom/b/ag;->h:Lcom/a/d;

    iget-object v3, p0, Lcom/b/ag;->k:Lcom/c/l;

    invoke-virtual {v3}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/a/d;->a(Ljava/lang/String;Lactivity/o;)V

    :goto_5
    invoke-virtual {v8}, Lcom/b/w;->h()J

    move-result-wide v2

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-static {v2, v3}, Lcom/b/s;->b(J)Lcom/c/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    new-instance v0, Lcom/c/l;

    invoke-direct {v0}, Lcom/c/l;-><init>()V

    invoke-virtual {v0, v1}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/ag;->i:Lcom/a/g;

    invoke-virtual {v1, v0}, Lcom/a/g;->a(Lcom/c/l;)V

    sget v0, Lactivity/MyActivity;->j:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/b/ag;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v11, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/b/ag;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lactivity/o;

    invoke-static {}, Lcom/a/e;->b()Ljava/lang/String;

    move-result-object v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lactivity/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v6}, Lactivity/o;->e(I)V

    invoke-virtual {v8}, Lcom/b/w;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lactivity/o;->a(J)V

    invoke-virtual {v8}, Lcom/b/w;->b()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/o;->a([B)V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lactivity/o;->b(I)V

    iget-object v2, p0, Lcom/b/ag;->h:Lcom/a/d;

    iget-object v3, p0, Lcom/b/ag;->k:Lcom/c/l;

    invoke-virtual {v3}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/a/d;->a(Ljava/lang/String;Lactivity/o;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/b/ag;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/b/ag;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p1}, Lcom/c/j;->b()V

    const-string v0, "com.way.message"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/b/ag;->b:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lcom/b/z;->b()J

    move-result-wide v0

    const/4 v2, 0x6

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {v0}, Lcom/b/z;->c()J

    move-result-wide v0

    move v2, v6

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {v0}, Lcom/b/z;->b()J

    move-result-wide v0

    goto/16 :goto_4

    :pswitch_9
    iget-object v0, p0, Lcom/b/ag;->c:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/d;->b()Ld/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/j;->h()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/l;->a(Lcom/c/b;)V

    invoke-virtual {v0}, Ld/l;->d()J

    move-result-wide v0

    new-instance v2, Lcom/c/j;

    invoke-direct {v2}, Lcom/c/j;-><init>()V

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/b/s;->a(J)Lcom/c/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/c/j;->a(Lcom/c/b;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/b/ag;->c:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/d;->c()Ld/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/j;->h()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/h;->a(Lcom/c/b;)V

    invoke-virtual {v0}, Ld/h;->e()J

    move-result-wide v0

    new-instance v2, Lcom/c/j;

    invoke-direct {v2}, Lcom/c/j;-><init>()V

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/b/s;->a(J)Lcom/c/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/c/j;->a(Lcom/c/b;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x3 -> :sswitch_9
        0x4 -> :sswitch_a
        0x9 -> :sswitch_4
        0xd -> :sswitch_1
        0xf -> :sswitch_2
        0x3c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_8
        0xc -> :sswitch_6
        0x14 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
