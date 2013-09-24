.class Lorg/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDateFormat$Rule;


# instance fields
.field private final mValue:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;->mValue:C

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    iget-char v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;->mValue:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public estimateLength()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
