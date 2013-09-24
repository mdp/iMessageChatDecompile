.class public final Lactivity/ah;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/LinkedList;

.field private c:Lactivity/v;

.field private d:Lactivity/MyApplication;

.field private e:Lcom/a/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lactivity/ah;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/ah;->d:Lactivity/MyApplication;

    iget-object v0, p0, Lactivity/ah;->d:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->k()Lcom/a/a;

    move-result-object v0

    iput-object v0, p0, Lactivity/ah;->e:Lcom/a/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/ah;->b:Ljava/util/LinkedList;

    new-instance v0, Lactivity/v;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lactivity/ah;->b:Ljava/util/LinkedList;

    invoke-direct {v0, p1, v1, v2}, Lactivity/v;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/ah;->c:Lactivity/v;

    return-void
.end method


# virtual methods
.method public final a()Lactivity/v;
    .locals 1

    iget-object v0, p0, Lactivity/ah;->c:Lactivity/v;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lactivity/ah;->e:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->a()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lactivity/ah;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    if-nez p2, :cond_0

    new-instance v0, Lactivity/z;

    invoke-direct {v0}, Lactivity/z;-><init>()V

    sget v2, Lactivity/aa;->a:I

    invoke-virtual {v0, v2}, Lactivity/z;->a(I)V

    invoke-virtual {v0, p1}, Lactivity/z;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/ah;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "ContactDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "num "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/z;

    invoke-virtual {v0}, Lactivity/z;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    sget v3, Lactivity/aa;->b:I

    invoke-virtual {v0, v3}, Lactivity/z;->a(I)V

    iget-object v3, p0, Lactivity/ah;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
