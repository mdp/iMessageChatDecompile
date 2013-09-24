.class Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lorg/jsoup/helper/DescendableLinkedList;

.field private final b:Ljava/util/ListIterator;


# direct methods
.method private constructor <init>(Lorg/jsoup/helper/DescendableLinkedList;I)V
    .locals 1

    iput-object p1, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->a:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lorg/jsoup/helper/DescendableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->b:Ljava/util/ListIterator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/DescendableLinkedList;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;-><init>(Lorg/jsoup/helper/DescendableLinkedList;I)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method
