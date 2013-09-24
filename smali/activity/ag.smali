.class public final Lactivity/ag;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/LinkedList;

.field private c:Lactivity/bx;

.field private d:Ljava/util/LinkedList;

.field private e:Lactivity/cc;

.field private f:Lactivity/MyApplication;

.field private g:Lcom/a/d;

.field private h:Lcom/a/g;

.field private i:Lcom/a/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lactivity/ag;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    iget-object v0, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->j()Lcom/a/d;

    move-result-object v0

    iput-object v0, p0, Lactivity/ag;->g:Lcom/a/d;

    iget-object v0, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->k()Lcom/a/a;

    move-result-object v0

    iput-object v0, p0, Lactivity/ag;->i:Lcom/a/a;

    iget-object v0, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->i()Lcom/a/g;

    move-result-object v0

    iput-object v0, p0, Lactivity/ag;->h:Lcom/a/g;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    new-instance v0, Lactivity/bx;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-direct {v0, p1, v1, v2}, Lactivity/bx;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-object v0, p0, Lactivity/ag;->c:Lactivity/bx;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    new-instance v0, Lactivity/cc;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-direct {v0, p1, v1, v2}, Lactivity/cc;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-object v0, p0, Lactivity/ag;->e:Lactivity/cc;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lactivity/ag;->g:Lcom/a/d;

    iget-object v1, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->g()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v3, v8

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    sget-object v0, Le/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Le/c;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lactivity/cg;

    invoke-direct {v0}, Lactivity/cg;-><init>()V

    sget v1, Lactivity/ci;->c:I

    invoke-virtual {v0, v1}, Lactivity/cg;->a(I)V

    sget-object v1, Le/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lactivity/cg;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lactivity/cg;

    invoke-direct {v0}, Lactivity/cg;-><init>()V

    sget v1, Lactivity/ci;->a:I

    invoke-virtual {v0, v1}, Lactivity/cg;->a(I)V

    invoke-virtual {v0, p1}, Lactivity/cg;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const-string v0, "FriendList"

    const-string v1, "mRecentDeleteList Clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lactivity/o;

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/ag;->i:Lcom/a/a;

    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Lcom/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lactivity/o;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lactivity/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move v1, v8

    move v2, v8

    :goto_2
    iget-object v0, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    if-nez v2, :cond_0

    new-instance v2, Lcom/c/l;

    invoke-direct {v2}, Lcom/c/l;-><init>()V

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ag;->h:Lcom/a/g;

    invoke-virtual {v0, v2}, Lcom/a/g;->a(Lcom/c/l;)V

    invoke-virtual {v7}, Lactivity/o;->i()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v3

    iget-object v0, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->c(I)V

    :goto_3
    new-instance v0, Lactivity/cg;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/c/l;->b()I

    move-result v2

    const-string v4, "ddddd"

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lactivity/cg;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cg;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v3, v9

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/cg;

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lactivity/cg;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/e;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0}, Lactivity/cg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/e;->a(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v2, v4, v11

    if-ltz v2, :cond_6

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/cg;->d(Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/cg;->c(Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->i()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lactivity/cg;->b(I)V

    iget-object v2, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Lactivity/MyApplication;->c(I)V

    :cond_5
    iget-object v2, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lactivity/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_6
    move v2, v9

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_8
    move v3, v8

    goto/16 :goto_3

    :cond_9
    move v3, v8

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lactivity/ag;->g:Lcom/a/d;

    iget-object v1, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "FriendList"

    const-string v2, "mRecentList Clear"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->g()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v3, v8

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    sget-object v0, Le/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Le/c;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lactivity/ch;

    invoke-direct {v0}, Lactivity/ch;-><init>()V

    sget v1, Lactivity/ci;->c:I

    invoke-virtual {v0, v1}, Lactivity/ch;->a(I)V

    sget-object v1, Le/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lactivity/ch;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Lactivity/ch;

    invoke-direct {v0}, Lactivity/ch;-><init>()V

    sget v1, Lactivity/ci;->a:I

    invoke-virtual {v0, v1}, Lactivity/ch;->a(I)V

    invoke-virtual {v0, p1}, Lactivity/ch;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_2
    const-string v0, "FriendList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readmsgDB1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lactivity/o;

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/ag;->i:Lcom/a/a;

    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Lcom/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lactivity/o;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lactivity/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    move v1, v8

    move v2, v8

    :goto_2
    iget-object v0, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    if-nez v2, :cond_0

    new-instance v2, Lcom/c/l;

    invoke-direct {v2}, Lcom/c/l;-><init>()V

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ag;->h:Lcom/a/g;

    invoke-virtual {v0, v2}, Lcom/a/g;->a(Lcom/c/l;)V

    invoke-virtual {v7}, Lactivity/o;->i()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v3

    iget-object v0, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v0, v3}, Lactivity/MyApplication;->c(I)V

    :goto_3
    new-instance v0, Lactivity/ch;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/c/l;->b()I

    move-result v2

    const-string v4, "eeeee"

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lactivity/ch;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/ch;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v3, v9

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ch;

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lactivity/ch;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/e;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0}, Lactivity/ch;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/e;->a(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v2, v4, v11

    if-ltz v2, :cond_7

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/ch;->c(Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/ch;->b(Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->i()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lactivity/ch;->b(I)V

    iget-object v2, p0, Lactivity/ag;->f:Lactivity/MyApplication;

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Lactivity/MyApplication;->c(I)V

    :cond_6
    iget-object v2, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lactivity/ag;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_7
    move v2, v9

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_9
    move v3, v8

    goto/16 :goto_3

    :cond_a
    move v3, v8

    goto/16 :goto_1
.end method

.method public final b()Lactivity/bx;
    .locals 1

    iget-object v0, p0, Lactivity/ag;->c:Lactivity/bx;

    return-object v0
.end method

.method public final c()Lactivity/cc;
    .locals 1

    iget-object v0, p0, Lactivity/ag;->e:Lactivity/cc;

    return-object v0
.end method
