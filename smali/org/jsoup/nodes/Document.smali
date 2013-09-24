.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/Element;


# instance fields
.field private f:Lorg/jsoup/nodes/Document$OutputSettings;

.field private g:Lorg/jsoup/nodes/Document$QuirksMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "#root"

    invoke-static {v0}, Lorg/jsoup/parser/Tag;->a(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$OutputSettings;

    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->a:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->g:Lorg/jsoup/nodes/Document$QuirksMode;

    return-void
.end method

.method private B()Lorg/jsoup/nodes/Document;
    .locals 2

    invoke-super {p0}, Lorg/jsoup/nodes/Element;->e()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    iget-object v1, p0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->f()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public final a(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->g:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public final b_()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/Element;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->f:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->B()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->g:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public final synthetic e()Lorg/jsoup/nodes/Element;
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->B()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lorg/jsoup/nodes/Node;
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->B()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method
