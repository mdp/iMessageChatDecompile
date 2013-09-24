.class public final Lorg/jsoup/select/Evaluator$Attribute;
.super Lorg/jsoup/select/Evaluator;


# instance fields
.field private a:Ljava/lang/String;


# virtual methods
.method public final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/select/Evaluator$Attribute;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/Evaluator$Attribute;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
