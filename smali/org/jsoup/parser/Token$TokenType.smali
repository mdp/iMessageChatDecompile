.class final enum Lorg/jsoup/parser/Token$TokenType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum b:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum c:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum d:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum e:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum f:Lorg/jsoup/parser/Token$TokenType;

.field private static final synthetic g:[Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "Doctype"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->a:Lorg/jsoup/parser/Token$TokenType;

    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "StartTag"

    invoke-direct {v0, v1, v4}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->b:Lorg/jsoup/parser/Token$TokenType;

    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "EndTag"

    invoke-direct {v0, v1, v5}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->c:Lorg/jsoup/parser/Token$TokenType;

    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "Comment"

    invoke-direct {v0, v1, v6}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->d:Lorg/jsoup/parser/Token$TokenType;

    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "Character"

    invoke-direct {v0, v1, v7}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->e:Lorg/jsoup/parser/Token$TokenType;

    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "EOF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->f:Lorg/jsoup/parser/Token$TokenType;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->a:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->b:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->c:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->d:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->e:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->f:Lorg/jsoup/parser/Token$TokenType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->g:[Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Token$TokenType;
    .locals 1

    const-class v0, Lorg/jsoup/parser/Token$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Token$TokenType;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/parser/Token$TokenType;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->g:[Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0}, [Lorg/jsoup/parser/Token$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/Token$TokenType;

    return-object v0
.end method
