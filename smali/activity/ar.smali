.class final Lactivity/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/FriendListActivity;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/ar;->a:Lactivity/FriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lactivity/ar;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->d:Lcom/a/d;

    iget-object v1, p0, Lactivity/ar;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ar;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->b()V

    return-void
.end method
