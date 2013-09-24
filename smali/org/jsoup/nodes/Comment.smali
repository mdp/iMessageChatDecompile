.class public Lorg/jsoup/nodes/Comment;
.super Lorg/jsoup/nodes/Node;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Comment;->c:Lorg/jsoup/nodes/Attributes;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#comment"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/Comment;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_0
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/Comment;->c:Lorg/jsoup/nodes/Attributes;

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->b_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
