.class public final Lorg/jsoup/select/Evaluator$AttributeStarting;
.super Lorg/jsoup/select/Evaluator;


# instance fields
.field private a:Ljava/lang/String;


# virtual methods
.method public final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->v()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/jsoup/select/Evaluator$AttributeStarting;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[^%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/Evaluator$AttributeStarting;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
