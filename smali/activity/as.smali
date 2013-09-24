.class final Lactivity/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/FriendListActivity;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    const-class v2, Lactivity/GetMsgService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    invoke-virtual {v1, v0}, Lactivity/FriendListActivity;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->g(Lactivity/FriendListActivity;)V

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->k(Lactivity/FriendListActivity;)V

    invoke-static {}, Lcom/a/d;->a()V

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0, v3}, Lactivity/MyApplication;->a(Z)V

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/i;->d()V

    const-string v0, "FriendActivity"

    const-string v1, "LogOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v3}, Lcom/d/a;->b(Z)V

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->f:Lcom/a/f;

    iget-object v1, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v3}, Lcom/d/a;->c(Z)V

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->g()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "status"

    const-string v2, "EXIT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lactivity/FriendListActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lactivity/as;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->finish()V

    return-void
.end method
