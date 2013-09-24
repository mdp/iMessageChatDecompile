.class Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;


# instance fields
.field private final a:[C

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->d:I

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    array-length v0, v0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)I
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    aget-char v1, v1, v0

    if-eq v3, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    aget-char v1, v1, v0

    if-ne v3, v1, :cond_0

    :cond_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v0, v1, :cond_3

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x1

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    aget-char v6, v6, v2

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v0, v1

    :goto_2
    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private o()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    return v0
.end method

.method final a(C)Ljava/lang/String;
    .locals 4

    const/4 v2, -0x1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v0, v1

    move v1, v0

    :goto_1
    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lorg/jsoup/parser/CharacterReader;->a(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final varargs a([C)Ljava/lang/String;
    .locals 4

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v2, v2, v3

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_2
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method final b()Z
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(C)Z
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v2, v4

    if-le v3, v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_1
    return v0

    :cond_0
    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/2addr v6, v2

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final varargs b([C)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v2, v1, v2

    array-length v3, p1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-char v4, p1, v1

    if-ne v4, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method final c()C
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method final c(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v2, v4

    if-le v3, v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_1
    return v0

    :cond_0
    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/2addr v6, v2

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final d()C
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/CharacterReader;->a(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/jsoup/parser/CharacterReader;->a(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    return-void
.end method

.method final f()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    return-void
.end method

.method final g()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->d:I

    return-void
.end method

.method final h()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->d:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    return-void
.end method

.method final i()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method final j()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method final k()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    const/16 v2, 0x46

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v1, v2, :cond_3

    const/16 v2, 0x66

    if-gt v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method final l()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method final m()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final n()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    aget-char v1, v1, v2

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->a:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->b:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
