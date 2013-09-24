.class public Lorg/jsoup/nodes/Attribute;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map$Entry;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    invoke-static {v1, p2}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    const-string v1, "data-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Attribute;->d()Lorg/jsoup/nodes/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/jsoup/nodes/Attribute;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    instance-of v2, p1, Lorg/jsoup/nodes/Attribute;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/jsoup/nodes/Attribute;

    iget-object v2, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_5
    iget-object v2, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attribute;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/nodes/Attribute;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Attribute;->b:Ljava/lang/String;

    new-instance v2, Lorg/jsoup/nodes/Document;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->c()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
