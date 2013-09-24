.class public Lorg/jsoup/nodes/Element;
.super Lorg/jsoup/nodes/Node;


# instance fields
.field private f:Lorg/jsoup/parser/Tag;

.field private g:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    return-void
.end method

.method private static a(Lorg/jsoup/nodes/Element;Ljava/util/List;)Ljava/lang/Integer;
    .locals 2

    invoke-static {p0}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lorg/jsoup/nodes/Element;)Lorg/jsoup/parser/Tag;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/nodes/Element;->b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    return-void
.end method

.method private b(Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    instance-of v2, v0, Lorg/jsoup/nodes/TextNode;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    invoke-static {p1, v0}, Lorg/jsoup/nodes/Element;->b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Element;

    iget-object v0, v0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "br"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->b(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->u()Lorg/jsoup/nodes/Node;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Element;->c(Lorg/jsoup/nodes/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/jsoup/nodes/TextNode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/jsoup/nodes/TextNode;->b(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/jsoup/nodes/TextNode;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private c(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Node;->a(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static c(Lorg/jsoup/nodes/Node;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    iget-object v0, v0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    return-object p0
.end method

.method public final a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->a([Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lorg/jsoup/select/Collector;->a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    iget-object v0, v0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/Element;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->c:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1, p3}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_3
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 1

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->d(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Element;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->d()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/TextNode;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/Element;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/Set;

    if-nez v0, :cond_0

    const-string v0, "class"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->e()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->b(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-super {p0}, Lorg/jsoup/nodes/Node;->f()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jsoup/nodes/Element;->g:Ljava/util/Set;

    return-object v0
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

.method public synthetic f()Lorg/jsoup/nodes/Node;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->e()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lorg/jsoup/parser/Tag;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/jsoup/nodes/Node;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->f:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->b()Z

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final k()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public final l()Lorg/jsoup/nodes/Element;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->m()Lorg/jsoup/select/Elements;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->a(I)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lorg/jsoup/select/Elements;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    instance-of v3, v0, Lorg/jsoup/nodes/Element;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0, v1}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final n()Lorg/jsoup/select/Elements;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jsoup/select/Elements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jsoup/select/Elements;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->m()Lorg/jsoup/select/Elements;

    move-result-object v0

    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lorg/jsoup/select/Elements;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eq v0, p0, :cond_1

    invoke-virtual {v1, v0}, Lorg/jsoup/select/Elements;->a(Lorg/jsoup/nodes/Element;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final o()Lorg/jsoup/nodes/Element;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->m()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Element;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final p()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->m()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Element;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Lorg/jsoup/select/Elements;
    .locals 1

    new-instance v0, Lorg/jsoup/select/Evaluator$AllElements;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    new-instance v2, Lorg/jsoup/nodes/Element$1;

    invoke-direct {v2, p0, v0}, Lorg/jsoup/nodes/Element$1;-><init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, p0}, Lorg/jsoup/select/NodeTraversor;->a(Lorg/jsoup/nodes/Node;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Element;->b(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Element;->c(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->b_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lorg/jsoup/nodes/Node;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method
