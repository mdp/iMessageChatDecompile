.class final Lactivity/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/LoginActivity;


# direct methods
.method constructor <init>(Lactivity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bc;->a:Lactivity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lactivity/bc;->a:Lactivity/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;Z)V

    return-void
.end method
