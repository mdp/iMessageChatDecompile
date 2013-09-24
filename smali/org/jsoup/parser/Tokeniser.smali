.class Lorg/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Lorg/jsoup/parser/Token$Tag;

.field c:Lorg/jsoup/parser/Token$Doctype;

.field d:Lorg/jsoup/parser/Token$Comment;

.field private e:Lorg/jsoup/parser/CharacterReader;

.field private f:Lorg/jsoup/parser/ParseErrorList;

.field private g:Lorg/jsoup/parser/TokeniserState;

.field private h:Lorg/jsoup/parser/Token;

.field private i:Z

.field private j:Ljava/lang/StringBuilder;

.field private k:Lorg/jsoup/parser/Token$StartTag;

.field private l:Z


# direct methods
.method constructor <init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->a:Lorg/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->g:Lorg/jsoup/parser/TokeniserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->i:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->l:Z

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    iput-object p2, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->a()I

    move-result v2

    const-string v3, "Invalid character reference: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->a()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Z)Lorg/jsoup/parser/Token$Tag;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/Token$Tag;

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/Token$Tag;

    return-object v0

    :cond_0
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    goto :goto_0
.end method

.method final a()Lorg/jsoup/parser/Token;
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->l:Z

    if-nez v0, :cond_0

    const-string v0, "Self closing flag not acknowledged"

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Tokeniser;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->l:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->g:Lorg/jsoup/parser/TokeniserState;

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/parser/TokeniserState;->a(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$Character;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    iput-boolean v3, p0, Lorg/jsoup/parser/Tokeniser;->i:Z

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->h:Lorg/jsoup/parser/Token;

    goto :goto_1
.end method

.method final a(C)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final a(Lorg/jsoup/parser/Token;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->i:Z

    const-string v1, "There is an unread token pending!"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->a(ZLjava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->h:Lorg/jsoup/parser/Token;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->i:Z

    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->b:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/jsoup/parser/Token$StartTag;

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->k:Lorg/jsoup/parser/Token$StartTag;

    iget-boolean v0, p1, Lorg/jsoup/parser/Token$StartTag;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->l:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->c:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    iget-object v0, p1, Lorg/jsoup/parser/Token$EndTag;->d:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const-string v0, "Attributes incorrectly present on end tag"

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Tokeniser;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->g:Lorg/jsoup/parser/TokeniserState;

    return-void
.end method

.method final a([C)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final a(Ljava/lang/Character;Z)[C
    .locals 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v5, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v5}, Lorg/jsoup/parser/CharacterReader;->c()C

    move-result v5

    if-ne v0, v5, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    const/4 v5, 0x7

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5}, Lorg/jsoup/parser/CharacterReader;->b([C)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->g()V

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    const-string v5, "#"

    invoke-virtual {v0, v5}, Lorg/jsoup/parser/CharacterReader;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    const-string v5, "X"

    invoke-virtual {v0, v5}, Lorg/jsoup/parser/CharacterReader;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->k()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    const-string v0, "numeric reference with no numerals"

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->h()V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    const-string v6, ";"

    invoke-virtual {v1, v6}, Lorg/jsoup/parser/CharacterReader;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "missing semicolon"

    invoke-direct {p0, v1}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;)V

    :cond_5
    if-eqz v5, :cond_8

    const/16 v1, 0x10

    :goto_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_3
    if-eq v0, v4, :cond_7

    const v1, 0xd800

    if-lt v0, v1, :cond_6

    const v1, 0xdfff

    if-le v0, v1, :cond_7

    :cond_6
    const v1, 0x10ffff

    if-le v0, v1, :cond_9

    :cond_7
    const-string v0, "character outside of valid range"

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;)V

    new-array v0, v3, [C

    const v1, 0xfffd

    aput-char v1, v0, v2

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xa

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_3

    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    const/16 v5, 0x3b

    invoke-virtual {v0, v5}, Lorg/jsoup/parser/CharacterReader;->b(C)Z

    move-result v5

    invoke-static {v4}, Lorg/jsoup/nodes/Entities;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v4}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v5, :cond_d

    :cond_b
    move v0, v3

    :goto_4
    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->h()V

    if-eqz v5, :cond_c

    const-string v0, "invalid named referenece \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;)V

    :cond_c
    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_4

    :cond_e
    if-eqz p2, :cond_10

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->m()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->n()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_1

    invoke-virtual {v0, v5}, Lorg/jsoup/parser/CharacterReader;->b([C)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->h()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "missing semicolon"

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;)V

    :cond_11
    new-array v0, v3, [C

    invoke-static {v4}, Lorg/jsoup/nodes/Entities;->c(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    aput-char v1, v0, v2

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x2
        0x9t 0x0t
        0xat 0x0t
        0xdt 0x0t
        0xct 0x0t
        0x20t 0x0t
        0x3ct 0x0t
        0x26t 0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x2
        0x3dt 0x0t
        0x2dt 0x0t
        0x5ft 0x0t
    .end array-data
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->l:Z

    return-void
.end method

.method final b(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->f()V

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->g:Lorg/jsoup/parser/TokeniserState;

    return-void
.end method

.method final c()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->n()V

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method final c(Lorg/jsoup/parser/TokeniserState;)V
    .locals 7

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->a()I

    move-result v2

    const-string v3, "Unexpected character \'%s\' in input state [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v6}, Lorg/jsoup/parser/CharacterReader;->c()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final d()V
    .locals 1

    new-instance v0, Lorg/jsoup/parser/Token$Comment;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$Comment;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->d:Lorg/jsoup/parser/Token$Comment;

    return-void
.end method

.method final d(Lorg/jsoup/parser/TokeniserState;)V
    .locals 6

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->e:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->a()I

    move-result v2

    const-string v3, "Unexpectedly reached end of file (EOF) in input state [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final e()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->d:Lorg/jsoup/parser/Token$Comment;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method final f()V
    .locals 1

    new-instance v0, Lorg/jsoup/parser/Token$Doctype;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$Doctype;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/Token$Doctype;

    return-void
.end method

.method final g()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/Token$Doctype;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method final h()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method final i()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->k:Lorg/jsoup/parser/Token$StartTag;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/Token$Tag;

    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->k:Lorg/jsoup/parser/Token$StartTag;

    iget-object v1, v1, Lorg/jsoup/parser/Token$StartTag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->k:Lorg/jsoup/parser/Token$StartTag;

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->b:Ljava/lang/String;

    return-object v0
.end method
