.class final enum Lorg/jsoup/parser/TokeniserState$7;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->c(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()V

    const v0, 0xfffd

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(C)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/jsoup/parser/Token$EOF;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method
