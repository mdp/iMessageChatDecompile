.class public final Lcom/c/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    array-length v3, p1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
