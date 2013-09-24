.class final Lcom/umeng/common/net/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/common/net/g;->f:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/common/net/g;->g:Z

    iput-object p1, p0, Lcom/umeng/common/net/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/umeng/common/net/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/common/net/g;->c:Ljava/lang/String;

    return-void
.end method
