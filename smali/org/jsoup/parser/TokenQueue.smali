.class public Lorg/jsoup/parser/TokenQueue;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
