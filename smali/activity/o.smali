.class public final Lactivity/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:J

.field private k:[B

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/o;->f:Z

    iput-boolean v1, p0, Lactivity/o;->g:Z

    iput-boolean v1, p0, Lactivity/o;->h:Z

    iput-boolean v1, p0, Lactivity/o;->i:Z

    const/4 v0, -0x1

    iput v0, p0, Lactivity/o;->l:I

    iput v1, p0, Lactivity/o;->n:I

    iput v1, p0, Lactivity/o;->o:I

    iput v1, p0, Lactivity/o;->p:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/o;->f:Z

    iput-boolean v1, p0, Lactivity/o;->g:Z

    iput-boolean v1, p0, Lactivity/o;->h:Z

    iput-boolean v1, p0, Lactivity/o;->i:Z

    iput v2, p0, Lactivity/o;->l:I

    iput v1, p0, Lactivity/o;->n:I

    iput v1, p0, Lactivity/o;->o:I

    iput v1, p0, Lactivity/o;->p:I

    iput-object p1, p0, Lactivity/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lactivity/o;->c:Ljava/lang/String;

    iput-object p3, p0, Lactivity/o;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lactivity/o;->g:Z

    iput p5, p0, Lactivity/o;->l:I

    iput v2, p0, Lactivity/o;->m:I

    const-string v0, ""

    iput-object v0, p0, Lactivity/o;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lactivity/o;->p:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lactivity/o;->p:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lactivity/o;->j:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/o;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lactivity/o;->i:Z

    return-void
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lactivity/o;->k:[B

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lactivity/o;->n:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/o;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lactivity/o;->m:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/o;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lactivity/o;->l:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/o;->d:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lactivity/o;->o:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/o;->e:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lactivity/o;->n:I

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/o;->f:Z

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lactivity/o;->g:Z

    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/o;->g:Z

    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lactivity/o;->m:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lactivity/o;->l:I

    return v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lactivity/o;->j:J

    return-wide v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lactivity/o;->o:I

    return v0
.end method

.method public final o()[B
    .locals 1

    iget-object v0, p0, Lactivity/o;->k:[B

    return-object v0
.end method
