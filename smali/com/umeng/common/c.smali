.class public Lcom/umeng/common/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/umeng/common/c;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Class;

.field private static e:Ljava/lang/Class;

.field private static f:Ljava/lang/Class;

.field private static g:Ljava/lang/Class;

.field private static h:Ljava/lang/Class;

.field private static i:Ljava/lang/Class;

.field private static j:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/umeng/common/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/c;->a:Ljava/lang/String;

    sput-object v1, Lcom/umeng/common/c;->b:Lcom/umeng/common/c;

    sput-object v1, Lcom/umeng/common/c;->c:Ljava/lang/String;

    sput-object v1, Lcom/umeng/common/c;->d:Ljava/lang/Class;

    sput-object v1, Lcom/umeng/common/c;->e:Ljava/lang/Class;

    sput-object v1, Lcom/umeng/common/c;->f:Ljava/lang/Class;

    sput-object v1, Lcom/umeng/common/c;->g:Ljava/lang/Class;

    sput-object v1, Lcom/umeng/common/c;->h:Ljava/lang/Class;

    sput-object v1, Lcom/umeng/common/c;->i:Ljava/lang/Class;

    sput-object v1, Lcom/umeng/common/c;->j:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/c;->e:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/c;->f:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/c;->d:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$anim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/c;->g:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/c;->h:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/c;->i:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/c;->j:Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception v0

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_5
    move-exception v0

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_6
    move-exception v0

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 4

    if-nez p0, :cond_0

    sget-object v0, Lcom/umeng/common/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRes(null,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResClass is not initialized. Please make sure you have added neccessary resources. Also make sure you have "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/common/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$* configured in obfuscation. field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRes("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    const-string v2, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. "

    invoke-static {v1, v2}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/umeng/common/c;->d:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/common/c;
    .locals 3

    const-class v1, Lcom/umeng/common/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/common/c;->b:Lcom/umeng/common/c;

    if-nez v0, :cond_0

    sget-object v0, Lcom/umeng/common/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/common/c;->c:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/umeng/common/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/umeng/common/c;

    sget-object v2, Lcom/umeng/common/c;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/umeng/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/common/c;->b:Lcom/umeng/common/c;

    :cond_0
    sget-object v0, Lcom/umeng/common/c;->b:Lcom/umeng/common/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/umeng/common/c;->e:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/umeng/common/c;->f:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/umeng/common/c;->i:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/umeng/common/c;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
