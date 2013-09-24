.class Lorg/jsoup/nodes/Element$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lorg/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Element$1;->b:Lorg/jsoup/nodes/Element;

    iput-object p2, p0, Lorg/jsoup/nodes/Element$1;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jsoup/nodes/TextNode;

    iget-object v0, p0, Lorg/jsoup/nodes/Element$1;->a:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lorg/jsoup/nodes/Element;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/jsoup/nodes/Element$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Element;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/jsoup/nodes/Element$1;->a:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/nodes/TextNode;->b(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Element$1;->a:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    return-void
.end method
