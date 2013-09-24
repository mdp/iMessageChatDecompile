.class abstract Lorg/jsoup/parser/Token;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/parser/Token;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->a:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Lorg/jsoup/parser/Token$Doctype;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$Doctype;

    return-object p0
.end method

.method final d()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->b:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Lorg/jsoup/parser/Token$StartTag;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$StartTag;

    return-object p0
.end method

.method final f()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->c:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()Lorg/jsoup/parser/Token$EndTag;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$EndTag;

    return-object p0
.end method

.method final h()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->d:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Lorg/jsoup/parser/Token$Comment;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$Comment;

    return-object p0
.end method

.method final j()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->e:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Lorg/jsoup/parser/Token$Character;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$Character;

    return-object p0
.end method

.method final l()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->f:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
