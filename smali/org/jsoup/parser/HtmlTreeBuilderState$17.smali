.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$17;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "caption"

    aput-object v3, v2, v0

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const-string v3, "tfoot"

    aput-object v3, v2, v7

    const-string v3, "thead"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "td"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "th"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "select"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "caption"

    aput-object v3, v2, v0

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const-string v3, "tfoot"

    aput-object v3, v2, v7

    const-string v3, "thead"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "td"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "th"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "select"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$17;->p:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_0
.end method
