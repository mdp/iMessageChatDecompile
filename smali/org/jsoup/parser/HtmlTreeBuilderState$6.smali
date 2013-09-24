.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$6;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 2

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    const-string v1, "body"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Z)V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Character;)V

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Lorg/jsoup/parser/Token$Comment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const-string v4, "body"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Z)V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_4
    const-string v4, "frameset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->s:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "base"

    aput-object v4, v2, v0

    const-string v4, "basefont"

    aput-object v4, v2, v1

    const-string v4, "bgsound"

    aput-object v4, v2, v5

    const/4 v4, 0x3

    const-string v5, "link"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "meta"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "noframes"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "script"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "style"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "title"

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->n()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/nodes/Element;)V

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->d:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->d(Lorg/jsoup/nodes/Element;)Z

    goto/16 :goto_0

    :cond_6
    const-string v2, "head"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "body"

    aput-object v4, v3, v0

    const-string v4, "html"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    goto/16 :goto_0
.end method
