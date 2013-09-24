.class public final Lactivity/cp;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lactivity/MyApplication;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ListView;

.field private d:Lactivity/bx;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/app/Dialog;

.field private g:Lcom/a/d;

.field private h:Lcom/a/g;

.field private i:Lcom/a/a;

.field private j:Ljava/util/LinkedList;

.field private k:Z

.field private l:Ljava/util/LinkedList;

.field private m:Lactivity/v;

.field private n:Lcom/d/a;

.field private o:Landroid/os/Handler;

.field private p:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lactivity/cp;->k:Z

    iput-object p1, p0, Lactivity/cp;->b:Landroid/content/Context;

    iput-object p2, p0, Lactivity/cp;->o:Landroid/os/Handler;

    iget-object v0, p0, Lactivity/cp;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/cp;->a:Lactivity/MyApplication;

    iget-object v0, p0, Lactivity/cp;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->j()Lcom/a/d;

    move-result-object v0

    iput-object v0, p0, Lactivity/cp;->g:Lcom/a/d;

    iget-object v0, p0, Lactivity/cp;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->k()Lcom/a/a;

    move-result-object v0

    iput-object v0, p0, Lactivity/cp;->i:Lcom/a/a;

    iget-object v0, p0, Lactivity/cp;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->i()Lcom/a/g;

    move-result-object v0

    iput-object v0, p0, Lactivity/cp;->h:Lcom/a/g;

    new-instance v0, Lcom/d/a;

    const-string v1, "saveUser"

    invoke-direct {v0, p1, v1}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/cp;->n:Lcom/d/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/cp;->j:Ljava/util/LinkedList;

    new-instance v0, Lactivity/bx;

    iget-object v1, p0, Lactivity/cp;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lactivity/cp;->j:Ljava/util/LinkedList;

    invoke-direct {v0, v4, v1, v2}, Lactivity/bx;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-object v0, p0, Lactivity/cp;->d:Lactivity/bx;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/cp;->l:Ljava/util/LinkedList;

    new-instance v0, Lactivity/v;

    iget-object v1, p0, Lactivity/cp;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lactivity/cp;->l:Ljava/util/LinkedList;

    invoke-direct {v0, v4, v1, v2}, Lactivity/v;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/cp;->m:Lactivity/v;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lactivity/cp;->b:Landroid/content/Context;

    const v2, 0x7f090001

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    const v1, 0x7f03002b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    const v1, 0x7f0b00c0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/cp;->p:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/cp;->p:Landroid/widget/Button;

    new-instance v1, Lactivity/cq;

    invoke-direct {v1, p0}, Lactivity/cq;-><init>(Lactivity/cp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lactivity/cp;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/c/m;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/cp;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lactivity/cp;->e:Landroid/widget/EditText;

    new-instance v1, Lactivity/cr;

    invoke-direct {v1, p0}, Lactivity/cr;-><init>(Lactivity/cp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    const v1, 0x7f0b00c1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lactivity/cp;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lactivity/cp;->c:Landroid/widget/ListView;

    new-instance v1, Lactivity/cs;

    invoke-direct {v1, p0}, Lactivity/cs;-><init>(Lactivity/cp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    new-instance v1, Lactivity/ct;

    invoke-direct {v1, p0}, Lactivity/ct;-><init>(Lactivity/cp;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic a(Lactivity/cp;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lactivity/cp;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lactivity/cp;)Z
    .locals 1

    iget-boolean v0, p0, Lactivity/cp;->k:Z

    return v0
.end method

.method static synthetic c(Lactivity/cp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lactivity/cp;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lactivity/cp;)Lcom/d/a;
    .locals 1

    iget-object v0, p0, Lactivity/cp;->n:Lcom/d/a;

    return-object v0
.end method

.method static synthetic e(Lactivity/cp;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/cp;->k:Z

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    const/4 v8, 0x0

    iget-object v0, p0, Lactivity/cp;->g:Lcom/a/d;

    iget-object v1, p0, Lactivity/cp;->a:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "FriendList"

    const-string v2, "mRecentList Clear"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lactivity/cp;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lactivity/cp;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/cp;->d:Lactivity/bx;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lactivity/cp;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lactivity/cp;->d:Lactivity/bx;

    invoke-virtual {v0}, Lactivity/bx;->notifyDataSetChanged()V

    return-void

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lactivity/o;

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/cp;->i:Lcom/a/a;

    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Lcom/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lactivity/o;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lactivity/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v8

    move v2, v8

    :goto_1
    iget-object v0, p0, Lactivity/cp;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    if-nez v2, :cond_0

    new-instance v2, Lcom/c/l;

    invoke-direct {v2}, Lcom/c/l;-><init>()V

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/cp;->h:Lcom/a/g;

    invoke-virtual {v0, v2}, Lcom/a/g;->a(Lcom/c/l;)V

    invoke-virtual {v7}, Lactivity/o;->i()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v3

    iget-object v0, p0, Lactivity/cp;->a:Lactivity/MyApplication;

    invoke-virtual {v0, v3}, Lactivity/MyApplication;->c(I)V

    :goto_2
    new-instance v0, Lactivity/ch;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/c/l;->b()I

    move-result v2

    const-string v4, "eeeee"

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lactivity/ch;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/ch;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/cp;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lactivity/cp;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ch;

    invoke-virtual {v7}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lactivity/ch;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/a/e;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0}, Lactivity/ch;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/a/e;->a(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    invoke-virtual {v7}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lactivity/ch;->c(Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lactivity/ch;->b(Ljava/lang/String;)V

    invoke-virtual {v7}, Lactivity/o;->i()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lactivity/ch;->b(I)V

    iget-object v3, p0, Lactivity/cp;->a:Lactivity/MyApplication;

    invoke-virtual {v7}, Lactivity/o;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lactivity/MyApplication;->c(I)V

    :cond_5
    iget-object v3, p0, Lactivity/cp;->j:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lactivity/cp;->j:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v3, v8

    goto/16 :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lactivity/cp;->i:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lactivity/cp;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lactivity/cp;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/cp;->m:Lactivity/v;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lactivity/cp;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lactivity/cp;->m:Lactivity/v;

    invoke-virtual {v0}, Lactivity/v;->notifyDataSetChanged()V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/z;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lactivity/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    sget v2, Lactivity/aa;->b:I

    invoke-virtual {v0, v2}, Lactivity/z;->a(I)V

    iget-object v2, p0, Lactivity/cp;->l:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/cp;->k:Z

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lactivity/cp;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lactivity/cp;->o:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-boolean v1, p0, Lactivity/cp;->k:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    const-string v3, "Click"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lactivity/cp;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lactivity/cp;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
