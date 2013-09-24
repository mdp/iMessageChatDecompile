.class public Lorg/jsoup/select/Evaluator$IsNthOfType;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/jsoup/nodes/Element;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->k()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->m()Lorg/jsoup/select/Elements;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/jsoup/select/Elements;->a(I)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->h()Lorg/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->h()Lorg/jsoup/parser/Tag;

    move-result-object v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Lorg/jsoup/select/Elements;->a(I)Lorg/jsoup/nodes/Element;

    move-result-object v3

    if-eq v3, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-of-type"

    return-object v0
.end method
