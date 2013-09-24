.class abstract enum Lorg/jsoup/parser/HtmlTreeBuilderState;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum b:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum c:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum d:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum e:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum f:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum g:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum h:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum i:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum j:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum k:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum l:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum m:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum n:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum o:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum p:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum q:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum r:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum s:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum t:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum u:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum v:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum w:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private static x:Ljava/lang/String;

.field private static final synthetic y:[Lorg/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    const-string v1, "Initial"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->a:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$2;

    const-string v1, "BeforeHtml"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    const-string v1, "BeforeHead"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->c:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    const-string v1, "InHead"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->d:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;

    const-string v1, "InHeadNoscript"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->e:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    const-string v1, "AfterHead"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->f:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    const-string v1, "InBody"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    const-string v1, "Text"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->h:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    const-string v1, "InTable"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$10;

    const-string v1, "InTableText"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    const-string v1, "InCaption"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    const-string v1, "InColumnGroup"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    const-string v1, "InTableBody"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->m:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    const-string v1, "InRow"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    const-string v1, "InCell"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->o:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    const-string v1, "InSelect"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    const-string v1, "InSelectInTable"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->q:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    const-string v1, "AfterBody"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$18;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    const-string v1, "InFrameset"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$19;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->s:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    const-string v1, "AfterFrameset"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$20;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->t:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$21;

    const-string v1, "AfterAfterBody"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$21;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->u:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$22;

    const-string v1, "AfterAfterFrameset"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$22;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$23;

    const-string v1, "ForeignContent"

    invoke-direct {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$23;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->w:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v0, 0x17

    new-array v0, v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->a:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->c:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->d:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->e:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->f:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->h:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->m:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->o:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->q:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->s:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->t:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->u:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->w:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->y:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->x:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->e:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->b()V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->h:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return-void
.end method

.method static synthetic a(Lorg/jsoup/parser/Token;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->k()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Character;->m()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/jsoup/helper/StringUtil;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    const-class v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->y:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0}, [Lorg/jsoup/parser/HtmlTreeBuilderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method


# virtual methods
.method abstract a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
.end method
