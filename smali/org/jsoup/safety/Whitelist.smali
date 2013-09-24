.class public Lorg/jsoup/safety/Whitelist;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/safety/Whitelist;->e:Z

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->a:Ljava/util/Set;

    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->a(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final a(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->a(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/safety/Whitelist$AttributeKey;->a(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v4

    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/nodes/Element;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->b()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-boolean v4, p0, Lorg/jsoup/safety/Whitelist;->e:Z

    if-nez v4, :cond_1

    invoke-virtual {p3, v1}, Lorg/jsoup/nodes/Attribute;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/safety/Whitelist$Protocol;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jsoup/safety/Whitelist$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    :cond_3
    move v0, v3

    :goto_1
    return v0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    const-string v0, ":all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ":all"

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/safety/Whitelist;->a(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method final b(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .locals 4

    new-instance v2, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v2}, Lorg/jsoup/nodes/Attributes;-><init>()V

    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->a(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/safety/Whitelist$AttributeKey;

    invoke-virtual {v1}, Lorg/jsoup/safety/Whitelist$AttributeKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/safety/Whitelist$AttributeValue;

    invoke-virtual {v0}, Lorg/jsoup/safety/Whitelist$AttributeValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method
