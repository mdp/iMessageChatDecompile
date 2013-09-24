.class final Lactivity/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bm;->a:Lactivity/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lactivity/bm;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->g(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lactivity/bm;->a:Lactivity/NewMessageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lactivity/NewMessageActivity;->b(Lactivity/NewMessageActivity;Z)V

    iget-object v0, p0, Lactivity/bm;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lactivity/bm;->a:Lactivity/NewMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lactivity/NewMessageActivity;->b(Lactivity/NewMessageActivity;Z)V

    iget-object v0, p0, Lactivity/bm;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->e()V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
