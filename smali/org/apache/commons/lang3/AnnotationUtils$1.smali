.class Lorg/apache/commons/lang3/AnnotationUtils$1;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setDefaultFullDetail(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setArrayContentDetail(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setUseClassName(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setUseShortClassName(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setUseIdentityHashCode(Z)V

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setContentStart(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setContentEnd(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setFieldSeparator(Ljava/lang/String;)V

    const-string v0, "["

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setArrayStart(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/AnnotationUtils$1;->setArrayEnd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p3, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/annotation/Annotation;

    invoke-static {p3}, Lorg/apache/commons/lang3/AnnotationUtils;->toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-class v3, Ljava/lang/annotation/Annotation;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
