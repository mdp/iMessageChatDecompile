.class public final Lorg/jsoup/select/Evaluator$IsRoot;
.super Lorg/jsoup/select/Evaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 1

    instance-of v0, p1, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->l()Lorg/jsoup/nodes/Element;

    move-result-object p1

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":root"

    return-object v0
.end method
