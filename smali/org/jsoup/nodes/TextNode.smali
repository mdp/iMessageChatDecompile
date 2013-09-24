.class public Lorg/jsoup/nodes/TextNode;
.super Lorg/jsoup/nodes/Node;


# instance fields
.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/nodes/Node;-><init>()V

    iput-object p2, p0, Lorg/jsoup/nodes/TextNode;->d:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/nodes/TextNode;->f:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/jsoup/helper/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->c:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/TextNode;->c:Lorg/jsoup/nodes/Attributes;

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->c:Lorg/jsoup/nodes/Attributes;

    const-string v1, "text"

    iget-object v2, p0, Lorg/jsoup/nodes/TextNode;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 4

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->u()Lorg/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->u()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/jsoup/nodes/Element;->c(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/jsoup/helper/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/jsoup/nodes/Node;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->a:Lorg/jsoup/nodes/Node;

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->a:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->h()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/TextNode;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_4
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->a:Lorg/jsoup/nodes/Node;

    iget-object v0, v0, Lorg/jsoup/nodes/Node;->b:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    if-eq v0, p0, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->e()V

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->e()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->c:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->c:Lorg/jsoup/nodes/Attributes;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->e()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->e()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->b_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lorg/jsoup/nodes/Attributes;
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->e()V

    invoke-super {p0}, Lorg/jsoup/nodes/Node;->v()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method
