.class public final Lactivity/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lactivity/z;->a:Ljava/lang/String;

    iput-object p2, p0, Lactivity/z;->b:Ljava/lang/String;

    iput p3, p0, Lactivity/z;->c:I

    const-string v0, ""

    iput-object v0, p0, Lactivity/z;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lactivity/z;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/z;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/z;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lactivity/z;->d:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/z;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lactivity/z;->c:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lactivity/z;->c:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lactivity/z;

    if-eqz v2, :cond_0

    check-cast p1, Lactivity/z;

    iget-object v2, p1, Lactivity/z;->a:Ljava/lang/String;

    iget-object v3, p0, Lactivity/z;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/z;->e:Ljava/lang/String;

    return-object v0
.end method
