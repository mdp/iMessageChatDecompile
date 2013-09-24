.class public Lorg/apache/commons/lang3/text/CompositeFormat;
.super Ljava/text/Format;


# static fields
.field private static final serialVersionUID:J = -0x3c141f8bfabf0723L


# instance fields
.field private final formatter:Ljava/text/Format;

.field private final parser:Ljava/text/Format;


# direct methods
.method public constructor <init>(Ljava/text/Format;Ljava/text/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/text/CompositeFormat;->parser:Ljava/text/Format;

    iput-object p2, p0, Lorg/apache/commons/lang3/text/CompositeFormat;->formatter:Ljava/text/Format;

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/CompositeFormat;->formatter:Ljava/text/Format;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFormatter()Ljava/text/Format;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/CompositeFormat;->formatter:Ljava/text/Format;

    return-object v0
.end method

.method public getParser()Ljava/text/Format;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/CompositeFormat;->parser:Ljava/text/Format;

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/text/CompositeFormat;->parser:Ljava/text/Format;

    invoke-virtual {v0, p1, p2}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reformat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/CompositeFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/CompositeFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
