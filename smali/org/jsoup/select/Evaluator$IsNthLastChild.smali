.class public final Lorg/jsoup/select/Evaluator$IsNthLastChild;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;


# virtual methods
.method protected final a(Lorg/jsoup/nodes/Element;)I
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->k()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->m()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-last-child"

    return-object v0
.end method
