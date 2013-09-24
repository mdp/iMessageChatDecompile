.class public final Lcom/umeng/a/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/umeng/a/b/a;

.field private g:Lcom/umeng/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "last_config_time"

    iput-object v0, p0, Lcom/umeng/a/b/b;->a:Ljava/lang/String;

    const-string v0, "report_policy"

    iput-object v0, p0, Lcom/umeng/a/b/b;->b:Ljava/lang/String;

    const-string v0, "online_config"

    iput-object v0, p0, Lcom/umeng/a/b/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/umeng/a/b/b;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/umeng/a/b/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/umeng/a/b/b;->f:Lcom/umeng/a/b/a;

    iput-object v1, p0, Lcom/umeng/a/b/b;->g:Lcom/umeng/a/b/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/a/b/b;->g:Lcom/umeng/a/b/c;

    return-void
.end method
