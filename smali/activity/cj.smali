.class final Lactivity/cj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lactivity/RegisterActivity;


# direct methods
.method constructor <init>(Lactivity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/cj;->a:Lactivity/RegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lactivity/cj;->a:Lactivity/RegisterActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lactivity/RegisterActivity;->a(Lactivity/RegisterActivity;I)V

    return-void
.end method
