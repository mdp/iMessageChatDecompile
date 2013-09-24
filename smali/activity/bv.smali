.class final Lactivity/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lactivity/ReadFromCellphoneActivity;


# direct methods
.method constructor <init>(Lactivity/ReadFromCellphoneActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bv;->a:Lactivity/ReadFromCellphoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    const-string v0, "ReadFromCellphone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/bv;->a:Lactivity/ReadFromCellphoneActivity;

    invoke-static {v2}, Lactivity/ReadFromCellphoneActivity;->a(Lactivity/ReadFromCellphoneActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/bv;->a:Lactivity/ReadFromCellphoneActivity;

    invoke-static {v0}, Lactivity/ReadFromCellphoneActivity;->a(Lactivity/ReadFromCellphoneActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    sput v0, Lcom/c/a;->g:I

    iget-object v0, p0, Lactivity/bv;->a:Lactivity/ReadFromCellphoneActivity;

    iget-object v1, p0, Lactivity/bv;->a:Lactivity/ReadFromCellphoneActivity;

    invoke-static {v1}, Lactivity/ReadFromCellphoneActivity;->b(Lactivity/ReadFromCellphoneActivity;)[Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/c/a;->g:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lactivity/ReadFromCellphoneActivity;->a(Lactivity/ReadFromCellphoneActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/bv;->a:Lactivity/ReadFromCellphoneActivity;

    iget-object v1, p0, Lactivity/bv;->a:Lactivity/ReadFromCellphoneActivity;

    invoke-static {v1}, Lactivity/ReadFromCellphoneActivity;->c(Lactivity/ReadFromCellphoneActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lactivity/bv;->a:Lactivity/ReadFromCellphoneActivity;

    invoke-static {v3}, Lactivity/ReadFromCellphoneActivity;->c(Lactivity/ReadFromCellphoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lactivity/ReadFromCellphoneActivity;->a(Lactivity/ReadFromCellphoneActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
