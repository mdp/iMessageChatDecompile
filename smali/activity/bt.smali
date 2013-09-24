.class final Lactivity/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lactivity/NotifyActivity;


# direct methods
.method constructor <init>(Lactivity/NotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bt;->a:Lactivity/NotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lactivity/bt;->a:Lactivity/NotifyActivity;

    iget-object v0, v0, Lactivity/NotifyActivity;->h:Lcom/d/a;

    invoke-virtual {v0, p2}, Lcom/d/a;->e(Z)V

    return-void
.end method
