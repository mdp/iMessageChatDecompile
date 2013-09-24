.class public Lorg/jsoup/nodes/Document$OutputSettings;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lorg/jsoup/nodes/Entities$EscapeMode;

.field private b:Ljava/nio/charset/Charset;

.field private c:Ljava/nio/charset/CharsetEncoder;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Ljava/nio/charset/Charset;

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/nio/charset/CharsetEncoder;

    iput-boolean v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->e:Z

    iput v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method final b()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->d:Z

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->f()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->e:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->f:I

    return v0
.end method

.method public final f()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document$OutputSettings;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document$OutputSettings;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document$OutputSettings;->c:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Entities$EscapeMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$EscapeMode;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document$OutputSettings;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
