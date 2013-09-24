.class final Lactivity/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lactivity/cp;


# direct methods
.method constructor <init>(Lactivity/cp;)V
    .locals 0

    iput-object p1, p0, Lactivity/cr;->a:Lactivity/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lactivity/cr;->a:Lactivity/cp;

    invoke-static {v0}, Lactivity/cp;->a(Lactivity/cp;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/cr;->a:Lactivity/cp;

    invoke-static {v1}, Lactivity/cp;->b(Lactivity/cp;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lactivity/cr;->a:Lactivity/cp;

    invoke-virtual {v1, v0}, Lactivity/cp;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lactivity/cr;->a:Lactivity/cp;

    invoke-virtual {v1, v0}, Lactivity/cp;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
