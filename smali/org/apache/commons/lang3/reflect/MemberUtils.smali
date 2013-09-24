.class abstract Lorg/apache/commons/lang3/reflect/MemberUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .locals 3

    invoke-static {p2, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    invoke-static {p2, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3e80

    add-float/2addr v0, v1

    :cond_2
    if-nez p0, :cond_0

    const/high16 v1, 0x3fc0

    add-float/2addr v0, v1

    goto :goto_0

    :cond_3
    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 5

    const v1, 0x3dcccccd

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    move v0, v1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    move-object v2, p0

    :goto_0
    if-eq v2, p1, :cond_2

    sget-object v4, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    sget-object v4, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    aget-object v4, v4, v3

    if-ne v2, v4, :cond_1

    add-float/2addr v0, v1

    sget-object v4, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    sget-object v2, Lorg/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    add-int/lit8 v4, v3, 0x1

    aget-object v2, v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPackageAccess(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
