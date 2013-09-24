.class final Lactivity/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bl;->a:Lactivity/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lactivity/bl;->a:Lactivity/NewMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;Z)V

    iget-object v0, p0, Lactivity/bl;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->e()V

    iget-object v0, p0, Lactivity/bl;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->f()V

    iget-object v0, p0, Lactivity/bl;->a:Lactivity/NewMessageActivity;

    iget-object v1, p0, Lactivity/bl;->a:Lactivity/NewMessageActivity;

    invoke-static {v1}, Lactivity/NewMessageActivity;->e(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/bl;->a:Lactivity/NewMessageActivity;

    iget-object v1, p0, Lactivity/bl;->a:Lactivity/NewMessageActivity;

    invoke-static {v1}, Lactivity/NewMessageActivity;->f(Lactivity/NewMessageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/NewMessageActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
