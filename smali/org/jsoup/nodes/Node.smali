.class public abstract Lorg/jsoup/nodes/Node;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:Lorg/jsoup/nodes/Node;

.field b:Ljava/util/List;

.field c:Lorg/jsoup/nodes/Attributes;

.field d:Ljava/lang/String;

.field e:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Node;->d:Ljava/lang/String;

    iput-object p2, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    return-void
.end method

.method private a(Lorg/jsoup/nodes/Node;)V
    .locals 2

    iget-object v0, p1, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->a(Z)V

    iget v0, p1, Lorg/jsoup/nodes/Node;->e:I

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/jsoup/nodes/Node;->d()V

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/jsoup/nodes/Node;)V
    .locals 1

    iget-object v0, p1, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/Node;->a(Lorg/jsoup/nodes/Node;)V

    :cond_0
    iget-object v0, p1, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/Node;->a(Lorg/jsoup/nodes/Node;)V

    :cond_1
    iput-object p0, p1, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    return-void
.end method

.method private c()Lorg/jsoup/nodes/Document;
    .locals 2

    move-object v0, p0

    :goto_0
    instance-of v1, v0, Lorg/jsoup/nodes/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Document;

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    goto :goto_0
.end method

.method private c(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, v0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lorg/jsoup/nodes/Node;->e:I

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->c()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->d:Ljava/lang/String;

    iput-object v1, v0, Lorg/jsoup/nodes/Node;->d:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    iget-object v3, v0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/Node;->c(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget v1, p0, Lorg/jsoup/nodes/Node;->e:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected static c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->e()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-static {v1}, Lorg/jsoup/helper/StringUtil;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    iput v1, v0, Lorg/jsoup/nodes/Node;->e:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()Lorg/jsoup/nodes/Node;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    iget-object v1, v1, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    iget v2, p0, Lorg/jsoup/nodes/Node;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    goto :goto_0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(I)Lorg/jsoup/nodes/Node;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    return-object v0
.end method

.method protected final a(Ljava/lang/StringBuilder;)V
    .locals 4

    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    new-instance v2, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;

    invoke-direct {p0}, Lorg/jsoup/nodes/Node;->c()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jsoup/nodes/Node;->c()Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->c()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    :goto_0
    invoke-direct {v2, p1, v0}, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;-><init>(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V

    invoke-direct {v1, v2}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, p0}, Lorg/jsoup/select/NodeTraversor;->a(Lorg/jsoup/nodes/Node;)V

    return-void

    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Document;

    const-string v3, ""

    invoke-direct {v0, v3}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->c()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    goto :goto_0
.end method

.method abstract a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method protected final varargs a([Lorg/jsoup/nodes/Node;)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/Node;->b(Lorg/jsoup/nodes/Node;)V

    iget-object v3, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lorg/jsoup/nodes/Node;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method abstract b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method public b_()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "abs:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->f()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public d(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 6

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    iget v2, p0, Lorg/jsoup/nodes/Node;->e:I

    const/4 v0, 0x1

    new-array v3, v0, [Lorg/jsoup/nodes/Node;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    invoke-static {v3}, Lorg/jsoup/helper/Validate;->a([Ljava/lang/Object;)V

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v4, v3, v0

    invoke-direct {v1, v4}, Lorg/jsoup/nodes/Node;->b(Lorg/jsoup/nodes/Node;)V

    iget-object v5, v1, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lorg/jsoup/nodes/Node;->d()V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "abs:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Attributes;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    new-instance v0, Lorg/jsoup/nodes/Node$1;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/Node$1;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    invoke-direct {v1, v0}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, p0}, Lorg/jsoup/select/NodeTraversor;->a(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/jsoup/nodes/Node;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public f()Lorg/jsoup/nodes/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Node;->c(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->b_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lorg/jsoup/nodes/Node;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    return-object v0
.end method

.method public v()Lorg/jsoup/nodes/Attributes;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Node;->a(Lorg/jsoup/nodes/Node;)V

    return-void
.end method
