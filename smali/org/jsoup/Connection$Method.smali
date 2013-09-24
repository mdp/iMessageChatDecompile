.class public final enum Lorg/jsoup/Connection$Method;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/jsoup/Connection$Method;

.field public static final enum b:Lorg/jsoup/Connection$Method;

.field private static final synthetic c:[Lorg/jsoup/Connection$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/Connection$Method;->a:Lorg/jsoup/Connection$Method;

    new-instance v0, Lorg/jsoup/Connection$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/Connection$Method;->b:Lorg/jsoup/Connection$Method;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jsoup/Connection$Method;

    sget-object v1, Lorg/jsoup/Connection$Method;->a:Lorg/jsoup/Connection$Method;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/Connection$Method;->b:Lorg/jsoup/Connection$Method;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jsoup/Connection$Method;->c:[Lorg/jsoup/Connection$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;
    .locals 1

    const-class v0, Lorg/jsoup/Connection$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/Connection$Method;
    .locals 1

    sget-object v0, Lorg/jsoup/Connection$Method;->c:[Lorg/jsoup/Connection$Method;

    invoke-virtual {v0}, [Lorg/jsoup/Connection$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/Connection$Method;

    return-object v0
.end method
