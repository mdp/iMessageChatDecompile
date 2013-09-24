.class public Lorg/apache/commons/lang3/text/StrTokenizer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/ListIterator;


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->commaMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    new-instance v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->tabMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([CC)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([CLorg/apache/commons/lang3/text/StrMatcher;)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkTokenized()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method private static getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method private isQuote([CIIII)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_2

    add-int v2, p2, v1

    if-ge v2, p3, :cond_0

    add-int v2, p2, v1

    aget-char v2, p1, v2

    add-int v3, p4, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private readNextToken([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I
    .locals 13

    move v7, p2

    :goto_0
    move/from16 v0, p3

    if-ge v7, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-gtz v2, :cond_0

    add-int/2addr v7, v1

    goto :goto_0

    :cond_0
    move/from16 v0, p3

    if-lt v7, v0, :cond_1

    const-string v1, ""

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_2

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int/2addr v1, v7

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v8

    if-lez v8, :cond_3

    add-int v3, v7, v8

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/lang3/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v12}, Lorg/apache/commons/lang3/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result v1

    goto :goto_1
.end method

.method private readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I
    .locals 13

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->clear()Lorg/apache/commons/lang3/text/StrBuilder;

    if-lez p7, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    move v11, v3

    move v12, v2

    move v4, p2

    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_8

    if-eqz v12, :cond_3

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int v7, v4, p7

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p4

    move/from16 v1, p7

    invoke-virtual {v0, p1, v4, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    mul-int/lit8 v2, p7, 0x2

    add-int/2addr v4, v2

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    move v11, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    add-int v4, v4, p7

    move v12, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v4, 0x1

    aget-char v2, p1, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    move v11, v2

    move v4, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v3}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int/2addr v2, v4

    :goto_2
    return v2

    :cond_4
    if-lez p7, :cond_5

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    add-int v4, v4, p7

    move v12, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-lez v2, :cond_6

    add-int/2addr v4, v2

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-lez v2, :cond_7

    move-object/from16 v0, p4

    invoke-virtual {v0, p1, v4, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    add-int/2addr v4, v2

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v3, v4, 0x1

    aget-char v2, p1, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    move v11, v2

    move v4, v3

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v11}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->cloneReset()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method cloneReset()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    iget-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 5

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyTokenAsNull()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    goto :goto_0
.end method

.method public reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    :goto_0
    return-object p0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    goto :goto_0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "StrTokenizer[not tokenized yet]"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StrTokenizer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 6

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :cond_1
    return-object v5

    :cond_2
    new-instance v4, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v4}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    :cond_3
    :goto_0
    if-ltz v2, :cond_1

    if-ge v2, p3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrTokenizer;->readNextToken([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I

    move-result v2

    if-lt v2, p3, :cond_3

    const-string v0, ""

    invoke-direct {p0, v5, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
