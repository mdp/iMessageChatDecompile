.class Lorg/jsoup/parser/Token$Character;
.super Lorg/jsoup/parser/Token;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(B)V

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->e:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->a:Lorg/jsoup/parser/Token$TokenType;

    iput-object p1, p0, Lorg/jsoup/parser/Token$Character;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->b:Ljava/lang/String;

    return-object v0
.end method
