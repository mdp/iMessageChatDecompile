.class Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# static fields
.field private static final CSV_DELIMITER:C = ','

.field private static final CSV_QUOTE:C = '\"'

.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x2ct 0x0t
        0x22t 0x0t
        0xdt 0x0t
        0xat 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 3

    const/16 v1, 0x22

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CsvUnescaper should never reach the [1] index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_SEARCH_CHARS:[C

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method
