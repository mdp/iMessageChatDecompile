.class final Lactivity/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/ai;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lactivity/ai;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/al;->a:Lactivity/ai;

    iput-object p2, p0, Lactivity/al;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/al;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/al;->a:Lactivity/ai;

    invoke-static {v1}, Lactivity/ai;->a(Lactivity/ai;)Lactivity/FriendListActivity;

    move-result-object v1

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
