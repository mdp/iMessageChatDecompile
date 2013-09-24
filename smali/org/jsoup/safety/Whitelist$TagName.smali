.class Lorg/jsoup/safety/Whitelist$TagName;
.super Lorg/jsoup/safety/Whitelist$TypedValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/safety/Whitelist$TypedValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;
    .locals 1

    new-instance v0, Lorg/jsoup/safety/Whitelist$TagName;

    invoke-direct {v0, p0}, Lorg/jsoup/safety/Whitelist$TagName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
