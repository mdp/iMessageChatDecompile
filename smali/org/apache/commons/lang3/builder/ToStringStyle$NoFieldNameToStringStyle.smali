.class final Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;->setUseFieldNames(Z)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
