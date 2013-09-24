.class Lorg/jsoup/nodes/Attributes$Dataset;
.super Ljava/util/AbstractMap;


# instance fields
.field final synthetic a:Lorg/jsoup/nodes/Attributes;


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;B)V

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/nodes/Attributes;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset;->a:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset;->a:Lorg/jsoup/nodes/Attributes;

    invoke-static {v0}, Lorg/jsoup/nodes/Attributes;->b(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lorg/jsoup/nodes/Attribute;

    invoke-direct {v2, v1, p2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jsoup/nodes/Attributes$Dataset;->a:Lorg/jsoup/nodes/Attributes;

    invoke-static {v3}, Lorg/jsoup/nodes/Attributes;->b(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
