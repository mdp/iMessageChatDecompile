.class Lorg/jsoup/select/StructuralEvaluator$Parent;
.super Lorg/jsoup/select/StructuralEvaluator;


# virtual methods
.method public final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->k()Lorg/jsoup/nodes/Element;

    move-result-object v1

    :goto_1
    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->a:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v2, p1, v1}, Lorg/jsoup/select/Evaluator;->a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->k()Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ":parent%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->a:Lorg/jsoup/select/Evaluator;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
