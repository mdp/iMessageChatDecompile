.class final Lactivity/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/LoginActivity;


# direct methods
.method constructor <init>(Lactivity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bb;->a:Lactivity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/bb;->a:Lactivity/LoginActivity;

    invoke-static {v1}, Lactivity/LoginActivity;->d(Lactivity/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/bb;->a:Lactivity/LoginActivity;

    iget-object v1, v1, Lactivity/LoginActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lactivity/bb;->a:Lactivity/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;Z)V

    return-void
.end method
