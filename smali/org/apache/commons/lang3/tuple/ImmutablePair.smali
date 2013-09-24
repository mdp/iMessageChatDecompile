.class public final Lorg/apache/commons/lang3/tuple/ImmutablePair;
.super Lorg/apache/commons/lang3/tuple/Pair;


# static fields
.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public final left:Ljava/lang/Object;

.field public final right:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getLeft()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRight()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
