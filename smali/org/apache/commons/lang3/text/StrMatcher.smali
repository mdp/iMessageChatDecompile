.class public abstract Lorg/apache/commons/lang3/text/StrMatcher;
.super Ljava/lang/Object;


# static fields
.field private static final COMMA_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final SPACE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final SPLIT_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final TAB_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final TRIM_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->COMMA_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->TAB_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SPACE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SPLIT_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->TRIM_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    goto :goto_0
.end method

.method public static varargs charSetMatcher([C)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    goto :goto_0
.end method

.method public static commaMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->COMMA_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SPACE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SPLIT_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tabMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->TAB_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->TRIM_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method

.method public abstract isMatch([CIII)I
.end method
