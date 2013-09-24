.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$1;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 7

    const/4 v0, 0x1

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Lorg/jsoup/parser/Token$Doctype;

    move-result-object v1

    new-instance v2, Lorg/jsoup/nodes/DocumentType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Doctype;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Doctype;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Doctype;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->e()Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Doctype;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->e()Lorg/jsoup/nodes/Document;

    move-result-object v1

    sget-object v2, Lorg/jsoup/nodes/Document$QuirksMode;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    :cond_2
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$1;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$1;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0
.end method
