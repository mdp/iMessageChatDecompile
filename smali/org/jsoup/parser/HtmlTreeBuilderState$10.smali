.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$10;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    iget-object v3, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Token$Character;

    invoke-static {v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "table"

    aput-object v6, v5, v1

    const-string v6, "tbody"

    aput-object v6, v5, v2

    const/4 v6, 0x2

    const-string v7, "tfoot"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "thead"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "tr"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Z)V

    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$10;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Z)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Character;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    :cond_1
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$10;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->p()V

    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->c()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
