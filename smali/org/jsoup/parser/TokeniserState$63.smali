.class final enum Lorg/jsoup/parser/TokeniserState$63;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3e

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/Token$Doctype;

    iget-object v1, v1, Lorg/jsoup/parser/Token$Doctype;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lorg/jsoup/parser/TokeniserState$63;->am:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->c(Lorg/jsoup/parser/TokeniserState;)V

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/Token$Doctype;

    iget-object v0, v0, Lorg/jsoup/parser/Token$Doctype;->d:Ljava/lang/StringBuilder;

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->c(Lorg/jsoup/parser/TokeniserState;)V

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/Token$Doctype;

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$Doctype;->e:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->g()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$63;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->d(Lorg/jsoup/parser/TokeniserState;)V

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/Token$Doctype;

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$Doctype;->e:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->g()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$63;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x22 -> :sswitch_0
        0x3e -> :sswitch_2
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
