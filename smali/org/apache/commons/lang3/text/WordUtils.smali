.class public Lorg/apache/commons/lang3/text/WordUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    array-length v0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v3

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_5

    aget-char v5, v4, v0

    invoke-static {v5, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_3

    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    aput-char v2, v4, v0

    move v2, v1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    array-length v0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [C

    move v4, v2

    move v0, v1

    move v3, v2

    :goto_1
    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    aput-char v7, v6, v3

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method private static isDelimiter(C[C)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-char v3, p1, v1

    if-ne p0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget-char v4, v3, v0

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    goto :goto_2

    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v3, v0

    goto :goto_2

    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    array-length v0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v3

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_5

    aget-char v5, v4, v0

    invoke-static {v5, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_3

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v4, v0

    move v2, v1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    :cond_1
    if-gtz p1, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    sub-int v3, v1, v0

    if-le v3, p1, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int v3, p1, v0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    if-lt v3, v0, :cond_4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    add-int v3, p1, v0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, p1

    goto :goto_1

    :cond_5
    add-int v3, p1, v0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_6

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
