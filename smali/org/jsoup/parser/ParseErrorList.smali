.class Lorg/jsoup/parser/ParseErrorList;
.super Ljava/util/ArrayList;


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput v0, p0, Lorg/jsoup/parser/ParseErrorList;->a:I

    return-void
.end method

.method static b()Lorg/jsoup/parser/ParseErrorList;
    .locals 1

    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    invoke-direct {v0}, Lorg/jsoup/parser/ParseErrorList;-><init>()V

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/ParseErrorList;->size()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/ParseErrorList;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
