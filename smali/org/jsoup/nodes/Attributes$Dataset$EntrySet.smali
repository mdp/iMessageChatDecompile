.class Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic a:Lorg/jsoup/nodes/Attributes$Dataset;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->a:Lorg/jsoup/nodes/Attributes$Dataset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->a:Lorg/jsoup/nodes/Attributes$Dataset;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;B)V

    return-object v0
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->a:Lorg/jsoup/nodes/Attributes$Dataset;

    invoke-direct {v1, v2, v0}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;B)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
