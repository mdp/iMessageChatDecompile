.class final Lorg/jsoup/safety/Cleaner$CleaningVisitor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field final synthetic a:Lorg/jsoup/safety/Cleaner;

.field private b:I

.field private final c:Lorg/jsoup/nodes/Element;

.field private d:Lorg/jsoup/nodes/Element;


# virtual methods
.method public final a(Lorg/jsoup/nodes/Node;I)V
    .locals 3

    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->a:Lorg/jsoup/safety/Cleaner;

    invoke-static {v1}, Lorg/jsoup/safety/Cleaner;->a(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/safety/Whitelist;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->a:Lorg/jsoup/safety/Cleaner;

    invoke-static {v1, v0}, Lorg/jsoup/safety/Cleaner;->a(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;

    move-result-object v0

    iget-object v1, v0, Lorg/jsoup/safety/Cleaner$ElementMeta;->a:Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->d:Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget v2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->b:I

    iget v0, v0, Lorg/jsoup/safety/Cleaner$ElementMeta;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->b:I

    iput-object v1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->d:Lorg/jsoup/nodes/Element;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->c:Lorg/jsoup/nodes/Element;

    if-eq p1, v0, :cond_0

    iget v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->b:I

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    new-instance v1, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lorg/jsoup/nodes/TextNode;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->d:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->b:I

    goto :goto_0
.end method

.method public final b(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->a:Lorg/jsoup/safety/Cleaner;

    invoke-static {v0}, Lorg/jsoup/safety/Cleaner;->a(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->d:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->k()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->d:Lorg/jsoup/nodes/Element;

    :cond_0
    return-void
.end method
