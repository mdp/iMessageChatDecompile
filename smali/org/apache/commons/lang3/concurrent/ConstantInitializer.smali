.class public Lorg/apache/commons/lang3/concurrent/ConstantInitializer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;


# static fields
.field private static final FMT_TO_STRING:Ljava/lang/String; = "ConstantInitializer@%d [ object = %s ]"


# instance fields
.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ConstantInitializer@%d [ object = %s ]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
