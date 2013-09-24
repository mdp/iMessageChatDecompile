.class final Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    return-void
.end method


# virtual methods
.method public final isMatch([CIII)I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    array-length v2, v0

    add-int v0, p2, v2

    if-le v0, p4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    aget-char v3, v3, v0

    aget-char v4, p1, p2

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method
