.class public final Lcom/umeng/a/m;
.super Ljava/lang/Object;


# static fields
.field static a:J

.field static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x48190800

    sput-wide v0, Lcom/umeng/a/m;->a:J

    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/a/m;->b:J

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobclick_agent_header_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    new-array v1, v1, [C

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/umeng/a/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-wide v6, Lcom/umeng/a/m;->b:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Lcom/umeng/a/m;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "cache_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string v2, "cache_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-static {p0}, Lcom/umeng/a/m;->d(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lcom/umeng/a/a/g;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0}, Lcom/umeng/a/a/g;->a(Lorg/json/JSONObject;)V

    invoke-static {p0, v0, p2}, Lcom/umeng/a/m;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "cache message error"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/umeng/a/m;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "cache message error"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobclick_agent_state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/umeng/a/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cache_version"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string v0, "MobclickAgent"

    const-string v1, "cache buffer success"

    invoke-static {v0, v1}, Lcom/umeng/common/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)[I
    .locals 6

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobclick_agent_online_setting_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const-string v2, "umeng_net_report_policy"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    const-string v2, "umeng_net_report_policy"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    const-string v2, "umeng_net_report_interval"

    sget v3, Lcom/umeng/a/j;->c:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    aput v0, v1, v5

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "umeng_local_report_policy"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    const-string v2, "umeng_local_report_interval"

    sget v3, Lcom/umeng/a/j;->c:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    aput v0, v1, v5

    goto :goto_0
.end method

.method static d(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobclick_agent_header_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/umeng/a/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobclick_agent_cached_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
