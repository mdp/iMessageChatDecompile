.class Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;
.super Lorg/apache/commons/lang3/text/StrLookup;


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrLookup;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
