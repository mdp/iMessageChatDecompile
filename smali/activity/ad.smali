.class final Lactivity/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lactivity/ac;


# direct methods
.method constructor <init>(Lactivity/ac;)V
    .locals 0

    iput-object p1, p0, Lactivity/ad;->a:Lactivity/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lactivity/ad;->a:Lactivity/ac;

    invoke-static {v0, p1}, Lactivity/ac;->c(Lactivity/ac;I)V

    return-void
.end method
