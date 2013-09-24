.class Lorg/jsoup/parser/Token$EndTag;
.super Lorg/jsoup/parser/Token$Tag;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;-><init>()V

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->c:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$EndTag;->a:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/Token$EndTag;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$EndTag;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
