.class public final La/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/c/b;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/c/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/d;->a:Lcom/c/b;

    iput p2, p0, La/d;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/d;->b:I

    return v0
.end method

.method public final b()Lcom/c/b;
    .locals 1

    iget-object v0, p0, La/d;->a:Lcom/c/b;

    return-object v0
.end method
