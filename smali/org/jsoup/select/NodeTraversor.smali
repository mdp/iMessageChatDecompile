.class public Lorg/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/jsoup/select/NodeVisitor;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/NodeVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/select/NodeTraversor;->a:Lorg/jsoup/select/NodeVisitor;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/Node;)V
    .locals 4

    const/4 v2, 0x0

    move v0, v2

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/jsoup/select/NodeTraversor;->a:Lorg/jsoup/select/NodeVisitor;

    invoke-interface {v3, v1, v0}, Lorg/jsoup/select/NodeVisitor;->a(Lorg/jsoup/nodes/Node;I)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->y()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->a(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->A()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-nez v3, :cond_1

    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/jsoup/select/NodeTraversor;->a:Lorg/jsoup/select/NodeVisitor;

    invoke-interface {v3, v1, v0}, Lorg/jsoup/select/NodeVisitor;->b(Lorg/jsoup/nodes/Node;I)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->u()Lorg/jsoup/nodes/Node;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/jsoup/select/NodeTraversor;->a:Lorg/jsoup/select/NodeVisitor;

    invoke-interface {v3, v1, v0}, Lorg/jsoup/select/NodeVisitor;->b(Lorg/jsoup/nodes/Node;I)V

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->A()Lorg/jsoup/nodes/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-void
.end method
