.class public final Lcom/b/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/q;


# instance fields
.field private a:Z

.field private b:Lcom/b/i;


# direct methods
.method public constructor <init>(Lactivity/MyApplication;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/b/ac;->a:Z

    invoke-virtual {p1}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/b/ac;->b:Lcom/b/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/j;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/b/ac;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/c/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-virtual {p1}, Lcom/c/j;->j()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/c/j;->n()I

    move-result v2

    add-int/lit8 v3, v2, 0x9

    new-array v4, v3, [B

    const/16 v5, 0xc

    aput-byte v5, v4, v7

    add-int/lit8 v5, v3, -0x5

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    const/4 v5, 0x2

    add-int/lit8 v6, v3, -0x5

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    add-int/lit8 v6, v3, -0x5

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v3, -0x5

    shr-int/lit8 v5, v5, 0x0

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    const/4 v5, 0x5

    aput-byte v9, v4, v5

    const/4 v5, 0x6

    aput-byte v8, v4, v5

    const/4 v5, 0x7

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x8

    shr-int/lit8 v6, v2, 0x0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v1, v7, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/c/b;

    invoke-direct {v1, v4, v3}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/ac;->b:Lcom/b/i;

    invoke-virtual {v1, v0}, Lcom/b/i;->a(Lcom/c/j;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/ac;->b:Lcom/b/i;

    invoke-virtual {v0, p1}, Lcom/b/i;->a(Lcom/c/j;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/ac;->b:Lcom/b/i;

    invoke-virtual {v0}, Lcom/b/i;->d()V

    goto :goto_0
.end method
