.class final Lactivity/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/bx;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lactivity/bx;I)V
    .locals 0

    iput-object p1, p0, Lactivity/ca;->a:Lactivity/bx;

    iput p2, p0, Lactivity/ca;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lactivity/ca;->a:Lactivity/bx;

    invoke-static {v0}, Lactivity/bx;->e(Lactivity/bx;)Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lactivity/ca;->b:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    const-string v0, ""

    sput-object v0, Le/c;->m:Ljava/lang/String;

    iget-object v0, p0, Lactivity/ca;->a:Lactivity/bx;

    invoke-virtual {v0}, Lactivity/bx;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
