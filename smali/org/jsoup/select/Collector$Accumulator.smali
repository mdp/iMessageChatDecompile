.class Lorg/jsoup/select/Collector$Accumulator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field private final a:Lorg/jsoup/nodes/Element;

.field private final b:Lorg/jsoup/select/Elements;

.field private final c:Lorg/jsoup/select/Evaluator;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/select/Evaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/select/Collector$Accumulator;->a:Lorg/jsoup/nodes/Element;

    iput-object p2, p0, Lorg/jsoup/select/Collector$Accumulator;->b:Lorg/jsoup/select/Elements;

    iput-object p3, p0, Lorg/jsoup/select/Collector$Accumulator;->c:Lorg/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/jsoup/select/Collector$Accumulator;->c:Lorg/jsoup/select/Evaluator;

    iget-object v1, p0, Lorg/jsoup/select/Collector$Accumulator;->a:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/select/Evaluator;->a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/Collector$Accumulator;->b:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/Elements;->a(Lorg/jsoup/nodes/Element;)Z

    :cond_0
    return-void
.end method

.method public final b(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    return-void
.end method
