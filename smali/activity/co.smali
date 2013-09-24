.class final Lactivity/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/RegisterActivity;


# direct methods
.method constructor <init>(Lactivity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/co;->a:Lactivity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lactivity/co;->a:Lactivity/RegisterActivity;

    invoke-virtual {v0}, Lactivity/RegisterActivity;->finish()V

    return-void
.end method
