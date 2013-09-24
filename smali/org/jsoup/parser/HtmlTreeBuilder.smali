.class Lorg/jsoup/parser/HtmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;


# static fields
.field static final synthetic a:Z


# instance fields
.field private i:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private j:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private k:Z

.field private l:Lorg/jsoup/nodes/Element;

.field private m:Lorg/jsoup/nodes/Element;

.field private n:Lorg/jsoup/nodes/Element;

.field private o:Lorg/jsoup/helper/DescendableLinkedList;

.field private p:Ljava/util/List;

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jsoup/parser/HtmlTreeBuilder;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    iput-boolean v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->k:Z

    new-instance v0, Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {v0}, Lorg/jsoup/helper/DescendableLinkedList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->p:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->q:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Z

    return-void
.end method

.method private static a(Ljava/util/LinkedList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->a(Z)V

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "caption"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "table"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "marquee"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "object"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, p3}, Lorg/jsoup/parser/HtmlTreeBuilder;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/Element;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {v0, p2}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    invoke-static {v0, p3}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "Should not be reachable"

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private b(Lorg/jsoup/nodes/Node;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document;->a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/nodes/Node;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0
.end method

.method private varargs c([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static h(Lorg/jsoup/nodes/Element;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4f

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "applet"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "area"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "article"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "aside"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "base"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "basefont"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "bgsound"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "blockquote"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "body"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "br"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "button"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "caption"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "center"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "col"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "colgroup"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "command"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "details"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "dir"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "div"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "dl"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "embed"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "fieldset"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "figcaption"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "figure"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "footer"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "form"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "frame"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "frameset"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "h1"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "h2"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "h3"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "h4"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "h5"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "h6"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "head"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "header"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "hgroup"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "hr"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "html"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "iframe"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "img"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "input"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "isindex"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "li"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "link"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "listing"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "marquee"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "menu"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "meta"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "nav"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "noembed"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "noframes"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "noscript"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "object"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "ol"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "p"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "param"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "plaintext"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "pre"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "script"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "section"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "select"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "style"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "summary"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "table"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "tbody"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "td"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "textarea"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "tfoot"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "th"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "thead"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "tr"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "ul"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "wbr"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "xmp"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private l(Lorg/jsoup/nodes/Element;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/nodes/Node;)V

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->a:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lorg/jsoup/parser/Tag;->a(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->l(Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method

.method final a(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1, v0}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    new-instance v2, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/Token;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/Tag;->a(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->f:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Token$StartTag;->d:Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->l(Lorg/jsoup/nodes/Element;)V

    goto :goto_0
.end method

.method final a()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method final a(Lorg/jsoup/nodes/Element;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "href"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->f:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->k:Z

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Document;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/DescendableLinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->a(Z)V

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p2}, Lorg/jsoup/helper/DescendableLinkedList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lorg/jsoup/nodes/Node;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "table"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->k()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->k()Lorg/jsoup/nodes/Element;

    const/4 v0, 0x1

    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v3}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lorg/jsoup/nodes/Element;->b(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->e(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_1
.end method

.method final a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method final a(Lorg/jsoup/parser/Token$Character;)V
    .locals 4

    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "script"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "style"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/DataNode;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->a(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void

    :cond_0
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lorg/jsoup/parser/Token$Comment;)V
    .locals 3

    new-instance v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Comment;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->q:Z

    return-void
.end method

.method final varargs a([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method protected final a(Lorg/jsoup/parser/Token;)Z
    .locals 1

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->g:Lorg/jsoup/parser/Token;

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0
.end method

.method final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z
    .locals 1

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->g:Lorg/jsoup/parser/Token;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0
.end method

.method final b(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/parser/Tag;->a(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    new-instance v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->f:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Token$StartTag;->d:Lorg/jsoup/nodes/Attributes;

    invoke-direct {v1, v0, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-direct {p0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->b(Lorg/jsoup/nodes/Node;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tokeniser;->b()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->g()Lorg/jsoup/parser/Tag;

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tokeniser;->b()V

    goto :goto_0
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->j:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method final b(Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-static {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Ljava/util/LinkedList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method final b(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 7

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->h:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->h:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->a()I

    move-result v2

    const-string v3, "Unexpected token [%s] when in state [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->g:Lorg/jsoup/parser/Token;

    invoke-virtual {v6}, Lorg/jsoup/parser/Token;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Z

    return-void
.end method

.method final b([Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "caption"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "table"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "td"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "marquee"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "object"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final c()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->j:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method final c(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-static {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Ljava/util/LinkedList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method final c(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-static {v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    return v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final d()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->q:Z

    return v0
.end method

.method final d(Lorg/jsoup/nodes/Element;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-ne v0, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Lorg/jsoup/nodes/Document;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->d:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method final e(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    sget-boolean v0, Lorg/jsoup/parser/HtmlTreeBuilder;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->c(Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-ne v0, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method final f(Lorg/jsoup/nodes/Element;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->l:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method final f(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ul"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final g(Lorg/jsoup/nodes/Element;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->m:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method final g()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Z

    return v0
.end method

.method final g(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "button"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final h()Lorg/jsoup/nodes/Element;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "td"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pop td not in cell"

    invoke-static {v2, v0}, Lorg/jsoup/helper/Validate;->a(ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "popping html!"

    invoke-static {v2, v0}, Lorg/jsoup/helper/Validate;->a(ZLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method final h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "table"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final i()Lorg/jsoup/helper/DescendableLinkedList;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    return-object v0
.end method

.method final i(Lorg/jsoup/nodes/Element;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->v()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->v()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method final i(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "optgroup"

    aput-object v5, v4, v2

    const-string v5, "option"

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "Should not be reachable"

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->b(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method final j()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "table"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->c([Ljava/lang/String;)V

    return-void
.end method

.method final j(Ljava/lang/String;)V
    .locals 4

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "dd"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dt"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "li"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "option"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "optgroup"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "rp"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "rt"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->h()Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-void
.end method

.method final j(Lorg/jsoup/nodes/Element;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-ne v0, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method final k(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thead"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->c([Ljava/lang/String;)V

    return-void
.end method

.method final k(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-static {v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Lorg/jsoup/helper/DescendableLinkedList;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    return v0
.end method

.method final l()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tr"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->c([Ljava/lang/String;)V

    return-void
.end method

.method final m()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->e:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->c()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/nodes/Element;

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "select"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v3, "td"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "td"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->o:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_2

    :cond_3
    const-string v3, "tr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_2

    :cond_4
    const-string v3, "tbody"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "thead"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "tfoot"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->m:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_2

    :cond_6
    const-string v3, "caption"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_2

    :cond_7
    const-string v3, "colgroup"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_2

    :cond_8
    const-string v3, "table"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_2

    :cond_9
    const-string v3, "head"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_2

    :cond_a
    const-string v3, "body"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_2

    :cond_b
    const-string v3, "frameset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->s:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_2

    :cond_c
    const-string v3, "html"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->c:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_2

    :cond_d
    if-eqz v0, :cond_e

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->g:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_2

    :cond_e
    move v1, v0

    goto/16 :goto_0

    :cond_f
    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto/16 :goto_1
.end method

.method final n()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->l:Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method final o()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->m:Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method final p()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->p:Ljava/util/List;

    return-void
.end method

.method final q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->p:Ljava/util/List;

    return-object v0
.end method

.method final r()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->j(Ljava/lang/String;)V

    return-void
.end method

.method final s()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->c(Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    add-int/lit8 v1, v4, -0x1

    move-object v2, v0

    :goto_0
    if-nez v1, :cond_3

    const/4 v0, 0x1

    move v7, v0

    move v0, v1

    move-object v1, v2

    move v2, v7

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v1}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    move v7, v1

    move-object v1, v0

    move v0, v7

    :cond_2
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->v()Lorg/jsoup/nodes/Attributes;

    move-result-object v5

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->v()Lorg/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->a(Lorg/jsoup/nodes/Attributes;)V

    iget-object v5, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v5, v0, v2}, Lorg/jsoup/helper/DescendableLinkedList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Lorg/jsoup/helper/DescendableLinkedList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v4, -0x1

    if-eq v0, v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/DescendableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->c(Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v2, v3

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto :goto_0
.end method

.method final t()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v0}, Lorg/jsoup/helper/DescendableLinkedList;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->removeLast()Ljava/lang/Object;

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TreeBuilder{currentToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->g:Lorg/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->i:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final u()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/helper/DescendableLinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/DescendableLinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
