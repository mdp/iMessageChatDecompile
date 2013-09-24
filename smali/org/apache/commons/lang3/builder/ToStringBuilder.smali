.class public Lorg/apache/commons/lang3/builder/ToStringBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# static fields
.field private static volatile defaultStyle:Lorg/apache/commons/lang3/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lorg/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultStyle(Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(F)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(S)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append([B)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([D)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([F)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([I)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([J)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append([S)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Z)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0
.end method
