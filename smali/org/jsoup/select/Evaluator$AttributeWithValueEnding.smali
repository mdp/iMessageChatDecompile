.class public final Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;
.super Lorg/jsoup/select/Evaluator$AttributeKeyPair;


# virtual methods
.method public final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[%s$=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
