.class final Lactivity/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/LoginActivity;


# direct methods
.method constructor <init>(Lactivity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bf;->a:Lactivity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/bf;->a:Lactivity/LoginActivity;

    invoke-virtual {v1, v0}, Lactivity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
