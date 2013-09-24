.class public Lactivity/FriendListActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/support/v4/view/ViewPager;

.field private I:Ljava/util/List;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/view/MenuInflater;

.field private M:Z

.field private N:Z

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:I

.field private R:Z

.field private S:Lcom/b/ab;

.field private T:J

.field private U:Z

.field private V:Lactivity/cp;

.field private W:Landroid/view/inputmethod/InputMethodManager;

.field private X:Landroid/os/Handler;

.field private final a:I

.field private final m:I

.field private n:I

.field private o:Lactivity/ag;

.field private p:Lactivity/ah;

.field private q:Lactivity/av;

.field private r:Landroid/widget/ListView;

.field private s:Landroid/widget/ListView;

.field private t:Landroid/widget/ListView;

.field private u:I

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    iput v2, p0, Lactivity/FriendListActivity;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lactivity/FriendListActivity;->m:I

    iput v2, p0, Lactivity/FriendListActivity;->n:I

    iput v2, p0, Lactivity/FriendListActivity;->u:I

    iput-boolean v2, p0, Lactivity/FriendListActivity;->M:Z

    iput-boolean v2, p0, Lactivity/FriendListActivity;->N:Z

    iput v2, p0, Lactivity/FriendListActivity;->Q:I

    iput-boolean v2, p0, Lactivity/FriendListActivity;->R:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lactivity/FriendListActivity;->T:J

    iput-boolean v2, p0, Lactivity/FriendListActivity;->U:Z

    new-instance v0, Lactivity/ai;

    invoke-direct {v0, p0}, Lactivity/ai;-><init>(Lactivity/FriendListActivity;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->X:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lactivity/FriendListActivity;)Lactivity/cp;
    .locals 1

    iget-object v0, p0, Lactivity/FriendListActivity;->V:Lactivity/cp;

    return-object v0
.end method

.method static synthetic a(Lactivity/FriendListActivity;I)V
    .locals 0

    iput p1, p0, Lactivity/FriendListActivity;->Q:I

    return-void
.end method

.method static synthetic a(Lactivity/FriendListActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/aq;

    invoke-direct {v2, p0, p3}, Lactivity/aq;-><init>(Lactivity/FriendListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lactivity/FriendListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/FriendListActivity;->P:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lactivity/FriendListActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v1, p1}, Lactivity/ag;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "FriendList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readdeletemsgDB "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lactivity/FriendListActivity;->O:Ljava/lang/String;

    iget-object v2, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    iget-object v3, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v3}, Lactivity/ag;->c()Lactivity/cc;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-ltz v0, :cond_0

    iget-object v0, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v0}, Lactivity/ag;->c()Lactivity/cc;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/cc;->getCount()I

    :cond_0
    iget-object v0, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    iget v2, p0, Lactivity/FriendListActivity;->Q:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v0}, Lactivity/ag;->c()Lactivity/cc;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/cc;->notifyDataSetChanged()V

    if-nez v1, :cond_1

    invoke-direct {p0}, Lactivity/FriendListActivity;->l()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lactivity/FriendListActivity;)V
    .locals 1

    iget-object v0, p0, Lactivity/FriendListActivity;->q:Lactivity/av;

    invoke-virtual {v0}, Lactivity/av;->b()V

    iget-object v0, p0, Lactivity/FriendListActivity;->q:Lactivity/av;

    invoke-virtual {v0}, Lactivity/av;->a()Lactivity/cu;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/cu;->notifyDataSetChanged()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    iget-object v2, p0, Lactivity/FriendListActivity;->V:Lactivity/cp;

    invoke-virtual {v2}, Lactivity/cp;->b()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lactivity/ag;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-object p1, p0, Lactivity/FriendListActivity;->O:Ljava/lang/String;

    const-string v2, "FriendList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readmsgDB "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    iget-object v3, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v3}, Lactivity/ag;->b()Lactivity/bx;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-ltz v0, :cond_0

    iget-object v0, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v0}, Lactivity/ag;->b()Lactivity/bx;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/bx;->getCount()I

    :cond_0
    iget-object v0, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    iget v2, p0, Lactivity/FriendListActivity;->Q:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v0}, Lactivity/ag;->b()Lactivity/bx;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/bx;->notifyDataSetChanged()V

    iget-object v0, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v0}, Lactivity/ag;->b()Lactivity/bx;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/bx;->notifyDataSetChanged()V

    if-nez v1, :cond_1

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    const-string v0, "FriendActivity"

    const-string v1, "Show Edit Btn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Lactivity/FriendListActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/FriendListActivity;->M:Z

    return-void
