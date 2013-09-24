.class public Lorg/apache/commons/lang3/exception/DefaultExceptionContext;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/lang3/exception/ExceptionContext;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final contextValues:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    move-result-object v0

    return-object v0
.end method

.method public getContextEntries()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .locals 3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/tuple/Pair;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/tuple/Pair;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/tuple/Pair;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "Exception Context:\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/tuple/Pair;

    const-string v2, "\t["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, "]\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Exception thrown on toString(): "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "---------------------------------"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/tuple/Pair;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    move-result-object v0

    return-object v0
.end method
