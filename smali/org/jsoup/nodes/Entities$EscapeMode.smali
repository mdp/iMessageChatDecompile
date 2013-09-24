.class public final enum Lorg/jsoup/nodes/Entities$EscapeMode;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/jsoup/nodes/Entities$EscapeMode;

.field public static final enum b:Lorg/jsoup/nodes/Entities$EscapeMode;

.field public static final enum c:Lorg/jsoup/nodes/Entities$EscapeMode;

.field private static final synthetic e:[Lorg/jsoup/nodes/Entities$EscapeMode;


# instance fields
.field private d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    const-string v1, "xhtml"

    invoke-static {}, Lorg/jsoup/nodes/Entities;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    new-instance v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    const-string v1, "base"

    invoke-static {}, Lorg/jsoup/nodes/Entities;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    new-instance v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    const-string v1, "extended"

    invoke-static {}, Lorg/jsoup/nodes/Entities;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->c:Lorg/jsoup/nodes/Entities$EscapeMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lorg/jsoup/nodes/Entities$EscapeMode;->a:Lorg/jsoup/nodes/Entities$EscapeMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsoup/nodes/Entities$EscapeMode;->b:Lorg/jsoup/nodes/Entities$EscapeMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jsoup/nodes/Entities$EscapeMode;->c:Lorg/jsoup/nodes/Entities$EscapeMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->e:[Lorg/jsoup/nodes/Entities$EscapeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->d:Ljava/util/Map;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    const-class v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->e:[Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0}, [Lorg/jsoup/nodes/Entities$EscapeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->d:Ljava/util/Map;

    return-object v0
.end method
