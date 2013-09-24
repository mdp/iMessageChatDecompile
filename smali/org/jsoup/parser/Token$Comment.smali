.class Lorg/jsoup/parser/Token$Comment;
.super Lorg/jsoup/parser/Token;


# instance fields
.field final b:Ljava/lang/StringBuilder;

.field c:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jsoup/parser/Token;-><init>(B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->b:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Comment;->c:Z

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->d:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->a:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/parser/Token$Comment;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
