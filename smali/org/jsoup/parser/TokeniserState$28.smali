.class final enum Lorg/jsoup/parser/TokeniserState$28;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 3

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->e()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$28;->v:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_0
    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jsoup/parser/TokeniserState$28;->C:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    :goto_1
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(C)V

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/jsoup/parser/TokeniserState$28;->v:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method
