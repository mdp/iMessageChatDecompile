.class public Lorg/apache/commons/lang3/tuple/MutablePair;
.super Lorg/apache/commons/lang3/tuple/Pair;


# static fields
.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public left:Ljava/lang/Object;

.field public right:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/MutablePair;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/tuple/MutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/tuple/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setLeft(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->left:Ljava/lang/Object;

    return-void
.end method

.method public setRight(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutablePair;->right:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/tuple/MutablePair;->getRight()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/tuple/MutablePair;->setRight(Ljava/lang/Object;)V

    return-object v0
.end method