.end method

.method static synthetic e(Lactivity/FriendListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lactivity/FriendListActivity;->X:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lactivity/FriendListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lactivity/FriendListActivity;->R:Z

    return v0
.end method

.method static synthetic g(Lactivity/FriendListActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/FriendListActivity;->R:Z

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lactivity/FriendListActivity;->h:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->f()I

    move-result v0

    iput v0, p0, Lactivity/FriendListActivity;->n:I

    iget v0, p0, Lactivity/FriendListActivity;->n:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/FriendListActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lactivity/FriendListActivity;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lactivity/FriendListActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lactivity/FriendListActivity;->K:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic h(Lactivity/FriendListActivity;)V
    .locals 0

    invoke-direct {p0}, Lactivity/FriendListActivity;->k()V

    return-void
.end method

.method private i()V
    .locals 4

    const v3, 0x7f06000c

    const/4 v1, 0x4

    iget-object v0, p0, Lactivity/FriendListActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->B:Landroid/widget/ImageView;

    const v1, 0x7f020406

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->C:Landroid/widget/ImageView;

    const v1, 0x7f020403

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->D:Landroid/widget/ImageView;

    const v1, 0x7f020409

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->G:Landroid/widget/TextView;

    const v1, 0x7f020405

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic i(Lactivity/FriendListActivity;)V
    .locals 0

    invoke-direct {p0}, Lactivity/FriendListActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 4

    const v3, 0x7f06000c

    const/4 v1, 0x4

    iget-object v0, p0, Lactivity/FriendListActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->B:Landroid/widget/ImageView;

    const v1, 0x7f020406

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->C:Landroid/widget/ImageView;

    const v1, 0x7f020404

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->F:Landroid/widget/TextView;

    const v1, 0x7f020405

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->D:Landroid/widget/ImageView;

    const v1, 0x7f020408

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic j(Lactivity/FriendListActivity;)V
    .locals 0

    invoke-direct {p0}, Lactivity/FriendListActivity;->i()V

    return-void
.end method

.method private k()V
    .locals 5

    const v4, 0x7f06000c

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lactivity/FriendListActivity;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/FriendListActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lactivity/FriendListActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->B:Landroid/widget/ImageView;

    const v1, 0x7f020407

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->E:Landroid/widget/TextView;

    const v1, 0x7f020405

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->C:Landroid/widget/ImageView;

    const v1, 0x7f020403

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->D:Landroid/widget/ImageView;

    const v1, 0x7f020408

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v0}, Lactivity/ag;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lactivity/FriendListActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "FriendActivity"

    const-string v1, "Show Edit Btn2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic k(Lactivity/FriendListActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/FriendListActivity;->U:Z

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lactivity/FriendListActivity;->N:Z

    iget-object v0, p0, Lactivity/FriendListActivity;->w:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "FriendActivity"

    const-string v1, "Show Edit Btn3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/FriendListActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lactivity/FriendListActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(B)V
    .locals 1

    invoke-virtual {p0}, Lactivity/FriendListActivity;->isFinishing()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/FriendListActivity;->R:Z

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lactivity/FriendListActivity;->N:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lactivity/FriendListActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lactivity/FriendListActivity;->V:Lactivity/cp;

    invoke-virtual {v0}, Lactivity/cp;->b()Z

    invoke-direct {p0, p1}, Lactivity/FriendListActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, Lactivity/FriendListActivity;->U:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lactivity/FriendListActivity;->T:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/FriendListActivity;->R:Z

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lactivity/FriendListActivity;->T:J

    iget-boolean v0, p0, Lactivity/FriendListActivity;->N:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lactivity/FriendListActivity;->O:Ljava/lang/String;

    invoke-direct {p0, v0}, Lactivity/FriendListActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lactivity/FriendListActivity;->O:Ljava/lang/String;

    iget-object v1, p0, Lactivity/FriendListActivity;->V:Lactivity/cp;

    invoke-virtual {v1}, Lactivity/cp;->b()Z

    invoke-direct {p0, v0}, Lactivity/FriendListActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(B)V
    .locals 0

    invoke-direct {p0}, Lactivity/FriendListActivity;->h()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lactivity/FriendListActivity;->p:Lactivity/ah;

    iget-object v1, p0, Lactivity/FriendListActivity;->P:Ljava/lang/String;

    iget-object v2, p0, Lactivity/FriendListActivity;->V:Lactivity/cp;

    invoke-virtual {v2}, Lactivity/cp;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lactivity/ah;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lactivity/FriendListActivity;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/FriendListActivity;->p:Lactivity/ah;

    invoke-virtual {v1}, Lactivity/ah;->a()Lactivity/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->p:Lactivity/ah;

    invoke-virtual {v0}, Lactivity/ah;->a()Lactivity/v;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/v;->notifyDataSetChanged()V

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lactivity/FriendListActivity;->c()V

    return-void
.end method

.method public final e()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/ar;

    invoke-direct {v2, p0}, Lactivity/ar;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final f()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/as;

    invoke-direct {v2, p0}, Lactivity/as;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lactivity/FriendListActivity;->h:Lcom/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/d/a;->b(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "status"

    const-string v2, "EXIT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lactivity/FriendListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lactivity/FriendListActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lactivity/NewMessageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lactivity/FriendListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/FriendListActivity;->N:Z

    iget-object v0, p0, Lactivity/FriendListActivity;->w:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/FriendListActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lactivity/FriendListActivity;->b()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lactivity/FriendListActivity;->l()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lactivity/FriendListActivity;->i()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lactivity/FriendListActivity;->j()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lactivity/FriendListActivity;->k()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0051
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lactivity/FriendListActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->setContentView(I)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lactivity/FriendListActivity;->W:Landroid/view/inputmethod/InputMethodManager;

    const-string v0, ""

    iput-object v0, p0, Lactivity/FriendListActivity;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lactivity/FriendListActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    iget-object v1, p0, Lactivity/FriendListActivity;->e:Lcom/a/g;

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->a(Lcom/a/g;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    iget-object v1, p0, Lactivity/FriendListActivity;->d:Lcom/a/d;

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->a(Lcom/a/d;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    iget-object v1, p0, Lactivity/FriendListActivity;->c:Lcom/a/a;

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->a(Lcom/a/a;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0, p0}, Lactivity/MyApplication;->a(Lactivity/FriendListActivity;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/FriendListActivity;->e:Lcom/a/g;

    invoke-virtual {v1, v0}, Lcom/a/g;->a(Lcom/c/l;)V

    new-instance v0, Lactivity/cp;

    iget-object v1, p0, Lactivity/FriendListActivity;->X:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lactivity/cp;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->V:Lactivity/cp;

    new-instance v0, Lactivity/ag;

    iget-object v1, p0, Lactivity/FriendListActivity;->X:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lactivity/ag;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    new-instance v0, Lactivity/ah;

    iget-object v1, p0, Lactivity/FriendListActivity;->X:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lactivity/ah;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->p:Lactivity/ah;

    new-instance v0, Lactivity/av;

    iget-object v1, p0, Lactivity/FriendListActivity;->X:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lactivity/av;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->q:Lactivity/av;

    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->L:Landroid/view/MenuInflater;

    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/FriendListActivity;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->h()Lcom/c/l;

    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/FriendListActivity;->I:Ljava/util/List;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030034

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f030035

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f030036

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lactivity/FriendListActivity;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lactivity/FriendListActivity;->I:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lactivity/FriendListActivity;->I:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lactivity/MyPagerAdapter;

    iget-object v5, p0, Lactivity/FriendListActivity;->I:Ljava/util/List;

    invoke-direct {v4, v5}, Lactivity/MyPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0, v6}, Lactivity/MyApplication;->b(Z)V

    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :goto_0
    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lactivity/au;

    invoke-direct {v4, p0}, Lactivity/au;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/FriendListActivity;->v:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/FriendListActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/FriendListActivity;->w:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/FriendListActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/FriendListActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lactivity/FriendListActivity;->y:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lactivity/FriendListActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lactivity/FriendListActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lactivity/FriendListActivity;->z:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lactivity/FriendListActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lactivity/FriendListActivity;->C:Landroid/widget/ImageView;

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lactivity/FriendListActivity;->A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lactivity/FriendListActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lactivity/FriendListActivity;->D:Landroid/widget/ImageView;

    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/FriendListActivity;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lactivity/FriendListActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/FriendListActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lactivity/FriendListActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/FriendListActivity;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lactivity/FriendListActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/FriendListActivity;->K:Landroid/widget/TextView;

    const v0, 0x7f0b00cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    iget-object v0, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/FriendListActivity;->o:Lactivity/ag;

    invoke-virtual {v1}, Lactivity/ag;->b()Lactivity/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lactivity/an;

    invoke-direct {v0, p0}, Lactivity/an;-><init>(Lactivity/FriendListActivity;)V

    iget-object v1, p0, Lactivity/FriendListActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0b00cc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lactivity/FriendListActivity;->s:Landroid/widget/ListView;

    iget-object v0, p0, Lactivity/FriendListActivity;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/FriendListActivity;->p:Lactivity/ah;

    invoke-virtual {v1}, Lactivity/ah;->a()Lactivity/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0b00cd

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lactivity/FriendListActivity;->t:Landroid/widget/ListView;

    iget-object v0, p0, Lactivity/FriendListActivity;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/FriendListActivity;->q:Lactivity/av;

    invoke-virtual {v1}, Lactivity/av;->a()Lactivity/cu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->q:Lactivity/av;

    invoke-virtual {v0}, Lactivity/av;->b()V

    iget-object v0, p0, Lactivity/FriendListActivity;->q:Lactivity/av;

    invoke-virtual {v0}, Lactivity/av;->a()Lactivity/cu;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/cu;->notifyDataSetChanged()V

    iget-object v0, p0, Lactivity/FriendListActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v0, p0, Lactivity/FriendListActivity;->s:Landroid/widget/ListView;

    new-instance v1, Lactivity/ao;

    invoke-direct {v1, p0}, Lactivity/ao;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lactivity/FriendListActivity;->s:Landroid/widget/ListView;

    new-instance v1, Lactivity/ap;

    invoke-direct {v1, p0}, Lactivity/ap;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Lcom/b/ab;

    iget-object v1, p0, Lactivity/FriendListActivity;->X:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/b/ab;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->S:Lcom/b/ab;

    iget-object v0, p0, Lactivity/FriendListActivity;->S:Lcom/b/ab;

    invoke-virtual {v0}, Lcom/b/ab;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lactivity/FriendListActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0, v6}, Lactivity/MyApplication;->b(Z)V

    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lactivity/FriendListActivity;->L:Landroid/view/MenuInflater;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onDestroy()V

    iget-object v0, p0, Lactivity/FriendListActivity;->S:Lcom/b/ab;

    invoke-virtual {v0}, Lcom/b/ab;->a()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lactivity/MyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/at;

    invoke-direct {v2, p0}, Lactivity/at;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00d0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lactivity/FriendListActivity;->b()V

    invoke-virtual {p0}, Lactivity/FriendListActivity;->c()V

    iget-object v0, p0, Lactivity/FriendListActivity;->H:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lactivity/FriendListActivity;->h()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lactivity/FriendListActivity;->k()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lactivity/FriendListActivity;->j()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lactivity/FriendListActivity;->i()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
