.class final Lactivity/ck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lactivity/RegisterActivity;


# direct methods
.method constructor <init>(Lactivity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/ck;->a:Lactivity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lactivity/ck;->a:Lactivity/RegisterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lactivity/RegisterActivity;->a(Lactivity/RegisterActivity;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lactivity/ck;->a:Lactivity/RegisterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lactivity/RegisterActivity;->a(Lactivity/RegisterActivity;Z)V

    goto :goto_0
.end method
