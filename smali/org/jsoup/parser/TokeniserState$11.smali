.class final enum Lorg/jsoup/parser/TokeniserState$11;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->h()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$11;->l:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->c()V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->e()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$11;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_1
    const-string v0, "<"

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$11;->c:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0
.end method
