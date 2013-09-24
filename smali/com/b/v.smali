.class public final Lcom/b/v;
.super Ljava/lang/Thread;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field protected a:Lcom/a/a;

.field private b:Lcom/a/f;

.field private d:Landroid/content/Context;

.field private e:Lactivity/MyApplication;

.field private f:Lcom/d/a;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/v;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/b/v;->h:Z

    iput-object p2, p0, Lcom/b/v;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/b/v;->d:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/b/v;->h:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ld/w;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ld/w;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/b/v;->f:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/b/v;->b:Lcom/a/f;

    invoke-virtual {v2, v1, p1}, Lcom/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/i;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/c/i;->d:I

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/b/v;->b:Lcom/a/f;

    invoke-virtual {v0, v1, v2}, Ld/w;->b(Ljava/lang/String;Lcom/a/f;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 12

    const/4 v11, 0x1

    const/high16 v10, 0x42c8

    const/high16 v9, 0x3f80

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/b/v;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/b/v;->c:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/b/v;->c:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    if-eqz v3, :cond_c

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    move v2, v0

    :goto_1
    if-eqz v7, :cond_b

    move v0, v6

    :cond_0
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/b/v;->h:Z

    if-eqz v1, :cond_5

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_3
    if-eqz v3, :cond_4

    :cond_2
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/b/v;->h:Z

    if-eqz v1, :cond_8

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/b/v;->g:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    new-instance v5, Lactivity/z;

    invoke-direct {v5}, Lactivity/z;-><init>()V

    invoke-virtual {v5, v1}, Lactivity/z;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Lactivity/z;->d()V

    invoke-virtual {v5, v4}, Lactivity/z;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/v;->a:Lcom/a/a;

    if-eqz v4, :cond_7

    invoke-direct {p0, v1}, Lcom/b/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/b/v;->a:Lcom/a/a;

    invoke-virtual {v1, v5}, Lcom/a/a;->a(Lactivity/z;)V

    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.way.readcellphone"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    int-to-float v4, v0

    mul-float/2addr v4, v9

    int-to-float v5, v2

    div-float/2addr v4, v5

    mul-float/2addr v4, v10

    float-to-int v4, v4

    const-string v5, "message"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/b/v;->d:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/b/v;->e:Lactivity/MyApplication;

    invoke-virtual {v1, v4}, Lactivity/MyApplication;->a(I)V

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/b/v;->g:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    new-instance v5, Lactivity/z;

    invoke-direct {v5}, Lactivity/z;-><init>()V

    invoke-virtual {v5, v1}, Lactivity/z;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Lactivity/z;->d()V

    invoke-virtual {v5, v4}, Lactivity/z;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/v;->a:Lcom/a/a;

    if-eqz v4, :cond_a

    invoke-direct {p0, v1}, Lcom/b/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/b/v;->a:Lcom/a/a;

    invoke-virtual {v1, v5}, Lcom/a/a;->a(Lactivity/z;)V

    :cond_a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.way.readcellphone"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    int-to-float v4, v0

    mul-float/2addr v4, v9

    int-to-float v5, v2

    div-float/2addr v4, v5

    mul-float/2addr v4, v10

    float-to-int v4, v4

    const-string v5, "message"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/b/v;->d:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/b/v;->e:Lactivity/MyApplication;

    invoke-virtual {v1, v4}, Lactivity/MyApplication;->a(I)V

    goto/16 :goto_4

    :cond_b
    move v0, v6

    goto/16 :goto_3

    :cond_c
    move v2, v0

    goto/16 :goto_1

    :cond_d
    move v0, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/v;->h:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 3

    new-instance v0, Lcom/d/a;

    iget-object v1, p0, Lcom/b/v;->d:Landroid/content/Context;

    const-string v2, "saveUser"

    invoke-direct {v0, v1, v2}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/v;->f:Lcom/d/a;

    iget-object v0, p0, Lcom/b/v;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lcom/b/v;->e:Lactivity/MyApplication;

    const-string v0, "country Number"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/v;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/a/f;

    iget-object v1, p0, Lcom/b/v;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/v;->b:Lcom/a/f;

    new-instance v0, Lcom/a/a;

    iget-object v1, p0, Lcom/b/v;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/v;->a:Lcom/a/a;

    invoke-direct {p0}, Lcom/b/v;->b()V

    iget-object v0, p0, Lcom/b/v;->a:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->b()V

    iget-object v0, p0, Lcom/b/v;->b:Lcom/a/f;

    invoke-virtual {v0}, Lcom/a/f;->a()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.way.readcellphonesuccess"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/b/v;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/b/v;->e:Lactivity/MyApplication;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->a(I)V

    return-void
.end method
