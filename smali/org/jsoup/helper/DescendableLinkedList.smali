.class public Lorg/jsoup/helper/DescendableLinkedList;
.super Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/helper/DescendableLinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;

    invoke-virtual {p0}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;-><init>(Lorg/jsoup/helper/DescendableLinkedList;IB)V

    return-object v0
.end method
