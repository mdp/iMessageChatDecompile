.class Lorg/jsoup/parser/Token$EOF;
.super Lorg/jsoup/parser/Token;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(B)V

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->f:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$EOF;->a:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method
