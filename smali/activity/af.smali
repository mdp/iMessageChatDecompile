.class public final Lactivity/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/ac;

.field private b:I


# direct methods
.method public constructor <init>(Lactivity/ac;I)V
    .locals 0

    iput-object p1, p0, Lactivity/af;->a:Lactivity/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lactivity/af;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lactivity/af;->b:I

    iget-object v2, p0, Lactivity/af;->a:Lactivity/ac;

    invoke-static {v2}, Lactivity/ac;->a(Lactivity/ac;)[Landroid/widget/ImageView;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lactivity/af;->a:Lactivity/ac;

    iget v2, p0, Lactivity/af;->b:I

    invoke-static {v0, v2}, Lactivity/ac;->a(Lactivity/ac;I)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lactivity/af;->a:Lactivity/ac;

    invoke-static {v2}, Lactivity/ac;->a(Lactivity/ac;)[Landroid/widget/ImageView;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lactivity/af;->a:Lactivity/ac;

    invoke-static {v0}, Lactivity/ac;->b(Lactivity/ac;)[Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lactivity/af;->b:I

    aget-object v0, v0, v1

    const v1, 0x7f0203a2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/af;->a:Lactivity/ac;

    invoke-static {v0}, Lactivity/ac;->a(Lactivity/ac;)[Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lactivity/af;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lactivity/af;->a:Lactivity/ac;

    iget v1, p0, Lactivity/af;->b:I

    invoke-static {v0, v1}, Lactivity/ac;->b(Lactivity/ac;I)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lactivity/af;->a:Lactivity/ac;

    invoke-static {v2}, Lactivity/ac;->a(Lactivity/ac;)[Landroid/widget/ImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lactivity/af;->a:Lactivity/ac;

    invoke-static {v2}, Lactivity/ac;->b(Lactivity/ac;)[Landroid/widget/LinearLayout;

    move-result-object v2

    aget-object v2, v2, v0

    const v3, 0x7f0203a1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lactivity/af;->a:Lactivity/ac;

    invoke-virtual {v0}, Lactivity/ac;->a()V

    goto :goto_1
.end method
