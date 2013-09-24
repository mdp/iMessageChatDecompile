.class public final Lorg/jsoup/select/Evaluator$IsNthChild;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;


# virtual methods
.method protected final a(Lorg/jsoup/nodes/Element;)I
    .locals 1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->p()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-child"

    return-object v0
.end method
