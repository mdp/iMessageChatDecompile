.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;


# instance fields
.field protected b:Ljava/lang/String;

.field c:Z

.field d:Lorg/jsoup/nodes/Attributes;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(B)V

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->c:Z

    return-void
.end method

.method private final r()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->b:Ljava/lang/String;

    return-object p0
.end method

.method final a(C)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->b(Ljava/lang/String;)V

    return-void
.end method

.method final a([C)V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->r()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final b(C)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->c(Ljava/lang/String;)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->b:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method final c(C)V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->r()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->r()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final m()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/nodes/Attributes;

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Lorg/jsoup/nodes/Attribute;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Attributes;->a(Lorg/jsoup/nodes/Attribute;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lorg/jsoup/nodes/Attribute;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final n()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->m()V

    :cond_0
    return-void
.end method

.method final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->b(Z)V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final p()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->c:Z

    return v0
.end method

.method final q()Lorg/jsoup/nodes/Attributes;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method
