.class final Lorg/apache/commons/lang3/CharRange;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method private constructor <init>(CCZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-le p1, p2, :cond_0

    :goto_0
    iput-char p2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iput-char p1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iput-boolean p3, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return-void

    :cond_0
    move v0, p2

    move p2, p1

    move p1, v0

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/apache/commons/lang3/CharRange;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/lang3/CharRange;)C
    .locals 1

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/lang3/CharRange;)C
    .locals 1

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    return v0
.end method

.method public static is(C)Lorg/apache/commons/lang3/CharRange;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isIn(CC)Lorg/apache/commons/lang3/CharRange;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNot(C)Lorg/apache/commons/lang3/CharRange;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNotIn(CC)Lorg/apache/commons/lang3/CharRange;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method


# virtual methods
.method public final contains(C)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt p1, v0, :cond_0

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt p1, v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final contains(Lorg/apache/commons/lang3/CharRange;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Range must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_3

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt v2, v3, :cond_2

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-char v2, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt v2, v3, :cond_1

    iget-char v2, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v2, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_6

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-nez v2, :cond_5

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    const v3, 0xffff

    if-eq v2, v3, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-gt v2, v3, :cond_7

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-ge v2, v3, :cond_1

    :cond_7
    move v0, v1

    goto :goto_0
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
    instance-of v2, p1, Lorg/apache/commons/lang3/CharRange;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/apache/commons/lang3/CharRange;

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    iget-boolean v3, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getEnd()C
    .locals 1

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    return v0
.end method

.method public final getStart()C
    .locals 1

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNegated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang3/CharRange;Lorg/apache/commons/lang3/CharRange$1;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    return-object v0
.end method
