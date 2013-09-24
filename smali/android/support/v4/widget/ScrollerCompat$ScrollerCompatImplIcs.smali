.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;
.super Landroid/support/v4/widget/ScrollerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/ScrollerCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCurrVelocity()F
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;->mScroller:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompatIcs;->getCurrVelocity(Landroid/widget/Scroller;)F

    move-result v0

    return v0
.end method
