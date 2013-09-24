.class public Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = -0x5b589c52f7efcef6L


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
