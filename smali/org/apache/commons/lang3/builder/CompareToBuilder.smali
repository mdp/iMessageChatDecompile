.class public Lorg/apache/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget v2, p3, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1

    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_3
    new-instance v3, Lorg/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v2, p3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    goto :goto_0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(II)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([J[J)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_4
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([I[I)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_5
    instance-of v0, p1, [S

    if-eqz v0, :cond_6

    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([S[S)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_6
    instance-of v0, p1, [C

    if-eqz v0, :cond_7

    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([C[C)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([B[B)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([D[D)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_9
    instance-of v0, p1, [F

    if-eqz v0, :cond_a

    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([F[F)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_a
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b

    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_b
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    :cond_c
    if-nez p3, :cond_d

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_0

    :cond_d
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append([B[B)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(BB)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([C[C)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(CC)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([D[D)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 5

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(DD)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([F[F)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(FF)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([I[I)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(II)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([J[J)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 5

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([S[S)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(SS)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Z[Z)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public appendSuper(I)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public build()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
