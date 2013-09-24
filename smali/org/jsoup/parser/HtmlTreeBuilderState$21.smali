.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$21;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Lorg/jsoup/parser/Token$Comment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Comment;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$21;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$21;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0
.end method
