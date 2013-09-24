.class public Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# instance fields
.field private daemonFlag:Ljava/lang/Boolean;

.field private exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private namingPattern:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->build()Lorg/apache/commons/lang3/concurrent/BasicThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/commons/lang3/concurrent/BasicThreadFactory;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory;-><init>(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$1;)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->reset()V

    return-object v0
.end method

.method public daemon(Z)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public namingPattern(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Naming pattern must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object p0
.end method

.method public priority(I)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public uncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uncaught exception handler must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public wrappedFactory(Ljava/util/concurrent/ThreadFactory;)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Wrapped ThreadFactory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method
