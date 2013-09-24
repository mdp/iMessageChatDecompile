.class final Lactivity/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bj;->a:Lactivity/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lactivity/bj;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->f()V

    iget-object v0, p0, Lactivity/bj;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->d(Lactivity/NewMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lactivity/bj;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->d(Lactivity/NewMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
