.class final Lorg/jsoup/select/CombiningEvaluator$Or;
.super Lorg/jsoup/select/CombiningEvaluator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/CombiningEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/select/Evaluator;->a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ":or%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->a:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
