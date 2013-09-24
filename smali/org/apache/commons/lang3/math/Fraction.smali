.class public final Lorg/apache/commons/lang3/math/Fraction;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final FOUR_FIFTHS:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final ONE:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final ONE_FIFTH:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final ONE_HALF:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final ONE_QUARTER:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final ONE_THIRD:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final THREE_FIFTHS:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final THREE_QUARTERS:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final TWO_FIFTHS:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final TWO_QUARTERS:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final TWO_THIRDS:Lorg/apache/commons/lang3/math/Fraction; = null

.field public static final ZERO:Lorg/apache/commons/lang3/math/Fraction; = null

.field private static final serialVersionUID:J = 0x3b76f0847842L


# instance fields
.field private final denominator:I

.field private transient hashCode:I

.field private final numerator:I

.field private transient toProperString:Ljava/lang/String;

.field private transient toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_HALF:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_THIRD:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_THIRDS:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_QUARTER:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->THREE_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v6}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_FIFTH:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v4, v6}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->THREE_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->FOUR_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    iput-object v1, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    iput p1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iput p2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    return-void
.end method

.method private static addAndCheck(II)I
    .locals 4

    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: add"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method private addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fraction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->negate()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_3

    move-object p1, p0

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_5

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v0

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v2

    new-instance v1, Lorg/apache/commons/lang3/math/Fraction;

    if-eqz p2, :cond_4

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/math/Fraction;->addAndCheck(II)I

    move-result v0

    :goto_1
    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    move-object p1, v1

    goto :goto_0

    :cond_4
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/math/Fraction;->subAndCheck(II)I

    move-result v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v1, v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v3, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz p2, :cond_6

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_2
    int-to-long v3, v2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v4, 0x1f

    if-le v0, v4, :cond_8

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: numerator too large after multiply"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    goto :goto_3

    :cond_8
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v2, v4, v2

    iget v4, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v1, v4, v1

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    move-object p1, v0

    goto/16 :goto_0
.end method

.method public static getFraction(D)Lorg/apache/commons/lang3/math/Fraction;
    .locals 25

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x41dfffffffc00000L

    cmpl-double v5, v3, v5

    if-gtz v5, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "The value must not be greater than Integer.MAX_VALUE or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    double-to-int v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v5, v0

    sub-double v19, v3, v5

    const/4 v15, 0x0

    const/4 v14, 0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    move-wide/from16 v0, v19

    double-to-int v10, v0

    const-wide/high16 v8, 0x3ff0

    int-to-double v3, v10

    sub-double v6, v19, v3

    const-wide v4, 0x7fefffffffffffffL

    const/4 v3, 0x1

    move/from16 v17, v14

    move/from16 v16, v15

    move v14, v11

    move v15, v12

    move v12, v10

    move-wide/from16 v23, v6

    move-wide v6, v8

    move-wide/from16 v8, v23

    :goto_1
    div-double v10, v6, v8

    double-to-int v13, v10

    int-to-double v10, v13

    mul-double/2addr v10, v8

    sub-double v10, v6, v10

    mul-int v6, v12, v15

    add-int v16, v16, v6

    mul-int v6, v12, v14

    add-int v12, v6, v17

    move/from16 v0, v16

    int-to-double v6, v0

    int-to-double v0, v12

    move-wide/from16 v21, v0

    div-double v6, v6, v21

    sub-double v6, v19, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-int/lit8 v3, v3, 0x1

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    const/16 v4, 0x2710

    if-gt v12, v4, :cond_3

    if-lez v12, :cond_3

    const/16 v4, 0x19

    if-lt v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x19

    if-ne v3, v4, :cond_4

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Unable to convert double to fraction"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    mul-int v3, v18, v14

    add-int/2addr v3, v15

    mul-int/2addr v2, v3

    invoke-static {v2, v14}, Lorg/apache/commons/lang3/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v2

    return-object v2

    :cond_5
    move-wide v4, v6

    move/from16 v17, v14

    move-wide v6, v8

    move v14, v12

    move v12, v13

    move-wide v8, v10

    move/from16 v23, v16

    move/from16 v16, v15

    move/from16 v15, v23

    goto :goto_1
.end method

.method public static getFraction(II)Lorg/apache/commons/lang3/math/Fraction;
    .locals 2

    const/high16 v0, -0x8000

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_3

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    neg-int p0, p0

    neg-int p1, p1

    :cond_3
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0
.end method

