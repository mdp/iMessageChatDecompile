.class public final Ld/g;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lcom/c/b;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/g;->a:I

    iput p2, p0, Ld/g;->b:I

    iput p1, p0, Ld/g;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/c/b;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Ld/g;->a:I

    iput p2, p0, Ld/g;->b:I

    iput-object p1, p0, Ld/g;->d:Lcom/c/b;

    return-void
.end method
