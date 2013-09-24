.class Lorg/apache/commons/lang3/time/FastDateFormat$TextField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDateFormat$Rule;


# instance fields
.field private final mField:I

.field private final mValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TextField;->mField:I

    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TextField;->mField:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public estimateLength()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    :goto_1
    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
