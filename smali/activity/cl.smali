.class final Lactivity/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lactivity/RegisterActivity;


# direct methods
.method constructor <init>(Lactivity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/cl;->a:Lactivity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    iget-object v0, p0, Lactivity/cl;->a:Lactivity/RegisterActivity;

    iget-object v1, p0, Lactivity/cl;->a:Lactivity/RegisterActivity;

    invoke-static {v1}, Lactivity/RegisterActivity;->a(Lactivity/RegisterActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lactivity/RegisterActivity;->a(Lactivity/RegisterActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
