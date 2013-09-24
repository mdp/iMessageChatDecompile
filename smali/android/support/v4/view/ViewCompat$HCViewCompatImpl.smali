.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method getFrameTime()J
    .locals 2

    invoke-static {}, Landroid/support/v4/view/ViewCompatHC;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getLayerType(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method
