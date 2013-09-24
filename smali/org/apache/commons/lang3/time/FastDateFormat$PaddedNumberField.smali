.class Lorg/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;


# instance fields
.field private final mField:I

.field private final mSize:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;->mField:I

    iput p2, p0, Lorg/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;->mSize:I

    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 5

    const/16 v4, 0x30

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;->mSize:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-ge p2, v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;->mSize:I

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    if-ltz p2, :cond_3

    const/4 v0, 0x1

    :goto_4
    const-string v1, "Negative values should not be possible"

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
