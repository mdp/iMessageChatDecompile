.class final enum Lorg/jsoup/parser/TokeniserState$41;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x28

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

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->c(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->e()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$41;->H:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lorg/jsoup/parser/TokeniserState$41;->H:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/jsoup/parser/TokeniserState$41;->P:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->c()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$41;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->d(Lorg/jsoup/parser/TokeniserState;)V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$41;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3e -> :sswitch_2
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
