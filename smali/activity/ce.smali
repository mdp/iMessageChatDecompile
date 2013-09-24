.class final Lactivity/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lactivity/cc;


# direct methods
.method constructor <init>(Lactivity/cc;)V
    .locals 0

    iput-object p1, p0, Lactivity/ce;->a:Lactivity/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lactivity/ce;->a:Lactivity/cc;

    invoke-static {v0}, Lactivity/cc;->f(Lactivity/cc;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lactivity/ce;->a:Lactivity/cc;

    invoke-static {v0}, Lactivity/cc;->a(Lactivity/cc;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lactivity/ce;->a:Lactivity/cc;

    invoke-static {v1}, Lactivity/cc;->f(Lactivity/cc;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/cg;

    invoke-virtual {v0}, Lactivity/cg;->h()V

    iget-object v0, p0, Lactivity/ce;->a:Lactivity/cc;

    invoke-static {v0, v2}, Lactivity/cc;->a(Lactivity/cc;I)V

    iget-object v0, p0, Lactivity/ce;->a:Lactivity/cc;

    invoke-virtual {v0}, Lactivity/cc;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
