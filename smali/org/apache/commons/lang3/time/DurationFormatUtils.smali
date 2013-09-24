.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;


# static fields
.field static final H:Ljava/lang/Object; = null

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "y"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    const-string v0, "M"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    const-string v0, "d"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    const-string v0, "H"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    const-string v0, "m"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    const-string v0, "s"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    const-string v0, "S"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;
    .locals 9

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    array-length v4, p0

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    move/from16 v1, p7

    :goto_0
    if-ge v2, v4, :cond_11

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v5

    instance-of v7, v6, Ljava/lang/StringBuffer;

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    if-ne v6, v7, :cond_3

    if-eqz p8, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_3
    const/4 v1, 0x0

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    if-ne v6, v7, :cond_5

    if-eqz p8, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_3

    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    if-ne v6, v7, :cond_7

    if-eqz p8, :cond_6

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_3

    :cond_6
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    if-ne v6, v7, :cond_9

    if-eqz p8, :cond_8

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_3

    :cond_8
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    if-ne v6, v7, :cond_b

    if-eqz p8, :cond_a

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_3

    :cond_a
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    if-ne v6, v7, :cond_d

    if-eqz p8, :cond_c

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_d
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    if-eqz v0, :cond_f

    add-int/lit16 v1, v1, 0x3e8

    if-eqz p8, :cond_e

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_3

    :cond_e
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_f
    if-eqz p8, :cond_10

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_3

    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 10

    invoke-static {p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x5265c00

    div-long v1, p0, v1

    long-to-int v3, v1

    int-to-long v1, v3

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v1, v8

    sub-long/2addr p0, v1

    :cond_0
    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v1, 0x36ee80

    div-long v1, p0, v1

    long-to-int v4, v1

    int-to-long v1, v4

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v1, v8

    sub-long/2addr p0, v1

    :cond_1
    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/32 v1, 0xea60

    div-long v1, p0, v1

    long-to-int v5, v1

    int-to-long v1, v5

    const-wide/32 v8, 0xea60

    mul-long/2addr v1, v8

    sub-long/2addr p0, v1

    :cond_2
    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x3e8

    div-long v1, p0, v1

    long-to-int v6, v1

    int-to-long v1, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v1, v8

    sub-long/2addr p0, v1

    :cond_3
    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    long-to-int v7, p0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 1

    const-string v0, "H:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .locals 2

    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .locals 4

    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, " 0 days"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_4

    const-string v1, " 0 hours"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    const-string v0, " 0 minutes"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, " 0 seconds"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, " 0 seconds"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    const-string v0, " 0 minutes"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    const-string v1, " 0 hours"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    const-string v0, " 0 days"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " 1 seconds"

    const-string v2, " 1 second"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " 1 minutes"

    const-string v2, " 1 minute"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " 1 hours"

    const-string v2, " 1 hour"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " 1 days"

    const-string v2, " 1 day"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 12

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xe

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xe

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v7, v1, v2

    const/16 v1, 0xd

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v6, v1, v2

    const/16 v1, 0xc

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v5, v1, v2

    const/16 v1, 0xb

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v4, v1, v2

    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v2, v1, v2

    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v3, v1, v3

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v1, v10

    :goto_0
    if-gez v7, :cond_0

    add-int/lit16 v7, v7, 0x3e8

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v6, :cond_1

    add-int/lit8 v6, v6, 0x3c

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v5, :cond_2

    add-int/lit8 v5, v5, 0x3c

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-gez v4, :cond_3

    add-int/lit8 v4, v4, 0x18

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    sget-object v10, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v0, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v11, v3

    move v3, v2

    move v2, v11

    :goto_4
    if-gez v3, :cond_4

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    add-int/2addr v3, v9

    add-int/lit8 v2, v2, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    :cond_4
    :goto_5
    if-gez v2, :cond_5

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_5
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v0, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    if-eqz v1, :cond_c

    :goto_6
    if-eqz v1, :cond_c

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v2, v1

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    sget-object v10, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v0, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-gez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    :cond_7
    :goto_7
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, v1, :cond_9

    const/4 v3, 0x6

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v3, v10

    add-int/2addr v2, v3

    instance-of v3, v8, Ljava/util/GregorianCalendar;

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_8

    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v10, 0x1d

    if-ne v3, v10, :cond_8

    add-int/lit8 v2, v2, 0x1

    :cond_8
    const/4 v3, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v3, v10}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x6

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_8
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v3, v10, :cond_b

    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v3, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    move v11, v3

    move v3, v2

    move v2, v11

    :goto_9
    if-gez v3, :cond_c

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    add-int/2addr v3, v9

    add-int/lit8 v2, v2, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    :cond_c
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v0, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    mul-int/lit8 v3, v3, 0x18

    add-int/2addr v4, v3

    const/4 v3, 0x0

    :cond_d
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v0, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v5, v4

    const/4 v4, 0x0

    :cond_e
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v0, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v6, v5

    const/4 v5, 0x0

    :cond_f
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v0, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v7, v6

    const/4 v6, 0x0

    :cond_10
    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .locals 7

    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .locals 11

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    array-length v0, v7

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v9, v7

    move v6, v5

    move-object v0, v2

    move-object v1, v2

    move v3, v5

    :goto_0
    if-ge v6, v9, :cond_5

    aget-char v4, v7, v6

    if-eqz v3, :cond_1

    const/16 v10, 0x27

    if-eq v4, v10, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    sparse-switch v4, :sswitch_data_0

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v10, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    :goto_3
    move-object v1, v2

    goto :goto_1

    :sswitch_0
    if-eqz v3, :cond_3

    move-object v4, v2

    move-object v1, v2

    move v3, v5

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v3, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    move-object v4, v2

    goto :goto_2

    :sswitch_1
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    goto :goto_2

    :sswitch_2
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    goto :goto_2

    :sswitch_3
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_2

    :sswitch_4
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    goto :goto_2

    :sswitch_5
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    goto :goto_2

    :sswitch_6
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    goto :goto_2

    :sswitch_7
    sget-object v4, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v0, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x48 -> :sswitch_4
        0x4d -> :sswitch_2
        0x53 -> :sswitch_7
        0x64 -> :sswitch_3
        0x6d -> :sswitch_5
        0x73 -> :sswitch_6
        0x79 -> :sswitch_1
    .end sparse-switch
.end method
