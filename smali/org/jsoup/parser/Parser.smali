.class public Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/jsoup/parser/TreeBuilder;

.field private b:I


# direct methods
.method private constructor <init>(Lorg/jsoup/parser/TreeBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/Parser;->b:I

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/TreeBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->b()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lorg/jsoup/parser/TreeBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lorg/jsoup/parser/Parser;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method
