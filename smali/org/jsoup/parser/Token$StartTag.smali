.class Lorg/jsoup/parser/Token$StartTag;
.super Lorg/jsoup/parser/Token$Tag;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;-><init>()V

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$StartTag;->d:Lorg/jsoup/nodes/Attributes;

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->b:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$StartTag;->a:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/Token$StartTag;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/Token$StartTag;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/jsoup/parser/Token$StartTag;->d:Lorg/jsoup/nodes/Attributes;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Token$StartTag;->d:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Token$StartTag;->d:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->a()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/Token$StartTag;->d:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
