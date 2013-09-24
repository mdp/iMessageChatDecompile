.class public Lorg/apache/commons/lang3/mutable/MutableLong;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I
    .locals 4

    iget-wide v0, p1, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public decrement()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(J)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
