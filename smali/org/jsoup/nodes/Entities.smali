.class public Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/Map;

.field private static final e:Ljava/util/Map;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v0, "&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities;->f:Ljava/util/regex/Pattern;

    const-string v0, "&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities;->g:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "quot"

    aput-object v3, v1, v2

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "amp"

    aput-object v3, v1, v2

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    aput-object v1, v0, v8

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "apos"

    aput-object v3, v1, v2

    const/16 v3, 0x27

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "lt"

    aput-object v4, v3, v2

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v3, v0, v1

    const/4 v1, 0x4

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "gt"

    aput-object v4, v3, v2

    const/16 v4, 0x3e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v3, v0, v1

    sput-object v0, Lorg/jsoup/nodes/Entities;->h:[[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->b:Ljava/util/Map;

    const-string v0, "entities-base.properties"

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities;->c:Ljava/util/Map;

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities;->d:Ljava/util/Map;

    const-string v0, "entities-full.properties"

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities;->a:Ljava/util/Map;

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities;->e:Ljava/util/Map;

    sget-object v3, Lorg/jsoup/nodes/Entities;->h:[[Ljava/lang/Object;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    aget-object v0, v5, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    sget-object v7, Lorg/jsoup/nodes/Entities;->b:Ljava/util/Map;

    aget-object v0, v5, v2

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x3b

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->b()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->a()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    const/high16 v0, 0x1

    if-ge v6, v0, :cond_2

    int-to-char v0, v6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x26

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "&#x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "&#x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities;->b:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities;->e:Ljava/util/Map;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-class v1, Lorg/jsoup/nodes/Entities;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading entities resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Entities"

    invoke-direct {v1, v0, v2, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v2
.end method
