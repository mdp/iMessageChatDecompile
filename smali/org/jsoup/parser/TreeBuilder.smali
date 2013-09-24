.class abstract Lorg/jsoup/parser/TreeBuilder;
.super Ljava/lang/Object;


# instance fields
.field b:Lorg/jsoup/parser/CharacterReader;

.field c:Lorg/jsoup/parser/Tokeniser;

.field protected d:Lorg/jsoup/nodes/Document;

.field protected e:Lorg/jsoup/helper/DescendableLinkedList;

.field protected f:Ljava/lang/String;

.field protected g:Lorg/jsoup/parser/Token;

.field protected h:Lorg/jsoup/parser/ParseErrorList;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tokeniser;->a()Lorg/jsoup/parser/Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->a(Lorg/jsoup/parser/Token;)Z

    iget-object v0, v0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->f:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method protected abstract a(Lorg/jsoup/parser/Token;)Z
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    iput-object p3, p0, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseErrorList;

    new-instance v0, Lorg/jsoup/parser/Tokeniser;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, v1, p3}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    new-instance v0, Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {v0}, Lorg/jsoup/helper/DescendableLinkedList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    iput-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->f:Ljava/lang/String;

    return-void
.end method

.method protected final v()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method
