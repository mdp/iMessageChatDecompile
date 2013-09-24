.class Lorg/jsoup/nodes/Node$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/jsoup/nodes/Node;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Node$1;->b:Lorg/jsoup/nodes/Node;

    iput-object p2, p0, Lorg/jsoup/nodes/Node$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/Node;I)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node$1;->a:Ljava/lang/String;

    iput-object v0, p1, Lorg/jsoup/nodes/Node;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    return-void
.end method
