.class abstract Lorg/jsoup/select/CombiningEvaluator;
.super Lorg/jsoup/select/Evaluator;


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->a:Ljava/util/List;

    return-void
.end method
