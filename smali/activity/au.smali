.class final Lactivity/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lactivity/FriendListActivity;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/au;->a:Lactivity/FriendListActivity;

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
    .locals 2

    const-string v0, "Page chage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lactivity/au;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->h(Lactivity/FriendListActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lactivity/au;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->i(Lactivity/FriendListActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lactivity/au;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->j(Lactivity/FriendListActivity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
