.class final Lcom/umeng/a/a/c;
.super Lorg/json/JSONObject;


# instance fields
.field final synthetic a:Lcom/umeng/a/a/a;

.field final synthetic b:Lcom/umeng/a/a/b;


# direct methods
.method constructor <init>(Lcom/umeng/a/a/b;Lcom/umeng/a/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/umeng/a/a/c;->b:Lcom/umeng/a/a/b;

    iput-object p2, p0, Lcom/umeng/a/a/c;->a:Lcom/umeng/a/a/a;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/umeng/a/a/c;->a:Lcom/umeng/a/a/a;

    invoke-virtual {v0, p0}, Lcom/umeng/a/a/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
