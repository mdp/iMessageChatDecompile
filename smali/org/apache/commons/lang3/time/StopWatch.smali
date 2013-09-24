.class public Lorg/apache/commons/lang3/time/StopWatch;
.super Ljava/lang/Object;


# static fields
.field private static final NANO_2_MILLIS:J = 0xf4240L

.field private static final STATE_RUNNING:I = 0x1

.field private static final STATE_SPLIT:I = 0xb

.field private static final STATE_STOPPED:I = 0x2

.field private static final STATE_SUSPENDED:I = 0x3

.field private static final STATE_UNSPLIT:I = 0xa

.field private static final STATE_UNSTARTED:I


# instance fields
.field private runningState:I

.field private splitState:I

.field private startTime:J

.field private startTimeMillis:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:I

    return-void
.end method


# virtual methods
.method public getNanoTime()J
    .locals 4

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal running state has occured. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSplitNanoTime()J
    .locals 4

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSplitTime()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:I

    return-void
.end method

.method public resume()V
    .locals 6

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    return-void
.end method

.method public split()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    const/16 v0, 0xb

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:I

    return-void
.end method

.method public start()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    return-void
.end method

.method public suspend()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:I

    return-void
.end method

.method public toSplitString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsplit()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:I

    return-void
.end method
