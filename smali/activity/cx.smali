.class public final Lactivity/cx;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/cx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lactivity/cx;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/cx;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lactivity/cx;->b:I

    return v0
.end method
