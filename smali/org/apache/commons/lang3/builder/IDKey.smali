.class final Lorg/apache/commons/lang3/builder/IDKey;
.super Ljava/lang/Object;


# instance fields
.field private final id:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/commons/lang3/builder/IDKey;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/builder/IDKey;

    iget v1, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    iget v2, p1, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    iget-object v2, p1, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    return v0
.end method
