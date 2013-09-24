.class public final Lcom/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/c/b;

.field private b:I

.field private c:Lcom/b/y;

.field private d:Lcom/b/w;

.field private e:Lcom/b/p;

.field private f:Ljava/lang/String;

.field private g:Lcom/c/q;

.field private h:Ljava/util/concurrent/locks/ReentrantLock;

.field private i:Lactivity/NewMessageActivity;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/j;->b:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/c/j;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/j;->j:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/c/j;->b:I

    return v0
.end method

.method public final a(Lactivity/o;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x4

    new-instance v0, Lcom/b/w;

    invoke-direct {v0, p1}, Lcom/b/w;-><init>(Lactivity/o;)V

    iput-object v0, p0, Lcom/c/j;->d:Lcom/b/w;

    new-instance v0, Lcom/c/b;

    invoke-direct {v0}, Lcom/c/b;-><init>()V

    iput-object v0, p0, Lcom/c/j;->a:Lcom/c/b;

    new-array v0, v4, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x5

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    iget-object v1, p0, Lcom/c/j;->a:Lcom/c/b;

    invoke-virtual {v1, v0, v4}, Lcom/c/b;->a([BI)V

    return-void
.end method

.method public final a(Lcom/c/b;)V
    .locals 1

    iput-object p1, p0, Lcom/c/j;->a:Lcom/c/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/j;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;Lactivity/NewMessageActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/c/j;->f:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/c/j;->b:I

    iput-object p2, p0, Lcom/c/j;->i:Lactivity/NewMessageActivity;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/b/y;)V
    .locals 1

    iput-object p1, p0, Lcom/c/j;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/c/j;->c:Lcom/b/y;

    const/4 v0, 0x1

    iput v0, p0, Lcom/c/j;->b:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/c/j;->j:Z

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Lcom/c/q;

    invoke-direct {v0}, Lcom/c/q;-><init>()V

    iput-object v0, p0, Lcom/c/j;->g:Lcom/c/q;

    iget-object v0, p0, Lcom/c/j;->g:Lcom/c/q;

    iget-object v1, p0, Lcom/c/j;->a:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    iput v1, v0, Lcom/c/q;->c:I

    iget-object v0, p0, Lcom/c/j;->g:Lcom/c/q;

    iget v0, v0, Lcom/c/q;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/c/j;->g:Lcom/c/q;

    iget-object v1, p0, Lcom/c/j;->d:Lcom/b/w;

    invoke-virtual {v1}, Lcom/b/w;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/c/q;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/c/j;->g:Lcom/c/q;

    iget-object v1, p0, Lcom/c/j;->d:Lcom/b/w;

    invoke-virtual {v1}, Lcom/b/w;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/c/q;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final c()Lcom/c/q;
    .locals 1

    iget-object v0, p0, Lcom/c/j;->g:Lcom/c/q;

    return-object v0
.end method

.method public final d()V
    .locals 2

    new-instance v0, Lcom/b/w;

    invoke-direct {v0}, Lcom/b/w;-><init>()V

    iput-object v0, p0, Lcom/c/j;->d:Lcom/b/w;

    iget-object v0, p0, Lcom/c/j;->d:Lcom/b/w;

    iget-object v1, p0, Lcom/c/j;->a:Lcom/c/b;

    invoke-virtual {v0, v1}, Lcom/b/w;->a(Lcom/c/b;)Z

    return-void
.end method

.method public final e()Lactivity/NewMessageActivity;
    .locals 1

    iget-object v0, p0, Lcom/c/j;->i:Lactivity/NewMessageActivity;

    return-object v0
.end method

.method public final f()Lcom/b/y;
    .locals 1

    iget-object v0, p0, Lcom/c/j;->c:Lcom/b/y;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/c/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/c/b;
    .locals 1

    iget-object v0, p0, Lcom/c/j;->a:Lcom/c/b;

    return-object v0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lcom/c/j;->a:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->a()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final j()[B
    .locals 1

    iget-object v0, p0, Lcom/c/j;->a:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 2

    new-instance v0, Lcom/b/p;

    invoke-direct {v0}, Lcom/b/p;-><init>()V

    iput-object v0, p0, Lcom/c/j;->e:Lcom/b/p;

    iget-object v0, p0, Lcom/c/j;->e:Lcom/b/p;

    iget-object v1, p0, Lcom/c/j;->a:Lcom/c/b;

    invoke-virtual {v0, v1}, Lcom/b/p;->a(Lcom/c/b;)V

    return-void
.end method

.method public final l()Lcom/b/p;
    .locals 1

    iget-object v0, p0, Lcom/c/j;->e:Lcom/b/p;

    return-object v0
.end method

.method public final m()Lcom/b/w;
    .locals 1

    iget-object v0, p0, Lcom/c/j;->d:Lcom/b/w;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lcom/c/j;->a:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    return v0
.end method

.method public final o()Lcom/b/z;
    .locals 2

    new-instance v0, Lcom/b/z;

    invoke-direct {v0}, Lcom/b/z;-><init>()V

    iget-object v1, p0, Lcom/c/j;->a:Lcom/c/b;

    invoke-virtual {v0, v1}, Lcom/b/z;->a(Lcom/c/b;)V

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/c/j;->j:Z

    return v0
.end method
