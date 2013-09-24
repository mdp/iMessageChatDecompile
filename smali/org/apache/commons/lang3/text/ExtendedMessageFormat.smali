.class public Lorg/apache/commons/lang3/text/ExtendedMessageFormat;
.super Ljava/text/MessageFormat;


# static fields
.field private static final DUMMY_PATTERN:Ljava/lang/String; = ""

.field private static final END_FE:C = '}'

.field private static final ESCAPED_QUOTE:Ljava/lang/String; = "\'\'"

.field private static final HASH_SEED:I = 0x1f

.field private static final QUOTE:C = '\''

.field private static final START_FE:C = '{'

.field private static final START_FMT:C = ','

.field private static final serialVersionUID:J = -0x20c7ae6efb1e381fL


# instance fields
.field private final registry:Ljava/util/Map;

.field private toPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->setLocale(Ljava/util/Locale;)V

    iput-object p3, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    return-void
.end method

.method private appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 8

    const/4 v3, 0x0

    const/16 v7, 0x27

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    if-eqz p4, :cond_1

    aget-char v0, v4, v2

    if-ne v0, v7, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    if-nez p3, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    if-eqz p4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'\'"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    aget-char v5, v4, v5

    packed-switch v5, :pswitch_data_0

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    if-nez p3, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p3, v4, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unterminated quoted string at position "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method private containsElements(Ljava/util/Collection;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/Format;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/FormatFactory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/commons/lang3/text/FormatFactory;->getFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method private insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v1}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v0, -0x1

    move v3, v0

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_1

    :sswitch_0
    invoke-direct {p0, p1, v5, v4, v1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v5}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;
    .locals 1

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object p1
.end method

.method private parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unterminated format element at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_2
        0x7b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 9

    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_0

    if-eq v0, v8, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    :cond_0
    move v3, v0

    if-eq v3, v7, :cond_1

    if-ne v3, v8, :cond_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format argument index at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unterminated format element at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_0
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CI)I

    move-result v1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    if-lez v1, :cond_1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final applyPattern(Ljava/lang/String;)V
    .locals 14

    const/16 v13, 0x2c

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v9, Ljava/text/ParsePosition;

    invoke-direct {v9, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    move v0, v1

    :goto_1
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    aget-char v3, v10, v3

    sparse-switch v3, :sswitch_data_0

    :goto_2
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    aget-char v3, v10, v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_1

    :sswitch_0
    invoke-direct {p0, p1, v9, v8, v4}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p1, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    invoke-direct {p0, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v0

    const/16 v3, 0x7b

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    aget-char v0, v10, v0

    if-ne v0, v13, :cond_a

    invoke-direct {p0, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getFormat(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_3

    move-object v0, v2

    :cond_3
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_4

    move v0, v4

    :goto_4
    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->isTrue(Z)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    move v0, v4

    :goto_5
    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->isTrue(Z)V

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    aget-char v0, v10, v0

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unreadable format element at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    if-eqz v0, :cond_7

    aput-object v0, v2, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    invoke-super {p0, v2}, Ljava/text/MessageFormat;->setFormats([Ljava/text/Format;)V

    goto/16 :goto_0

    :cond_9
    move v0, v5

    goto/16 :goto_2

    :cond_a
    move-object v0, v2

    move-object v3, v2

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    check-cast p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;

    iget-object v2, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    iget-object v3, p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Ljava/text/MessageFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-object v0
.end method
