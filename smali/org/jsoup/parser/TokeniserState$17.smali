.class final enum Lorg/jsoup/parser/TokeniserState$17;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->e()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$17;->f:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->h()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$17;->r:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "<!"

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$17;->t:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method
