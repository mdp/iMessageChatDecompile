.class final Lactivity/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/ChatActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 1

    iput-object p1, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/f;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lactivity/f;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/f;->b:Z

    iget-object v0, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->b(Lactivity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    iget-object v0, v0, Lactivity/ChatActivity;->i:Ljava/lang/String;

    iget-object v1, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    iget-object v1, v1, Lactivity/ChatActivity;->c:Lcom/a/a;

    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Lcom/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    invoke-static {v1}, Lactivity/ChatActivity;->c(Lactivity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {}, Lcom/c/h;->i()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    invoke-static {v1}, Lactivity/ChatActivity;->c(Lactivity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "& more"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/f;->b:Z

    iget-object v0, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->b(Lactivity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    const v2, 0x7f070058

    invoke-virtual {v1, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    iget-object v0, v0, Lactivity/ChatActivity;->i:Ljava/lang/String;

    iget-object v1, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    iget-object v1, v1, Lactivity/ChatActivity;->c:Lcom/a/a;

    const-string v2, "\n"

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Lcom/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/f;->a:Lactivity/ChatActivity;

    invoke-static {v1}, Lactivity/ChatActivity;->c(Lactivity/ChatActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
