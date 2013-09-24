.class Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDateFormat$Rule;


# static fields
.field static final INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

.field static final INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;


# instance fields
.field final mColon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->mColon:Z

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 3

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    if-gez v0, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v0, v0

    :goto_0
    const v1, 0x36ee80

    div-int v1, v0, v1

    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->mColon:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const v2, 0xea60

    div-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public estimateLength()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
