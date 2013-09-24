.class public final Lactivity/av;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/LinkedList;

.field private c:Lactivity/cu;

.field private d:Lactivity/MyApplication;

.field private e:Lcom/d/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lactivity/av;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/av;->d:Lactivity/MyApplication;

    new-instance v0, Lcom/d/a;

    const-string v1, "saveUser"

    invoke-direct {v0, p2, v1}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/av;->e:Lcom/d/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    new-instance v0, Lactivity/cu;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-direct {v0, p1, v1, v2}, Lactivity/cu;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/av;->c:Lactivity/cu;

    return-void
.end method


# virtual methods
.method public final a()Lactivity/cu;
    .locals 1

    iget-object v0, p0, Lactivity/av;->c:Lactivity/cu;

    return-object v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v0, Lactivity/cx;

    invoke-direct {v0}, Lactivity/cx;-><init>()V

    sget v1, Lactivity/cy;->d:I

    invoke-virtual {v0, v1}, Lactivity/cx;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lactivity/av;->a:Landroid/content/Context;

    const v3, 0x7f070068

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/av;->e:Lcom/d/a;

    invoke-virtual {v2}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/cx;

    invoke-direct {v0}, Lactivity/cx;-><init>()V

    sget v1, Lactivity/cy;->b:I

    invoke-virtual {v0, v1}, Lactivity/cx;->a(I)V

    iget-object v1, p0, Lactivity/av;->a:Landroid/content/Context;

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/cx;

    invoke-direct {v0}, Lactivity/cx;-><init>()V

    sget v1, Lactivity/cy;->b:I

    invoke-virtual {v0, v1}, Lactivity/cx;->a(I)V

    iget-object v1, p0, Lactivity/av;->a:Landroid/content/Context;

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/cx;

    invoke-direct {v0}, Lactivity/cx;-><init>()V

    sget v1, Lactivity/cy;->b:I

    invoke-virtual {v0, v1}, Lactivity/cx;->a(I)V

    iget-object v1, p0, Lactivity/av;->a:Landroid/content/Context;

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/cx;

    invoke-direct {v0}, Lactivity/cx;-><init>()V

    sget v1, Lactivity/cy;->b:I

    invoke-virtual {v0, v1}, Lactivity/cx;->a(I)V

    iget-object v1, p0, Lactivity/av;->a:Landroid/content/Context;

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/cx;

    invoke-direct {v0}, Lactivity/cx;-><init>()V

    sget v1, Lactivity/cy;->b:I

    invoke-virtual {v0, v1}, Lactivity/cx;->a(I)V

    iget-object v1, p0, Lactivity/av;->a:Landroid/content/Context;

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/cx;

    invoke-direct {v0}, Lactivity/cx;-><init>()V

    sget v1, Lactivity/cy;->b:I

    invoke-virtual {v0, v1}, Lactivity/cx;->a(I)V

    iget-object v1, p0, Lactivity/av;->a:Landroid/content/Context;

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/cx;

    invoke-direct {v0}, Lactivity/cx;-><init>()V

    sget v1, Lactivity/cy;->c:I

    invoke-virtual {v0, v1}, Lactivity/cx;->a(I)V

    iget-object v1, p0, Lactivity/av;->a:Landroid/content/Context;

    const v2, 0x7f07006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/av;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
