.class public Lorg/jsoup/nodes/DocumentType;
.super Lorg/jsoup/nodes/Node;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p4}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/DocumentType;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    const-string v0, "publicId"

    invoke-virtual {p0, v0, p2}, Lorg/jsoup/nodes/DocumentType;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    const-string v0, "systemId"

    invoke-virtual {p0, v0, p3}, Lorg/jsoup/nodes/DocumentType;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#doctype"

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    const-string v0, "<!DOCTYPE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/DocumentType;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "publicId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DocumentType;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "publicId"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/DocumentType;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "systemId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DocumentType;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "systemId"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/DocumentType;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method
