.class final Lactivity/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/p;

.field private final synthetic b:Lactivity/o;


# direct methods
.method constructor <init>(Lactivity/p;Lactivity/o;)V
    .locals 0

    iput-object p1, p0, Lactivity/s;->a:Lactivity/p;

    iput-object p2, p0, Lactivity/s;->b:Lactivity/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    iget-object v0, p0, Lactivity/s;->b:Lactivity/o;

    invoke-virtual {v0}, Lactivity/o;->l()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Touch msg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/s;->b:Lactivity/o;

    invoke-virtual {v2}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/s;->b:Lactivity/o;

    invoke-virtual {v0}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STARTFILE:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ":ENDFILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v3, :cond_1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lactivity/s;->a:Lactivity/p;

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lactivity/p;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
