.class final Lcom/umeng/a/a/j;
.super Lorg/json/JSONObject;


# instance fields
.field final synthetic a:Lcom/umeng/a/a/g;

.field final synthetic b:Lcom/umeng/a/a/i;


# direct methods
.method constructor <init>(Lcom/umeng/a/a/i;Lcom/umeng/a/a/g;)V
    .locals 1

    iput-object p1, p0, Lcom/umeng/a/a/j;->b:Lcom/umeng/a/a/i;

    iput-object p2, p0, Lcom/umeng/a/a/j;->a:Lcom/umeng/a/a/g;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/umeng/a/a/j;->a:Lcom/umeng/a/a/g;

    invoke-interface {v0, p0}, Lcom/umeng/a/a/g;->a(Lorg/json/JSONObject;)V

    return-void
.end method
