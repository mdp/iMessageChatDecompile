.class public final Lcom/b/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/b/i;

.field private b:Lcom/b/n;

.field private c:Landroid/content/Context;

.field private d:Lcom/b/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/i;Lcom/b/ad;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/m;->b:Lcom/b/n;

    iput-object p2, p0, Lcom/b/m;->a:Lcom/b/i;

    iput-object p1, p0, Lcom/b/m;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/b/m;->d:Lcom/b/ad;

    return-void
.end method

.method static synthetic a(Lcom/b/m;)Lcom/b/i;
    .locals 1

    iget-object v0, p0, Lcom/b/m;->a:Lcom/b/i;

    return-object v0
.end method

.method static synthetic b(Lcom/b/m;)Lcom/b/ad;
    .locals 1

    iget-object v0, p0, Lcom/b/m;->d:Lcom/b/ad;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/b/m;->b:Lcom/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/m;->b:Lcom/b/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/n;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "Heart"

    const-string v1, "Heart Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/m;->b:Lcom/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/m;->b:Lcom/b/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/n;->a(Z)V

    :cond_0
    new-instance v0, Lcom/b/n;

    invoke-direct {v0, p0}, Lcom/b/n;-><init>(Lcom/b/m;)V

    iput-object v0, p0, Lcom/b/m;->b:Lcom/b/n;

    iget-object v0, p0, Lcom/b/m;->b:Lcom/b/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/n;->a(Z)V

    iget-object v0, p0, Lcom/b/m;->b:Lcom/b/n;

    invoke-virtual {v0}, Lcom/b/n;->start()V

    return-void
.end method
