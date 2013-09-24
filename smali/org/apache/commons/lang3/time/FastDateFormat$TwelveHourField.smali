.class Lorg/apache/commons/lang3/time/FastDateFormat$TwelveHourField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;


# instance fields
.field private final mRule:Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TwelveHourField;->mRule:Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TwelveHourField;->mRule:Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TwelveHourField;->mRule:Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TwelveHourField;->mRule:Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;

    invoke-interface {v0}, Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
