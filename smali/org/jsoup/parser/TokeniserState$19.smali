.class final enum Lorg/jsoup/parser/TokeniserState$19;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Lorg/jsoup/parser/Tokeniser;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$19;->f:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

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

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Token$Tag;->b(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jsoup/parser/TokeniserState$19;->a(Lorg/jsoup/parser/Tokeniser;)V

    goto :goto_0

    :sswitch_0
    sget-object v0, Lorg/jsoup/parser/TokeniserState$19;->H:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/jsoup/parser/TokeniserState$19;->P:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->c()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$19;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/jsoup/parser/TokeniserState$19;->a(Lorg/jsoup/parser/Tokeniser;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method
