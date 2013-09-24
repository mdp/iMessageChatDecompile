.class public Lorg/jsoup/safety/Cleaner;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/jsoup/safety/Whitelist;


# direct methods
.method static synthetic a(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;
    .locals 7

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v3}, Lorg/jsoup/nodes/Attributes;-><init>()V

    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-static {v2}, Lorg/jsoup/parser/Tag;->a(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->v()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    iget-object v6, p0, Lorg/jsoup/safety/Cleaner;->a:Lorg/jsoup/safety/Whitelist;

    invoke-virtual {v6, v2, p1, v0}, Lorg/jsoup/safety/Whitelist;->a(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Attributes;->a(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner;->a:Lorg/jsoup/safety/Whitelist;

    invoke-virtual {v0, v2}, Lorg/jsoup/safety/Whitelist;->b(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Attributes;->a(Lorg/jsoup/nodes/Attributes;)V

    new-instance v0, Lorg/jsoup/safety/Cleaner$ElementMeta;

    invoke-direct {v0, v4, v1}, Lorg/jsoup/safety/Cleaner$ElementMeta;-><init>(Lorg/jsoup/nodes/Element;I)V

    return-object v0
.end method

.method static synthetic a(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/safety/Cleaner;->a:Lorg/jsoup/safety/Whitelist;

    return-object v0
.end method
