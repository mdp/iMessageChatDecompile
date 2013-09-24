.class final Lcom/umeng/a/c;
.super Lcom/umeng/a/f;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:I

.field private final o:I

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:J

.field private final t:I

.field private final u:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/umeng/a/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/a/c;->n:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/a/c;->o:I

    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/a/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/a/c;->b:Ljava/lang/String;

    const-string v0, "start_millis"

    iput-object v0, p0, Lcom/umeng/a/c;->p:Ljava/lang/String;

    const-string v0, "end_millis"

    iput-object v0, p0, Lcom/umeng/a/c;->q:Ljava/lang/String;

    const-string v0, "last_fetch_location_time"

    iput-object v0, p0, Lcom/umeng/a/c;->r:Ljava/lang/String;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/umeng/a/c;->s:J

    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/a/c;->t:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/a/c;->u:I

    return-void
.end method

.method static synthetic a(Lcom/umeng/a/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/umeng/a/c;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    if-gt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/a/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/umeng/a/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized c(Landroid/content/Context;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/a/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "end_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lcom/umeng/a/j;->a:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/umeng/a/c;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/umeng/common/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/common/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/common/util/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/umeng/a/a/h;

    invoke-direct {v4, p1, v0}, Lcom/umeng/a/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/a/a/m;->a(Landroid/content/Context;)Lcom/umeng/a/a/m;

    move-result-object v5

    iget-object v6, p0, Lcom/umeng/a/c;->c:Lcom/umeng/a/e;

    invoke-virtual {v6, v4}, Lcom/umeng/a/e;->a(Lcom/umeng/a/a/h;)V

    iget-object v4, p0, Lcom/umeng/a/c;->c:Lcom/umeng/a/e;

    invoke-virtual {v4, v5}, Lcom/umeng/a/e;->a(Lcom/umeng/a/a/m;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "session_id"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "start_millis"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "end_millis"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/umeng/a/c;->a(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/umeng/a/c;->m:Ljava/lang/String;

    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start new session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/a/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/umeng/a/c;->k:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "start_millis"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "end_millis"

    const-wide/16 v3, -0x1

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "session_id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/c;->m:Ljava/lang/String;

    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extend current session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/a/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized d(Landroid/content/Context;)V
    .locals 14

    const-wide/16 v4, -0x1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/a/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "start_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const-string v0, "MobclickAgent"

    const-string v2, "onEndSession called before onStartSession"

    invoke-static {v0, v2}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean v0, Lcom/umeng/a/j;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "last_fetch_location_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    :cond_1
    :goto_2
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/umeng/a/c;->a(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/umeng/a/c;->l:Ljava/lang/String;

    sub-long v2, v4, v2

    const-string v0, "duration"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    sget-boolean v0, Lcom/umeng/a/j;->e:Z

    if-eqz v0, :cond_4

    const-string v0, "activities"

    const-string v10, ""

    invoke-interface {v1, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "[%s,%d]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "activities"

    invoke-interface {v9, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v6, "activities"

    invoke-interface {v9, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const-string v0, "duration"

    add-long/2addr v2, v7

    invoke-interface {v9, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "terminate_time"

    invoke-interface {v9, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "start_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v9, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "end_millis"

    invoke-interface {v9, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/umeng/a/a/o;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "last_fetch_location_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/a/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MobclickAgent"

    const-string v1, "onPause() called without context from corresponding onResume()"

    invoke-static {v0, v1}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/umeng/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/umeng/a/d;-><init>(Lcom/umeng/a/c;Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/umeng/a/d;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "MobclickAgent"

    const-string v2, "invalid params in onKVEventEnd"

    invoke-static {v1, v2}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "MobclickAgent"

    const-string v2, "map is null or empty in onEvent"

    invoke-static {v1, v2}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/a/c;->m:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, "MobclickAgent"

    const-string v2, "can\'t call onEvent before session is initialized"

    invoke-static {v1, v2}, Lcom/umeng/common/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MobclickAgent"

    const-string v3, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v2, v3, v1}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v6, 0x80

    invoke-static {v1, v6}, Lcom/umeng/a/c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v6, 0x100

    invoke-static {v1, v6}, Lcom/umeng/a/c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_6
    const-string v1, "MobclickAgent"

    const-string v4, "invalid key-<%s> or value-<%s> "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v4

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/umeng/a/c;->c:Lcom/umeng/a/e;

    iget-object v2, p0, Lcom/umeng/a/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Lcom/umeng/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/umeng/a/f;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/c;->c:Lcom/umeng/a/e;

    new-instance v1, Lcom/umeng/a/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/a/a/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/umeng/a/e;->a(Lcom/umeng/a/a/d;)V

    invoke-direct {p0, p1}, Lcom/umeng/a/c;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method final b(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/umeng/a/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/umeng/a/d;-><init>(Lcom/umeng/a/c;Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/umeng/a/d;->start()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/c;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
