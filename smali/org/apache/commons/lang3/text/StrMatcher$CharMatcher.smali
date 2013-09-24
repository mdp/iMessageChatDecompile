.class final Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;->ch:C

    return-void
.end method


# virtual methods
.method public final isMatch([CIII)I
    .locals 2

    iget-char v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;->ch:C

    aget-char v1, p1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
