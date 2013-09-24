.class public Lorg/jsoup/parser/XmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    return-void
.end method

.method private a(Lorg/jsoup/nodes/Node;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method protected final a(Lorg/jsoup/parser/Token;)Z
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->a:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/Tag;->a(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    new-instance v2, Lorg/jsoup/nodes/Element;

    iget-object v3, p0, Lorg/jsoup/parser/XmlTreeBuilder;->f:Ljava/lang/String;

    iget-object v4, v0, Lorg/jsoup/parser/Token$StartTag;->d:Lorg/jsoup/nodes/Attributes;

    invoke-direct {v2, v1, v3, v4}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-direct {p0, v2}, Lorg/jsoup/parser/XmlTreeBuilder;->a(Lorg/jsoup/nodes/Node;)V

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tokeniser;->b()V

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->g()Lorg/jsoup/parser/Tag;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, v2}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v0

    :cond_3
    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-ne v0, v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    new-instance v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Comment;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/parser/XmlTreeBuilder;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v1, Lorg/jsoup/parser/Token$Comment;->c:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_6

    const-string v1, "!"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lorg/jsoup/nodes/XmlDeclaration;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->w()Ljava/lang/String;

    move-result-object v0

    const-string v4, "!"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v3, v0, v2}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    :cond_6
    invoke-direct {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->a(Lorg/jsoup/nodes/Node;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    new-instance v1, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Character;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->f:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/jsoup/parser/XmlTreeBuilder;->a(Lorg/jsoup/nodes/Node;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Lorg/jsoup/parser/Token$Doctype;

    move-result-object v0

    new-instance v1, Lorg/jsoup/nodes/DocumentType;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/jsoup/parser/XmlTreeBuilder;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/jsoup/parser/XmlTreeBuilder;->a(Lorg/jsoup/nodes/Node;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V

    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    iget-object v1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
