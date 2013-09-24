.class final enum Lorg/jsoup/parser/TokeniserState$54;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x35

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->d(Lorg/jsoup/parser/TokeniserState;)V

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/Token$Doctype;

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$Doctype;->e:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->g()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->b([C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->g()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_2
    const-string v0, "PUBLIC"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->ac:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_3
    const-string v0, "SYSTEM"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->ai:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->c(Lorg/jsoup/parser/TokeniserState;)V

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/Token$Doctype;

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$Doctype;->e:Z

    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->an:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    nop

    :array_0
    .array-data 0x2
        0x9t 0x0t
        0xat 0x0t
        0xdt 0x0t
        0xct 0x0t
        0x20t 0x0t
    .end array-data
.end method
