.class public final Lcom/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/c/k;->a:I

    return v0
.end method

.method public final a(J)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/c/k;->a:I

    iput-wide p1, p0, Lcom/c/k;->c:J

    return-void
.end method

.method public final a(JI)V
    .locals 1

    iput p3, p0, Lcom/c/k;->b:I

    iput-wide p1, p0, Lcom/c/k;->c:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/c/k;->a:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/c/k;->b:I

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/c/k;->c:J

    return-wide v0
.end method
