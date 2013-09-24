.class public Lorg/jsoup/select/Collector;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 3

    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    new-instance v2, Lorg/jsoup/select/Collector$Accumulator;

    invoke-direct {v2, p1, v0, p0}, Lorg/jsoup/select/Collector$Accumulator;-><init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/select/Evaluator;)V

    invoke-direct {v1, v2}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, p1}, Lorg/jsoup/select/NodeTraversor;->a(Lorg/jsoup/nodes/Node;)V

    return-object v0
.end method
