.class Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;
.super Ljava/lang/Object;


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    if-eqz p2, :cond_0

    const/high16 v0, -0x8000

    or-int/2addr p3, v0

    :cond_0
    iput p3, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    iput-object p4, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;

    if-eqz v2, :cond_3

    check-cast p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    iget v3, p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    iget-object v3, p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