.method public static getFraction(III)Lorg/apache/commons/lang3/math/Fraction;
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The numerator must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gez p0, :cond_4

    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    :goto_0
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Numerator too large to represent as an Integer."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_5
    new-instance v2, Lorg/apache/commons/lang3/math/Fraction;

    long-to-int v0, v0

    invoke-direct {v2, v0, p2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v2
.end method

.method public static getFraction(Ljava/lang/String;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 4

    const/16 v2, 0x2f

    const/4 v3, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The string must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(D)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "The fraction could not be parsed as the format X Y/Z"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v3, v0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(III)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_0
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;
    .locals 3

    const/high16 v2, -0x8000

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    :goto_0
    return-object v0

    :cond_1
    if-ne p1, v2, :cond_5

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_5

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    move v0, p1

    move v1, p0

    :goto_1
    if-gez v0, :cond_4

    if-eq v1, v2, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    neg-int v1, v1

    neg-int v0, v0

    :cond_4
    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v2

    div-int/2addr v1, v2

    div-int v2, v0, v2

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    goto :goto_0

    :cond_5
    move v0, p1

    move v1, p0

    goto :goto_1
.end method

.method private static greatestCommonDivisor(II)I
    .locals 7

    const/16 v5, 0x1f

    const/high16 v0, -0x8000

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: gcd is 2^31"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    if-lez p0, :cond_d

    neg-int v2, p0

    :goto_1
    if-lez p1, :cond_6

    neg-int p1, p1

    :cond_6
    const/4 v0, 0x0

    move v4, v0

    move v0, p1

    :goto_2
    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_7

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_7

    if-ge v4, v5, :cond_7

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 p1, v0, 0x2

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, p1

    goto :goto_2

    :cond_7
    if-ne v4, v5, :cond_8

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: gcd is 2^31"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    and-int/lit8 v1, v2, 0x1

    if-ne v1, v3, :cond_a

    move v1, v0

    :cond_9
    :goto_3
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_b

    div-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_a
    div-int/lit8 v1, v2, 0x2

    neg-int v1, v1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_3

    :cond_b
    if-lez v0, :cond_c

    neg-int v2, v0

    :goto_4
    sub-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_9

    neg-int v0, v2

    shl-int v1, v3, v4

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_c
    move v1, v0

    goto :goto_4

    :cond_d
    move v2, p0

    goto :goto_1
.end method

.method private static mulAndCheck(II)I
    .locals 4

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: mul"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method private static mulPosAndCheck(II)I
    .locals 4

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: mulPos"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method private static subAndCheck(II)I
    .locals 4

    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: add"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final abs()Lorg/apache/commons/lang3/math/Fraction;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-ltz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->negate()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    goto :goto_0
.end method

.method public final add(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/math/Fraction;->addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->compareTo(Lorg/apache/commons/lang3/math/Fraction;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lorg/apache/commons/lang3/math/Fraction;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    if-eq v1, v2, :cond_0

    :cond_2
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v1, v1

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v3, v3

    iget v5, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    cmp-long v0, v1, v3

    if-gez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final divideBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fraction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The fraction to divide by must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public final doubleValue()D
    .locals 4

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/apache/commons/lang3/math/Fraction;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final floatValue()F
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getDenominator()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    return v0
.end method

.method public final getNumerator()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    return v0
.end method

.method public final getProperNumerator()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public final getProperWhole()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    return v0
.end method

.method public final intValue()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final invert()Lorg/apache/commons/lang3/math/Fraction;
    .locals 3

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to invert zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate numerator"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-gez v0, :cond_2

    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    goto :goto_0
.end method

.method public final longValue()J
    .locals 4

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fraction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    :goto_0
    return-object v0

    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v1, v3, v1

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v0, v3, v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/apache/commons/lang3/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_0
.end method

.method public final negate()Lorg/apache/commons/lang3/math/Fraction;
    .locals 3

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: too large to negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0
.end method

.method public final pow(I)Lorg/apache/commons/lang3/math/Fraction;
    .locals 2

    move-object v0, p0

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE:Lorg/apache/commons/lang3/math/Fraction;

    goto :goto_1

    :cond_1
    if-gez p1, :cond_3

    const/high16 v1, -0x8000

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    neg-int p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    neg-int p1, p1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_4

    div-int/lit8 p1, p1, 0x2

    move-object v0, p0

    goto :goto_0

    :cond_4
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    goto :goto_1
.end method

.method public final reduce()Lorg/apache/commons/lang3/math/Fraction;
    .locals 3

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/math/Fraction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v1, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int v0, v2, v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    goto :goto_0
.end method

.method public final subtract(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/math/Fraction;->addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public final toProperString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2f

    const/16 v3, 0x20

    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_1

    const-string v0, "0"

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    return-object v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    if-ne v0, v1, :cond_2

    const-string v0, "1"

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    mul-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, "-1"

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-lez v0, :cond_4

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    neg-int v0, v0

    :goto_1
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    neg-int v1, v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperNumerator()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperWhole()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperWhole()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    return-object v0
.end method
