.class Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lorg/jsoup/nodes/Attributes$Dataset;

.field private b:Ljava/util/Iterator;

.field private c:Lorg/jsoup/nodes/Attribute;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;)V
    .locals 1

    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->a:Lorg/jsoup/nodes/Attributes$Dataset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->a:Lorg/jsoup/nodes/Attributes$Dataset;

    iget-object v0, v0, Lorg/jsoup/nodes/Attributes$Dataset;->a:Lorg/jsoup/nodes/Attributes;

    invoke-static {v0}, Lorg/jsoup/nodes/Attributes;->b(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->b:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    iput-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->c:Lorg/jsoup/nodes/Attribute;

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->c:Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/jsoup/nodes/Attribute;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->c:Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->c:Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->a:Lorg/jsoup/nodes/Attributes$Dataset;

    iget-object v0, v0, Lorg/jsoup/nodes/Attributes$Dataset;->a:Lorg/jsoup/nodes/Attributes;

    invoke-static {v0}, Lorg/jsoup/nodes/Attributes;->b(Lorg/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->c:Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
