.class final Lactivity/bp;
.super Lactivity/ac;


# instance fields
.field final synthetic a:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;Landroid/content/Context;[ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lactivity/bp;->a:Lactivity/NewMessageActivity;

    invoke-direct {p0, p2, p3, p4}, Lactivity/ac;-><init>(Landroid/content/Context;[ILjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lactivity/bp;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->g(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lactivity/bp;->a:Lactivity/NewMessageActivity;

    invoke-static {v1}, Lactivity/NewMessageActivity;->g(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 5

    iget-object v0, p0, Lactivity/bp;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v0, Lcom/c/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, p2

    invoke-static {v1, v0}, Lcom/c/n;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Lactivity/bp;->a:Lactivity/NewMessageActivity;

    invoke-direct {v1, v2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/text/SpannableString;

    sget-object v0, Lcom/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    sget-object v0, Lcom/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lactivity/bp;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->g(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lactivity/bp;->a:Lactivity/NewMessageActivity;

    invoke-static {v1}, Lactivity/NewMessageActivity;->g(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method
