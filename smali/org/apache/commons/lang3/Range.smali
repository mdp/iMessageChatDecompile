.class public final Lorg/apache/commons/lang3/Range;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final comparator:Ljava/util/Comparator;

.field private transient hashCode:I

.field private final maximum:Ljava/lang/Object;

.field private final minimum:Ljava/lang/Object;

.field private transient toString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Elements in a range must not be null: element1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", element2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    sget-object p3, Lorg/apache/commons/lang3/Range$ComparableComparator;->INSTANCE:Lorg/apache/commons/lang3/Range$ComparableComparator;

    :cond_2
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3

    iput-object p1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    :goto_0
    iput-object p3, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    return-void

    :cond_3
    iput-object p2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    return-object v0
.end method

.method public static between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/Range;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static is(Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p0, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    return-object v0
.end method

.method public static is(Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;
    .locals 1

    invoke-static {p0, p0, p1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final containsRange(Lorg/apache/commons/lang3/Range;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final elementCompareTo(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Element is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isAfter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isBefore(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

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
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/apache/commons/lang3/Range;

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    iget-object v3, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    iget-object v3, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public final getMaximum()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMinimum()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/lang3/Range;->hashCode:I

    iget v1, p0, Lorg/apache/commons/lang3/Range;->hashCode:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/Range;->hashCode:I

    :cond_0
    return v0
.end method

.method public final intersectionWith(Lorg/apache/commons/lang3/Range;)Lorg/apache/commons/lang3/Range;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->isOverlappedBy(Lorg/apache/commons/lang3/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot calculate intersection with non-overlapping range %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Range;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    iget-object v2, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Range;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    iget-object v3, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/Range;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    goto :goto_2
.end method

.method public final isAfter(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isAfterRange(Lorg/apache/commons/lang3/Range;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/Range;->isAfter(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isBefore(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isBeforeRange(Lorg/apache/commons/lang3/Range;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/Range;->isBefore(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isEndedBy(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isNaturalOrdering()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/commons/lang3/Range$ComparableComparator;->INSTANCE:Lorg/apache/commons/lang3/Range$ComparableComparator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOverlappedBy(Lorg/apache/commons/lang3/Range;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isStartedBy(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/Range;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/Range;->toString:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->minimum:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->maximum:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/commons/lang3/Range;->comparator:Ljava/util/Comparator;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
