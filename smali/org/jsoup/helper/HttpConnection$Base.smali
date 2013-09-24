.class abstract Lorg/jsoup/helper/HttpConnection$Base;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/Connection$Base;


# instance fields
.field a:Lorg/jsoup/Connection$Method;

.field b:Ljava/util/Map;

.field c:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>()V

    return-void
.end method
