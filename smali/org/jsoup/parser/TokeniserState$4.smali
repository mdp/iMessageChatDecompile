.class final enum Lorg/jsoup/parser/TokeniserState$4;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/Character;Z)[C

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(C)V

    :goto_0
    sget-object v0, Lorg/jsoup/parser/TokeniserState$4;->c:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a([C)V

    goto :goto_0
.end method
