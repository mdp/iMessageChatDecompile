.class Lorg/jsoup/nodes/Node$OuterHtmlVisitor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Lorg/jsoup/nodes/Document$OutputSettings;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->a:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/Node;->a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    return-void
.end method

.method public final b(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/Node;->b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_0
    return-void
.end method
