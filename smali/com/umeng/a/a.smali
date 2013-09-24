.class public final Lcom/umeng/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/umeng/a/c;

.field private static final b:Lcom/umeng/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/umeng/a/c;

    invoke-direct {v0}, Lcom/umeng/a/c;-><init>()V

    sput-object v0, Lcom/umeng/a/a;->a:Lcom/umeng/a/c;

    new-instance v0, Lcom/umeng/a/b/b;

    invoke-direct {v0}, Lcom/umeng/a/b/b;-><init>()V

    sput-object v0, Lcom/umeng/a/a;->b:Lcom/umeng/a/b/b;

    sget-object v1, Lcom/umeng/a/a;->a:Lcom/umeng/a/c;

    invoke-virtual {v0, v1}, Lcom/umeng/a/b/b;->a(Lcom/umeng/a/b/c;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/umeng/a/a;->a:Lcom/umeng/a/c;

    invoke-virtual {v0, p0}, Lcom/umeng/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    sget-object v0, Lcom/umeng/a/a;->a:Lcom/umeng/a/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/umeng/a/a;->a:Lcom/umeng/a/c;

    invoke-virtual {v0, p0}, Lcom/umeng/a/c;->b(Landroid/content/Context;)V

    return-void
.end method
