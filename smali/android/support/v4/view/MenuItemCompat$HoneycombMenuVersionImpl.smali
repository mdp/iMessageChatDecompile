.class Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setShowAsAction(Landroid/view/MenuItem;I)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V

    const/4 v0, 0x1

    return v0
.end method
