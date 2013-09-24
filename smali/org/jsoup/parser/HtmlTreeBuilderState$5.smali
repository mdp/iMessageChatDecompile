.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$5;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "noscript"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "noscript"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->h()Lorg/jsoup/nodes/Element;

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->d:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "basefont"

    aput-object v4, v3, v0

    const-string v4, "bgsound"

    aput-object v4, v3, v1

    const-string v4, "link"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v5, "meta"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "noframes"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "style"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->d:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "head"

    aput-object v4, v3, v0

    const-string v4, "noscript"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    goto/16 :goto_1
.end method
