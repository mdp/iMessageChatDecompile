.class final enum Lorg/jsoup/parser/TokeniserState$43;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 3

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->e()V

    new-instance v0, Lorg/jsoup/parser/Token$Comment;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$Comment;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$Comment;->c:Z

    iget-object v1, v0, Lorg/jsoup/parser/Token$Comment;->b:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/CharacterReader;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/Token;)V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$43;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method
