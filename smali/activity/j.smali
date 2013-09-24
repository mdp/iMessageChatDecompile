.class final Lactivity/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lactivity/ChatActivity;


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/j;->a:Lactivity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    if-lez p3, :cond_0

    iget-object v0, p0, Lactivity/j;->a:Lactivity/ChatActivity;

    invoke-static {v0, p2}, Lactivity/ChatActivity;->a(Lactivity/ChatActivity;I)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
