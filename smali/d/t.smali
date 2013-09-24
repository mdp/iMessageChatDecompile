.class public Ld/t;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/t;->c:J

    return-void
.end method

.method public final h()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/t;->d:J

    iget-wide v0, p0, Ld/t;->d:J

    iget-wide v2, p0, Ld/t;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ld/t;->b:J

    return-void
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Ld/t;->b:J

    return-wide v0
.end method
