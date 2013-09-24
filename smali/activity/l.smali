.class public final Lactivity/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:J

.field private i:Z

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lactivity/l;->d:Z

    iput-boolean v1, p0, Lactivity/l;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lactivity/l;->f:I

    iput-boolean v1, p0, Lactivity/l;->i:Z

    iput v1, p0, Lactivity/l;->j:I

    iput v1, p0, Lactivity/l;->k:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lactivity/l;->d:Z

    iput-boolean v0, p0, Lactivity/l;->e:Z

    iput v1, p0, Lactivity/l;->f:I

    iput-boolean v0, p0, Lactivity/l;->i:Z

    iput v0, p0, Lactivity/l;->j:I

    iput v0, p0, Lactivity/l;->k:I

    iput-object p1, p0, Lactivity/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lactivity/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lactivity/l;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lactivity/l;->d:Z

    iput p5, p0, Lactivity/l;->f:I

    iput v1, p0, Lactivity/l;->g:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lactivity/l;->f:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lactivity/l;->h:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/l;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lactivity/l;->j:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/l;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lactivity/l;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lactivity/l;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lactivity/l;->e:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lactivity/l;->f:I

    return v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lactivity/l;->h:J

    return-wide v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/l;->i:Z

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lactivity/l;->j:I

    return v0
.end method
