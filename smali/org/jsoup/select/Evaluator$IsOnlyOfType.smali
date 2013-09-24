.class public final Lorg/jsoup/select/Evaluator$IsOnlyOfType;
.super Lorg/jsoup/select/Evaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->k()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->m()Lorg/jsoup/select/Elements;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {v4, v0}, Lorg/jsoup/select/Elements;->a(I)Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->h()Lorg/jsoup/parser/Tag;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->h()Lorg/jsoup/parser/Tag;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-ne v2, v3, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":only-of-type"

    return-object v0
.end method
