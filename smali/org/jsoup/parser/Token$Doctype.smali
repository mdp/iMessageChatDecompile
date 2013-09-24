.class Lorg/jsoup/parser/Token$Doctype;
.super Lorg/jsoup/parser/Token;


# instance fields
.field final b:Ljava/lang/StringBuilder;

.field final c:Ljava/lang/StringBuilder;

.field final d:Ljava/lang/StringBuilder;

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jsoup/parser/Token;-><init>(B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->b:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->d:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Doctype;->e:Z

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->a:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->a:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->e:Z

    return v0
.end method
