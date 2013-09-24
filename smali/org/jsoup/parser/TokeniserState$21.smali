.class final enum Lorg/jsoup/parser/TokeniserState$21;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 2

    const/16 v1, 0x2d

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->a(C)V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$21;->x:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/jsoup/parser/TokeniserState$21;->f:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0
.end method
