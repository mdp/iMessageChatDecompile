.class public final enum Lorg/jsoup/nodes/Document$QuirksMode;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/jsoup/nodes/Document$QuirksMode;

.field public static final enum b:Lorg/jsoup/nodes/Document$QuirksMode;

.field public static final enum c:Lorg/jsoup/nodes/Document$QuirksMode;

.field private static final synthetic d:[Lorg/jsoup/nodes/Document$QuirksMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jsoup/nodes/Document$QuirksMode;

    const-string v1, "noQuirks"

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Document$QuirksMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->a:Lorg/jsoup/nodes/Document$QuirksMode;

    new-instance v0, Lorg/jsoup/nodes/Document$QuirksMode;

    const-string v1, "quirks"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/nodes/Document$QuirksMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    new-instance v0, Lorg/jsoup/nodes/Document$QuirksMode;

    const-string v1, "limitedQuirks"

    invoke-direct {v0, v1, v4}, Lorg/jsoup/nodes/Document$QuirksMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->c:Lorg/jsoup/nodes/Document$QuirksMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jsoup/nodes/Document$QuirksMode;

    sget-object v1, Lorg/jsoup/nodes/Document$QuirksMode;->a:Lorg/jsoup/nodes/Document$QuirksMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/nodes/Document$QuirksMode;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsoup/nodes/Document$QuirksMode;->c:Lorg/jsoup/nodes/Document$QuirksMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->d:[Lorg/jsoup/nodes/Document$QuirksMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    const-class v0, Lorg/jsoup/nodes/Document$QuirksMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->d:[Lorg/jsoup/nodes/Document$QuirksMode;

    invoke-virtual {v0}, [Lorg/jsoup/nodes/Document$QuirksMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method
