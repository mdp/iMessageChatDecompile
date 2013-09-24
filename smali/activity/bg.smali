.class final Lactivity/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/LoginActivity;


# direct methods
.method constructor <init>(Lactivity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bg;->a:Lactivity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lactivity/bg;->a:Lactivity/LoginActivity;

    iget-object v0, v0, Lactivity/LoginActivity;->b:Landroid/content/Context;

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lactivity/bg;->a:Lactivity/LoginActivity;

    invoke-virtual {v0, v1}, Lactivity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
