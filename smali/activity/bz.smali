.class final Lactivity/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/bx;


# direct methods
.method constructor <init>(Lactivity/bx;)V
    .locals 0

    iput-object p1, p0, Lactivity/bz;->a:Lactivity/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lactivity/bz;->a:Lactivity/bx;

    invoke-static {v0}, Lactivity/bx;->d(Lactivity/bx;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/bz;->a:Lactivity/bx;

    invoke-static {v0}, Lactivity/bx;->d(Lactivity/bx;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    const-string v3, "Click"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lactivity/bz;->a:Lactivity/bx;

    invoke-static {v1}, Lactivity/bx;->d(Lactivity/bx;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
