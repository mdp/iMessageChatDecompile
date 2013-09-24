.class final Lactivity/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lactivity/ac;


# direct methods
.method constructor <init>(Lactivity/ac;)V
    .locals 0

    iput-object p1, p0, Lactivity/ae;->a:Lactivity/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lactivity/ae;->a:Lactivity/ac;

    iget-object v1, p0, Lactivity/ae;->a:Lactivity/ac;

    invoke-static {v1}, Lactivity/ac;->c(Lactivity/ac;)I

    move-result v1

    iget-object v2, p0, Lactivity/ae;->a:Lactivity/ac;

    invoke-static {v2}, Lactivity/ac;->d(Lactivity/ac;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    mul-int/lit8 v2, v2, 0x3

    long-to-int v3, p4

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lactivity/ac;->a(II)V

    return-void
.end method
