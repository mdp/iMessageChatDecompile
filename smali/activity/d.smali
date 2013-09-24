.class final Lactivity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/ChatActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lactivity/ChatActivity;I)V
    .locals 0

    iput-object p1, p0, Lactivity/d;->a:Lactivity/ChatActivity;

    iput p2, p0, Lactivity/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lactivity/d;->a:Lactivity/ChatActivity;

    iget-object v0, v0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v1, p0, Lactivity/d;->a:Lactivity/ChatActivity;

    invoke-static {v1}, Lactivity/ChatActivity;->a(Lactivity/ChatActivity;)Lcom/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lactivity/d;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/d;->b(Ljava/lang/String;J)Lactivity/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lactivity/o;->h()V

    invoke-virtual {v0}, Lactivity/o;->j()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lactivity/o;->a(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lactivity/o;->d(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lactivity/o;->e(I)V

    iget-object v1, p0, Lactivity/d;->a:Lactivity/ChatActivity;

    invoke-virtual {v1, v0}, Lactivity/ChatActivity;->a(Lactivity/o;)V

    const-string v1, "setRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lactivity/o;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lactivity/d;->a:Lactivity/ChatActivity;

    iget-object v1, v1, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v2, p0, Lactivity/d;->a:Lactivity/ChatActivity;

    invoke-static {v2}, Lactivity/ChatActivity;->a(Lactivity/ChatActivity;)Lcom/c/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/a/d;->a(Ljava/lang/String;Lactivity/o;)V

    iget-object v0, p0, Lactivity/d;->a:Lactivity/ChatActivity;

    invoke-virtual {v0}, Lactivity/ChatActivity;->e()V

    :cond_0
    return-void
.end method
