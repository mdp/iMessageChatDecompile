.class public Lorg/jsoup/helper/HttpConnection$Request;
.super Lorg/jsoup/helper/HttpConnection$Base;

# interfaces
.implements Lorg/jsoup/Connection$Request;


# instance fields
.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/util/Collection;

.field private h:Z

.field private i:Z

.field private j:Lorg/jsoup/parser/Parser;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(B)V

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->h:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->i:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->d:I

    const/high16 v0, 0x10

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->g:Ljava/util/Collection;

    sget-object v0, Lorg/jsoup/Connection$Method;->a:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->a:Lorg/jsoup/Connection$Method;

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->b:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/jsoup/parser/Parser;->a()Lorg/jsoup/parser/Parser;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->j:Lorg/jsoup/parser/Parser;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Request;-><init>()V

    return-void
.end method
