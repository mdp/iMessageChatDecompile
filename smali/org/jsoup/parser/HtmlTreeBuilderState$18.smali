.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$18;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$18;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Lorg/jsoup/parser/Token$Comment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Comment;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$18;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$18;->u:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$18;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0
.end method
