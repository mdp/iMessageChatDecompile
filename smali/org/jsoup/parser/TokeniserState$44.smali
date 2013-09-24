.class final enum Lorg/jsoup/parser/TokeniserState$44;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2b

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 1

    const-string v0, "--"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->d()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$44;->S:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/jsoup/parser/TokeniserState$44;->Y:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_1
    const-string v0, "[CDATA["

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/jsoup/parser/TokeniserState$44;->ao:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->c(Lorg/jsoup/parser/TokeniserState;)V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$44;->Q:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0
.end method
