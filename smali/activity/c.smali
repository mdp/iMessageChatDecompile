.class final Lactivity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lactivity/ChatActivity;


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/c;->a:Lactivity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lactivity/c;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->h(Lactivity/ChatActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ChatActity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Item Press "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/l;

    invoke-virtual {v0}, Lactivity/l;->c()V

    invoke-virtual {v0}, Lactivity/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lactivity/c;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->i(Lactivity/ChatActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lactivity/ChatActivity;->b(Lactivity/ChatActivity;I)V

    :goto_0
    iget-object v0, p0, Lactivity/c;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->j(Lactivity/ChatActivity;)V

    iget-object v0, p0, Lactivity/c;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->k(Lactivity/ChatActivity;)Lactivity/m;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/m;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lactivity/c;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->i(Lactivity/ChatActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lactivity/ChatActivity;->b(Lactivity/ChatActivity;I)V

    goto :goto_0
.end method
