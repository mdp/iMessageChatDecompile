.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$12;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 2

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "colgroup"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/TreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/TreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Lorg/jsoup/parser/Token$Character;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Character;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    iget-object v2, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v3, "col"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "colgroup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->h()Lorg/jsoup/nodes/Element;

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_5
    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
