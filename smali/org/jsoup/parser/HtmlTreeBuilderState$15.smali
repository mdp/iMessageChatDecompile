.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$15;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    const-string v0, "td"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "td"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "th"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    goto :goto_0
.end method

.method private static b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p1, p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "td"

    aput-object v4, v3, v0

    const-string v4, "th"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->r()V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_1
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->t()V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "body"

    aput-object v4, v3, v0

    const-string v4, "caption"

    aput-object v4, v3, v1

    const-string v4, "col"

    aput-object v4, v3, v5

    const-string v4, "colgroup"

    aput-object v4, v3, v6

    const-string v4, "html"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "table"

    aput-object v4, v3, v0

    const-string v4, "tbody"

    aput-object v4, v3, v1

    const-string v1, "tfoot"

    aput-object v1, v3, v5

    const-string v1, "thead"

    aput-object v1, v3, v6

    const-string v1, "tr"

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->a(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "caption"

    aput-object v4, v3, v0

    const-string v4, "col"

    aput-object v4, v3, v1

    const-string v1, "colgroup"

    aput-object v1, v3, v5

    const-string v1, "tbody"

    aput-object v1, v3, v6

    const-string v1, "td"

    aput-object v1, v3, v7

    const/4 v1, 0x5

    const-string v4, "tfoot"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string v4, "th"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string v4, "thead"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string v4, "tr"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "td"

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "th"

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->a(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto/16 :goto_0

    :cond_8
    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    goto/16 :goto_0
.end method
