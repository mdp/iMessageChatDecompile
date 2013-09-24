.class public Lorg/jsoup/nodes/XmlDeclaration;
.super Lorg/jsoup/nodes/Node;


# instance fields
.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/nodes/XmlDeclaration;->c:Lorg/jsoup/nodes/Attributes;

    const-string v1, "declaration"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, p0, Lorg/jsoup/nodes/XmlDeclaration;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#declaration"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/jsoup/nodes/XmlDeclaration;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "!"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/XmlDeclaration;->c:Lorg/jsoup/nodes/Attributes;

    const-string v2, "declaration"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string v0, "?"

    goto :goto_0
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/XmlDeclaration;->b_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
