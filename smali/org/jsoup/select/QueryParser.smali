.class Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ","

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ">"

    aput-object v2, v0, v1

    const-string v1, "+"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "~"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/select/QueryParser;->a:[Ljava/lang/String;

    const-string v0, "((\\+|-)?(\\d+)?)n(\\s*(\\+|-)?\\s*\\d+)?"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\+|-)?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->c:Ljava/util/regex/Pattern;

    return-void
.end method
