.class final Lactivity/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bq;->a:Lactivity/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lactivity/bq;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->finish()V

    return-void
.end method
