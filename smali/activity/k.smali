.class final Lactivity/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lactivity/ChatActivity;


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/k;->a:Lactivity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lactivity/k;->a:Lactivity/ChatActivity;

    invoke-virtual {v0}, Lactivity/ChatActivity;->f()V

    :cond_0
    return-void
.end method
