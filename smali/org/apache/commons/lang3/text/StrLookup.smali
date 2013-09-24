.class public abstract Lorg/apache/commons/lang3/text/StrLookup;
.super Ljava/lang/Object;


# static fields
.field private static final NONE_LOOKUP:Lorg/apache/commons/lang3/text/StrLookup;

.field private static final SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang3/text/StrLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang3/text/StrLookup;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    new-instance v0, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lorg/apache/commons/lang3/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang3/text/StrLookup;

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lorg/apache/commons/lang3/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang3/text/StrLookup;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;
    .locals 1

    new-instance v0, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lorg/apache/commons/lang3/text/StrLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method

.method public static systemPropertiesLookup()Lorg/apache/commons/lang3/text/StrLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/lang/String;
.end method
