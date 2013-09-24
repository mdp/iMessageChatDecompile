.class final enum Lorg/jsoup/parser/TokeniserState$12;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 2

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Z)Lorg/jsoup/parser/Token$Tag;

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->c()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$Tag;->a(C)V

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->c()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/jsoup/parser/TokeniserState$12;->m:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "</"

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$12;->c:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0
.end method
