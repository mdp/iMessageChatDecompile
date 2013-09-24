.class Lorg/apache/commons/lang3/StringUtils$InitStripAccents;
.super Ljava/lang/Object;


# static fields
.field private static final java6Exception:Ljava/lang/Throwable;

.field private static final java6NormalizeMethod:Ljava/lang/reflect/Method;

.field private static final java6NormalizerFormNFD:Ljava/lang/Object;

.field private static final java6Pattern:Ljava/util/regex/Pattern;

.field private static final sunDecomposeMethod:Ljava/lang/reflect/Method;

.field private static final sunException:Ljava/lang/Throwable;

.field private static final sunPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    sput-object v1, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "java.text.Normalizer$Form"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "NFD"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "java.text.Normalizer"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "normalize"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move-object v3, v1

    move-object v4, v2

    move-object v1, v0

    move-object v2, v0

    :goto_0
    sput-object v1, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    sput-object v4, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    sput-object v3, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    sput-object v2, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v2

    move-object v3, v0

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v4, "sun.text.Normalizer"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "decompose"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    move-object v4, v3

    move-object v3, v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method
