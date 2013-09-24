.class public Lactivity/MyApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Lcom/b/i;

.field private b:Lcom/b/d;

.field private c:Lcom/b/m;

.field private d:Lcom/b/ad;

.field private e:Landroid/app/NotificationManager;

.field private f:I

.field private g:Lcom/c/l;

.field private h:Lcom/a/g;

.field private i:Lcom/a/d;

.field private j:Lactivity/FriendListActivity;

.field private k:Z

.field private l:Lcom/a/a;

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput v0, p0, Lactivity/MyApplication;->f:I

    iput-boolean v0, p0, Lactivity/MyApplication;->k:Z

    iput-boolean v0, p0, Lactivity/MyApplication;->m:Z

    const/4 v0, -0x1

    iput v0, p0, Lactivity/MyApplication;->n:I

    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lactivity/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lactivity/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->c:Lcom/b/m;

    invoke-virtual {v0}, Lcom/b/m;->a()V

    iget-object v0, p0, Lactivity/MyApplication;->b:Lcom/b/d;

    invoke-virtual {v0}, Lcom/b/d;->d()V

    iget-object v0, p0, Lactivity/MyApplication;->d:Lcom/b/ad;

    invoke-virtual {v0}, Lcom/b/ad;->b()V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lactivity/MyApplication;->n:I

    return-void
.end method

.method public final a(Lactivity/FriendListActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/MyApplication;->j:Lactivity/FriendListActivity;

    return-void
.end method

.method public final a(Landroid/app/NotificationManager;)V
    .locals 0

    iput-object p1, p0, Lactivity/MyApplication;->e:Landroid/app/NotificationManager;

    return-void
.end method

.method public final a(Lcom/a/a;)V
    .locals 0

    iput-object p1, p0, Lactivity/MyApplication;->l:Lcom/a/a;

    return-void
.end method

.method public final a(Lcom/a/d;)V
    .locals 0

    iput-object p1, p0, Lactivity/MyApplication;->i:Lcom/a/d;

    return-void
.end method

.method public final a(Lcom/a/g;)V
    .locals 0

    iput-object p1, p0, Lactivity/MyApplication;->h:Lcom/a/g;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lactivity/MyApplication;->k:Z

    return-void
.end method

.method public final b()Lcom/b/i;
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->a:Lcom/b/i;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lactivity/MyApplication;->f:I

    sub-int/2addr v0, p1

    iput v0, p0, Lactivity/MyApplication;->f:I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lactivity/MyApplication;->m:Z

    return-void
.end method

.method public final c()Lcom/b/ad;
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->d:Lcom/b/ad;

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    iget v0, p0, Lactivity/MyApplication;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lactivity/MyApplication;->f:I

    return-void
.end method

.method public final d()Lcom/b/d;
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->b:Lcom/b/d;

    return-object v0
.end method

.method public final e()Lcom/b/m;
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->c:Lcom/b/m;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lactivity/MyApplication;->k:Z

    return v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lactivity/MyApplication;->f:I

    return-void
.end method

.method public final h()Lcom/c/l;
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->g:Lcom/c/l;

    return-object v0
.end method

.method public final i()Lcom/a/g;
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->h:Lcom/a/g;

    return-object v0
.end method

.method public final j()Lcom/a/d;
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->i:Lcom/a/d;

    return-object v0
.end method

.method public final k()Lcom/a/a;
    .locals 1

    iget-object v0, p0, Lactivity/MyApplication;->l:Lcom/a/a;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lactivity/MyApplication;->n:I

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lactivity/MyApplication;->f:I

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lactivity/MyApplication;->m:Z

    return v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Lcom/d/a;

    const-string v1, "saveUser"

    invoke-direct {v0, p0, v1}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f07000b

    :try_start_0
    invoke-virtual {p0, v0}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a;->a:Ljava/lang/String;

    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/c/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/c/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a;->a:Ljava/lang/String;

    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/c/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/c/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/c/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v0, "FileDir"

    sget-object v1, Lcom/c/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/b/i;

    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lactivity/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lactivity/MyApplication;->a:Lcom/b/i;

    new-instance v0, Lcom/b/d;

    iget-object v1, p0, Lactivity/MyApplication;->a:Lcom/b/i;

    invoke-direct {v0, p0, v1}, Lcom/b/d;-><init>(Landroid/content/Context;Lcom/b/i;)V

    iput-object v0, p0, Lactivity/MyApplication;->b:Lcom/b/d;

    new-instance v0, Lcom/b/ad;

    invoke-direct {v0, p0}, Lcom/b/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/MyApplication;->d:Lcom/b/ad;

    new-instance v0, Lcom/b/m;

    iget-object v1, p0, Lactivity/MyApplication;->a:Lcom/b/i;

    iget-object v2, p0, Lactivity/MyApplication;->d:Lcom/b/ad;

    invoke-direct {v0, p0, v1, v2}, Lcom/b/m;-><init>(Landroid/content/Context;Lcom/b/i;Lcom/b/ad;)V

    iput-object v0, p0, Lactivity/MyApplication;->c:Lcom/b/m;

    new-instance v0, Lcom/c/l;

    invoke-direct {v0}, Lcom/c/l;-><init>()V

    iput-object v0, p0, Lactivity/MyApplication;->g:Lcom/c/l;

    invoke-static {p0}, Lcom/c/o;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/MyApplication;->k:Z

    invoke-direct {p0}, Lactivity/MyApplication;->o()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a;->e:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/GetMsgService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lactivity/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
