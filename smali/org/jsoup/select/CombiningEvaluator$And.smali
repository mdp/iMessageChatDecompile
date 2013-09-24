.class final Lorg/jsoup/select/CombiningEvaluator$And;
.super Lorg/jsoup/select/CombiningEvaluator;


# virtual methods
.method public final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$And;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$And;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/select/Evaluator;->a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$And;->a:Ljava/util/List;

    const-string v1, " "

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
