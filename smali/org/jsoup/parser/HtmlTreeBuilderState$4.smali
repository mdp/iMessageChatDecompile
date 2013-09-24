.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$4;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 2

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    const-string v1, "head"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/TreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/TreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 8

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Lorg/jsoup/parser/Token$Character;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Character;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    iget-object v3, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "base"

    aput-object v5, v4, v1

    const-string v5, "basefont"

    aput-object v5, v4, v0

    const-string v5, "bgsound"

    aput-object v5, v4, v7

    const-string v5, "command"

    aput-object v5, v4, v6

    const/4 v5, 0x4

    const-string v6, "link"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "base"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "href"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/nodes/Element;)V

    goto :goto_0

    :cond_3
    const-string v4, "meta"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_4
    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    iget-object v1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b()V

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->h:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_5
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "noframes"

    aput-object v5, v4, v1

    const-string v5, "style"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v2, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "noscript"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->e:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "script"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    iget-object v1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->f:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b()V

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->h:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "head"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->h()Lorg/jsoup/nodes/Element;

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->f:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_a
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "body"

    aput-object v4, v3, v1

    const-string v4, "html"

    aput-object v4, v3, v0

    const-string v0, "br"

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
