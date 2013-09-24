.class final enum Lorg/jsoup/parser/TokeniserState$3;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

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

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->a([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lorg/jsoup/parser/TokeniserState$3;->d:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/jsoup/parser/TokeniserState$3;->k:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->c(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()V

    const v0, 0xfffd

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(C)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/jsoup/parser/Token$EOF;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 0x2
        0x26t 0x0t
        0x3ct 0x0t
        0x0t 0x0t
    .end array-data
.end method
