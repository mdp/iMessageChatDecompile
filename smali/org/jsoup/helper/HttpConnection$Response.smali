.class public Lorg/jsoup/helper/HttpConnection$Response;
.super Lorg/jsoup/helper/HttpConnection$Base;

# interfaces
.implements Lorg/jsoup/Connection$Response;


# instance fields
.field private d:Z

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(B)V

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->d:Z

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->e:I

    return-void
.end method
