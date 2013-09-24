.class public Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;
.super Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;


# instance fields
.field private final childInitializers:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addInitializer(Ljava/lang/String;Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name of child initializer must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Child initializer must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addInitializer() must not be called after start()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected getTaskCount()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->getTaskCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected bridge synthetic initialize()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->initialize()Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;

    move-result-object v0

    return-object v0
.end method

.method protected initialize()Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->getActiveExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->getExternalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->setExternalExecutor(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->start()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$1;)V

    return-object v0
.end method
