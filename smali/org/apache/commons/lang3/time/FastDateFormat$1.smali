.class Lorg/apache/commons/lang3/time/FastDateFormat$1;
.super Lorg/apache/commons/lang3/time/FormatCache;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FormatCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateFormat$1;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method
