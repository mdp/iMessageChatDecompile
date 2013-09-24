.class public Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# instance fields
.field private final options:Ljava/util/EnumSet;


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    goto :goto_0
.end method


# virtual methods
.method public isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x26

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v5, -0x2

    if-ge p2, v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, p2, 0x2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_0

    const/16 v4, 0x58

    if-ne v3, v4, :cond_d

    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v3, v0

    move v0, v2

    :goto_1
    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_6

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x30

    if-lt v4, v7, :cond_3

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x39

    if-le v4, v7, :cond_5

    :cond_3
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x61

    if-lt v4, v7, :cond_4

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x66

    if-le v4, v7, :cond_5

    :cond_4
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x41

    if-lt v4, v7, :cond_6

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x46

    if-gt v4, v7, :cond_6

    :cond_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_6
    if-eq v6, v5, :cond_7

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_7

    move v5, v2

    :goto_3
    if-nez v5, :cond_8

    sget-object v4, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Semi-colon required at end of numeric entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v5, v1

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    :try_start_0
    invoke-interface {p1, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_4
    const v7, 0xffff

    if-le v4, v7, :cond_a

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    aget-char v7, v4, v1

    invoke-virtual {p3, v7}, Ljava/io/Writer;->write(I)V

    aget-char v4, v4, v2

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(I)V

    :goto_5
    add-int/lit8 v4, v6, 0x2

    sub-int v3, v4, v3

    if-eqz v0, :cond_b

    move v0, v2

    :goto_6
    add-int/2addr v0, v3

    if-eqz v5, :cond_c

    :goto_7
    add-int v1, v0, v2

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-interface {p1, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_4

    :cond_a
    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_c
    move v2, v1

    goto :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_d
    move v3, v0

    move v0, v1

    goto/16 :goto_1
.end method
