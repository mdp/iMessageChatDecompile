.class public abstract Lorg/apache/commons/lang3/concurrent/LazyInitializer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;


# instance fields
.field private volatile object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->initialize()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract initialize()Ljava/lang/Object;
.end method
