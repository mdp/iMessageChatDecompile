.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$8;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Character;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->h()Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->c()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->h()Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->c()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0
.end method
