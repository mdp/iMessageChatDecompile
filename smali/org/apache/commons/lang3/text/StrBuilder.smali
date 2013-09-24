.class public Lorg/apache/commons/lang3/text/StrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0x20

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0
.end method

.method private deleteImpl(III)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return-void
.end method

.method private replaceImpl(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 9

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    if-nez p2, :cond_2

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v1, p3

    move v6, p5

    move v7, p4

    :goto_1
    if-ge v1, v7, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {p1, v8, v1, p3, v7}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v3

    if-lez v3, :cond_4

    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    sub-int v0, v7, v3

    add-int v2, v0, v5

    add-int v0, v1, v5

    add-int/lit8 v1, v0, -0x1

    if-lez v6, :cond_3

    add-int/lit8 v0, v6, -0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v6, v0

    move v7, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v6

    move v2, v7

    goto :goto_2
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 5

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    if-eq p5, p3, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v3, p1, p5

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_0
    if-lez p5, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, v0, p5, v1, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 5

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v2, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->getChars(II[CI)V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append(Z)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    const/16 v3, 0x65

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x72

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x61

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x73

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public append([CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid startIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public appendAll(Ljava/lang/Iterable;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendAll([Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 7

    const/4 v2, 0x0

    if-lez p2, :cond_1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p2, :cond_3

    sub-int v1, v3, p2

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sub-int v4, p2, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_4

    iget-object v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v6, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v6, v1

    aput-char p3, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    const/4 v1, 0x0

    if-lez p2, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p2, :cond_4

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sub-int v3, p2, v2

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v4, v2

    add-int/2addr v4, v0

    aput-char p3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendNull()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public appendPadding(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    if-lez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_0
    return-object p0

    :cond_1
    move-object p2, p1

    goto :goto_0
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(D)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(F)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(I)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(J)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Z)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return-object p0
.end method

.method public contains(C)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_0

    aget-char v3, v2, v0

    if-ne v3, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/apache/commons/lang3/text/StrMatcher;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v0

    sub-int v1, v0, p1

    if-lez v1, :cond_0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, p1, :cond_0

    :cond_1
    sub-int v2, v1, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    sub-int v0, v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteCharAt(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    return-object p0
.end method

.method public deleteFirst(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int v2, v1, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public deleteFirst(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v4, v2, :cond_0

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, v4

    move v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    iget-object v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/commons/lang3/text/StrBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->equals(Lorg/apache/commons/lang3/text/StrBuilder;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget v3, p1, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v4, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    aget-char v5, v3, v2

    aget-char v6, v4, v2

    if-eq v5, v6, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget v3, p1, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v4, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    aget-char v5, v3, v2

    aget-char v6, v4, v2

    if-eq v5, v6, :cond_3

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v5, v6, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getChars(II[CI)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    if-le p1, p2, :cond_3

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getChars([C)[C
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p1, v0, [C

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-char v3, v2, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 3

    const/4 v0, -0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_2

    move p2, v0

    :cond_1
    :goto_0
    return p2

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    :goto_1
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge p2, v2, :cond_3

    aget-char v2, v1, p2

    if-eq v2, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 9

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-gez p2, :cond_2

    move v0, v3

    :goto_0
    if-eqz p1, :cond_0

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt v0, v2, :cond_3

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v2, 0x1

    if-ne v4, v2, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(CI)I

    move-result v0

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_1

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le v4, v2, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, v4

    add-int/lit8 v6, v2, 0x1

    :goto_2
    if-ge v0, v6, :cond_7

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int v8, v0, v2

    aget-char v8, v5, v8

    if-ne v7, v8, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public indexOf(Lorg/apache/commons/lang3/text/StrMatcher;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I
    .locals 6

    const/4 v1, -0x1

    if-gez p2, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt v2, v0, :cond_3

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, p2

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_4

    invoke-virtual {p1, v4, v0, v2, v3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v5

    if-gtz v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public insert(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    :cond_0
    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v5, p1, v0

    iget v6, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v6, p1

    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public insert(IZ)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 5

    const/16 v4, 0x65

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x4

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x74

    aput-char v2, v0, p1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x72

    aput-char v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v2

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char v4, v0, v1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x5

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x66

    aput-char v2, v0, p1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x61

    aput-char v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v0, v2

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x73

    aput-char v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char v4, v0, v2

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p2

    if-lez v0, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public insert(I[CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ltz p3, :cond_2

    array-length v0, p2

    if-le p3, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p4, :cond_4

    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lez p4, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v2, p1, p4

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(C)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_1

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_3

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, p2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 8

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-eqz p1, :cond_0

    if-gez v0, :cond_3

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v4, v2, :cond_6

    const/4 v2, 0x1

    if-ne v4, v2, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ltz v0, :cond_7

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v7, v0, v2

    aget-char v6, v6, v7

    if-ne v5, v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_1

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I
    .locals 5

    const/4 v1, -0x1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-eqz p1, :cond_0

    if-gez v0, :cond_3

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, p2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v3, v0, 0x1

    :goto_2
    if-ltz v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v0, v4, v3}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-gtz p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, v3, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-lez p2, :cond_1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_2

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public minimizeCapacity()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v2

    if-nez p3, :cond_0

    const/4 v5, 0x0

    :goto_0
    sub-int v3, v2, p1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    return-object p0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v3, v0

    :goto_0
    if-lez v3, :cond_2

    if-nez p2, :cond_1

    move v5, v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :goto_2
    if-ltz v1, :cond_2

    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    add-int v0, v1, v5

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-eq p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move v3, v5

    :goto_0
    if-lez v3, :cond_0

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    if-nez p2, :cond_2

    :goto_1
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1
.end method

.method public replaceFirst(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v4, v3, v1

    aget-char v5, v3, v0

    aput-char v5, v3, v1

    aput-char v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4

    if-gtz p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public setCharAt(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    return-object p0
.end method

.method public setLength(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_2

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v3, v2, :cond_0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public toCharArray()[C
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    new-array v0, v0, [C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toCharArray(II)[C
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v0

    sub-int v1, v0, p1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [C

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    const/16 v5, 0x20

    const/4 v2, 0x0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_2

    aget-char v4, v3, v1

    if-gt v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v3, v4

    if-gt v4, v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_4

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang3/text/StrBuilder;->delete(II)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_4
    if-lez v1, :cond_0

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->delete(II)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0
.end method

.method protected validateIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    return-void
.end method

.method protected validateRange(II)I
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p2, v0, :cond_1

    iget p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return p2
.end method
