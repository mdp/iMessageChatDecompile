.class final enum Lorg/jsoup/parser/TokeniserState$67;
.super Lorg/jsoup/parser/TokeniserState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x42

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 1

    const-string v0, "]]>"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Ljava/lang/String;)V

    const-string v0, "]]>"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->b(Ljava/lang/String;)Z

    sget-object v0, Lorg/jsoup/parser/TokeniserState$67;->a:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method
