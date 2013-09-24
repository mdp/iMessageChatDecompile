.class public Lorg/jsoup/nodes/Attributes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# instance fields
.field private a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic b(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/jsoup/nodes/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Attributes;->a(Lorg/jsoup/nodes/Attribute;)V

    return-void
.end method

.method final a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/Attribute;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0
.end method

.method public final a(Lorg/jsoup/nodes/Attribute;)V
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attribute;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lorg/jsoup/nodes/Attributes;)V
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->a()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lorg/jsoup/nodes/Attributes;
    .locals 5

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attributes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, v0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Attribute;

    iget-object v3, v0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->d()Lorg/jsoup/nodes/Attribute;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->c()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/jsoup/nodes/Attributes;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/jsoup/nodes/Attributes;

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    iget-object v3, p1, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->c()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
