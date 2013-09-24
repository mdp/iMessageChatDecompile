.class public final La/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/Vector;
    .locals 8

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v4, La/a;

    invoke-direct {v4}, La/a;-><init>()V

    const/16 v1, 0x5010

    new-array v5, v1, [B

    :cond_0
    invoke-virtual {v4}, La/a;->a()Z

    move v1, v2

    move v3, v2

    :goto_1
    const/high16 v6, 0x10

    if-lt v3, v6, :cond_2

    :cond_1
    invoke-virtual {v4}, La/a;->b()Z

    if-gtz v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-virtual {v4}, La/a;->c()Ljava/util/Vector;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const/16 v7, 0x1000

    :try_start_2
    invoke-virtual {v0, v5, v6, v7}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    :goto_3
    if-lez v1, :cond_1

    add-int/2addr v3, v1

    new-instance v6, Lcom/c/b;

    invoke-direct {v6, v5, v1}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v4, v6}, La/a;->a(Lcom/c/b;)Z

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Lcom/c/b;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x5010

    new-array v3, v1, [B

    new-instance v4, La/b;

    invoke-direct {v4}, La/b;-><init>()V

    invoke-virtual {v4}, La/b;->a()Z

    :goto_1
    const/4 v1, 0x0

    const/16 v5, 0x4000

    :try_start_1
    invoke-virtual {v0, v3, v1, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    if-lez v1, :cond_0

    new-instance v5, Lcom/c/b;

    invoke-direct {v5, v3, v1}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v4, v5}, La/b;->a(Lcom/c/b;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, La/b;->b()Z

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-virtual {v4}, La/b;->c()Lcom/c/b;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
