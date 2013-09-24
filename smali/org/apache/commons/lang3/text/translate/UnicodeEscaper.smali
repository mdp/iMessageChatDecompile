.class public Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    iput p2, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    return-void
.end method

.method public static above(I)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    if-le p1, v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    if-le p1, v1, :cond_0

    :cond_2
    const v0, 0xffff

    if-le p1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0xfff

    if-le p1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xff

    if-le p1, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0xf

    if-le p1, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method
