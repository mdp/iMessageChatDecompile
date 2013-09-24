.class final Lactivity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lactivity/ChatActivity;


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/b;->a:Lactivity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lactivity/b;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->g(Lactivity/ChatActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lactivity/b;->a:Lactivity/ChatActivity;

    invoke-virtual {v0}, Lactivity/ChatActivity;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lactivity/b;->a:Lactivity/ChatActivity;

    invoke-virtual {v0}, Lactivity/ChatActivity;->a_()V

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
