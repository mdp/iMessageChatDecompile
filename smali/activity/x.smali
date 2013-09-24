.class final Lactivity/x;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lactivity/ContactListActivity;


# direct methods
.method constructor <init>(Lactivity/ContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/x;->a:Lactivity/ContactListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lactivity/x;->a:Lactivity/ContactListActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lactivity/ContactListActivity;->a(Lactivity/ContactListActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/x;->a:Lactivity/ContactListActivity;

    invoke-static {v0}, Lactivity/ContactListActivity;->a(Lactivity/ContactListActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1234568
        :pswitch_0
    .end packed-switch
.end method
