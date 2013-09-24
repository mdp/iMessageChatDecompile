.class final Lactivity/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/FriendListActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/aq;->a:Lactivity/FriendListActivity;

    iput-object p2, p0, Lactivity/aq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lactivity/aq;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->c:Lcom/a/a;

    iget-object v1, p0, Lactivity/aq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/aq;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->c()V

    iget-object v0, p0, Lactivity/aq;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->b()V

    return-void
.end method
