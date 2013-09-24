.class Lorg/apache/commons/lang3/time/DateUtils$DateIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final endFinal:Ljava/util/Calendar;

.field private final spot:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    iput-object p1, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->next()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Calendar;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
