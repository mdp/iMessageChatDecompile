.class public final Lcom/b/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/q;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lactivity/MyApplication;

.field private c:Lcom/b/i;

.field private d:Lcom/b/d;

.field private e:Lcom/b/ad;

.field private f:Lcom/d/a;

.field private g:Lcom/a/d;

.field private h:Lcom/a/g;

.field private i:Lcom/a/f;

.field private j:Lcom/c/l;

.field private k:Lcom/a/c;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lactivity/MyApplication;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/af;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/b/af;->b:Lactivity/MyApplication;

    invoke-virtual {p3}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/b/af;->j:Lcom/c/l;

    new-instance v0, Lcom/d/a;

    iget-object v1, p0, Lcom/b/af;->a:Landroid/content/Context;

    const-string v2, "saveUser"

    invoke-direct {v0, v1, v2}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/af;->f:Lcom/d/a;

    invoke-virtual {p3}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/b/af;->c:Lcom/b/i;

    invoke-virtual {p3}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/b/af;->d:Lcom/b/d;

    invoke-virtual {p3}, Lactivity/MyApplication;->c()Lcom/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/b/af;->e:Lcom/b/ad;

    iput-object p2, p0, Lcom/b/af;->l:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/d;Lcom/a/g;Lcom/a/f;Lcom/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/b/af;->g:Lcom/a/d;

    iput-object p2, p0, Lcom/b/af;->h:Lcom/a/g;

    iput-object p3, p0, Lcom/b/af;->i:Lcom/a/f;

    iput-object p4, p0, Lcom/b/af;->k:Lcom/a/c;

    return-void
.end method

.method public final a(Lcom/c/j;)V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/b/af;->g:Lcom/a/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/c/j;->m()Lcom/b/w;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/b/w;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/b/w;->h()J

    move-result-wide v7

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-static {v7, v8}, Lcom/b/s;->b(J)Lcom/c/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    new-instance v0, Lcom/c/l;

    invoke-direct {v0}, Lcom/c/l;-><init>()V

    invoke-virtual {v0, v1}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/af;->h:Lcom/a/g;

    invoke-virtual {v2, v0}, Lcom/a/g;->a(Lcom/c/l;)V

    new-instance v0, Lactivity/o;

    invoke-static {}, Lcom/a/e;->b()Ljava/lang/String;

    move-result-object v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lactivity/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p1}, Lcom/c/j;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lactivity/o;->e(I)V

    :goto_1
    invoke-virtual {v6}, Lcom/b/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/o;->e(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/b/w;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lactivity/o;->a(J)V

    invoke-virtual {v6}, Lcom/b/w;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/o;->a([B)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lactivity/o;->b(I)V

    iget-object v1, p0, Lcom/b/af;->g:Lcom/a/d;

    iget-object v2, p0, Lcom/b/af;->j:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/a/d;->a(Ljava/lang/String;Lactivity/o;)V

    sget v0, Lactivity/MyActivity;->j:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/af;->l:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/b/af;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lactivity/o;->e(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/c/j;->b()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.way.message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/b/af;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
