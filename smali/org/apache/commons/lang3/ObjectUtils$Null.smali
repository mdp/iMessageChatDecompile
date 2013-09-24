.class public Lorg/apache/commons/lang3/ObjectUtils$Null;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x626e04ed40667ec5L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/ObjectUtils;->NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;

    return-object v0
.end method
