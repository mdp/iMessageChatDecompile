.class public Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/lang3/event/EventListenerSupport;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    #getter for: Lorg/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/commons/lang3/event/EventListenerSupport;->access$000(Lorg/apache/commons/lang3/event/EventListenerSupport;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
