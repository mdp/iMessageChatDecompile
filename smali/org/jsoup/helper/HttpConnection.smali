.class public Lorg/jsoup/helper/HttpConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/Connection;


# instance fields
.field private a:Lorg/jsoup/Connection$Request;

.field private b:Lorg/jsoup/Connection$Response;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jsoup/helper/HttpConnection$Request;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;-><init>(B)V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection;->a:Lorg/jsoup/Connection$Request;

    new-instance v0, Lorg/jsoup/helper/HttpConnection$Response;

    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection$Response;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection;->b:Lorg/jsoup/Connection$Response;

    return-void
.end method
