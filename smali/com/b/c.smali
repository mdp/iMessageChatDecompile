.class public final Lcom/b/c;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/concurrent/locks/ReentrantLock;

.field private c:Ljava/io/DataOutputStream;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Lcom/b/q;

.field private g:Lcom/b/q;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/c;->e:Z

    iput-object p1, p0, Lcom/b/c;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/b/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p3, p0, Lcom/b/c;->d:Landroid/content/Context;

    return-void
.end method

.method private d()Z
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v4, v10, [B

    const/16 v2, 0x9

    new-array v3, v2, [B

    const/4 v2, 0x7

    aput-byte v2, v3, v0

    aput-byte v9, v3, v9

    aput-byte v11, v3, v10

    const/4 v2, 0x7

    aput-byte v1, v3, v2

    const/16 v2, 0x8

    aput-byte v1, v3, v2

    const/16 v2, 0x2c

    new-array v2, v2, [B

    const/4 v5, 0x7

    aput-byte v5, v2, v0

    const/16 v5, 0x27

    aput-byte v5, v2, v9

    aput-byte v1, v2, v10

    const/4 v5, 0x7

    const/16 v6, 0x20

    aput-byte v6, v2, v5

    const/16 v5, 0x28

    aput-byte v11, v2, v5

    const/16 v5, 0x2a

    aput-byte v1, v2, v5

    const/16 v5, 0x2b

    aput-byte v1, v2, v5

    const/16 v5, 0x10

    new-array v5, v5, [B

    const/4 v6, 0x7

    aput-byte v6, v5, v0

    const/16 v6, 0xb

    aput-byte v6, v5, v9

    aput-byte v11, v5, v10

    const/4 v6, 0x7

    aput-byte v1, v5, v6

    const/16 v6, 0x8

    aput-byte v1, v5, v6

    const/16 v6, 0x9

    aput-byte v10, v5, v6

    const/16 v6, 0xb

    aput-byte v9, v5, v6

    const/16 v6, 0xf

    aput-byte v1, v5, v6

    const/16 v6, 0x23

    new-array v6, v6, [B

    const/16 v7, 0xc

    aput-byte v7, v6, v0

    const/16 v7, 0x1e

    aput-byte v7, v6, v9

    aput-byte v1, v6, v10

    const/4 v7, 0x7

    aput-byte v9, v6, v7

    const/16 v7, 0x8

    const/16 v8, 0x54

    aput-byte v8, v6, v7

    const/16 v7, 0x9

    const/16 v8, 0x65

    aput-byte v8, v6, v7

    const/16 v7, 0xa

    const/16 v8, 0x73

    aput-byte v8, v6, v7

    const/16 v7, 0xb

    const/16 v8, 0x74

    aput-byte v8, v6, v7

    const/16 v7, 0xc

    aput-byte v11, v6, v7

    const/16 v7, 0xe

    const/4 v8, 0x3

    aput-byte v8, v6, v7

    const/16 v7, 0xf

    const/16 v8, 0x31

    aput-byte v8, v6, v7

    const/16 v7, 0x10

    const/16 v8, 0x2e

    aput-byte v8, v6, v7

    const/16 v7, 0x11

    const/16 v8, 0x30

    aput-byte v8, v6, v7

    const/16 v7, 0x12

    const/4 v8, 0x3

    aput-byte v8, v6, v7

    const/16 v7, 0x14

    const/4 v8, 0x3

    aput-byte v8, v6, v7

    const/16 v7, 0x15

    const/16 v8, 0x31

    aput-byte v8, v6, v7

    const/16 v7, 0x16

    const/16 v8, 0x2e

    aput-byte v8, v6, v7

    const/16 v7, 0x17

    const/16 v8, 0x30

    aput-byte v8, v6, v7

    const/16 v7, 0x18

    aput-byte v9, v6, v7

    const/16 v7, 0x1a

    const/4 v8, 0x3

    aput-byte v8, v6, v7

    const/16 v7, 0x1b

    const/16 v8, 0x31

    aput-byte v8, v6, v7

    const/16 v7, 0x1c

    const/16 v8, 0x2e

    aput-byte v8, v6, v7

    const/16 v7, 0x1d

    const/16 v8, 0x30

    aput-byte v8, v6, v7

    const/16 v7, 0x1e

    aput-byte v10, v6, v7

    const/16 v7, 0x20

    aput-byte v11, v6, v7

    const/16 v7, 0x21

    const/16 v8, 0x31

    aput-byte v8, v6, v7

    const/16 v7, 0x22

    const/16 v8, 0x35

    aput-byte v8, v6, v7

    :try_start_0
    sget-object v7, Le/c;->n:[B

    if-eqz v7, :cond_6

    sget-object v3, Le/c;->n:[B

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x20

    invoke-static {v3, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-static {v2, v3, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x18

    const/high16 v7, -0x100

    and-int/2addr v3, v7

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v3, v7

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    or-int/2addr v3, v7

    const/4 v7, 0x4

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x0

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    const/4 v7, 0x0

    sput-boolean v7, Lcom/b/a;->a:Z

    iget-object v7, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    const/4 v8, 0x0

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v7, v2, v8, v3}, Ljava/io/DataOutputStream;->write([BII)V

    move v2, v0

    :goto_1
    add-int/lit8 v3, v2, 0x1

    const/16 v7, 0x78

    if-lt v2, v7, :cond_2

    :cond_0
    sget-boolean v2, Lcom/b/a;->a:Z

    if-nez v2, :cond_3

    :cond_1
    :goto_2
    return v0

    :cond_2
    sget-boolean v2, Lcom/b/a;->a:Z

    if-nez v2, :cond_0

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    move v2, v3

    goto :goto_1

    :cond_3
    const-string v2, "appleout"

    const-string v3, " login 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x5

    invoke-static {v6, v2, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    aget-byte v2, v4, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v7, 0xff

    and-int/2addr v3, v7

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x8

    const v7, 0xff00

    and-int/2addr v3, v7

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x0

    sput-boolean v3, Lcom/b/a;->a:Z

    iget-object v3, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, 0x5

    invoke-virtual {v3, v6, v7, v8}, Ljava/io/DataOutputStream;->write([BII)V

    add-int/lit8 v3, v2, 0x5

    new-array v3, v3, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int/lit8 v2, v2, 0x5

    invoke-static {v6, v7, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v3, Le/c;->l:[B

    const-string v2, "appleout"

    const-string v3, " login 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x5

    invoke-static {v5, v2, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    aget-byte v2, v4, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v6, 0xff

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x8

    const v6, 0xff00

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x0

    sput-boolean v3, Lcom/b/a;->a:Z

    iget-object v3, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v3, v5, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    const-string v2, "appleout"

    const-string v3, " login 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_3
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x78

    if-lt v2, v4, :cond_5

    :cond_4
    sget-boolean v2, Lcom/b/a;->a:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto/16 :goto_2

    :cond_5
    sget-boolean v2, Lcom/b/a;->a:Z

    if-nez v2, :cond_4

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    move-object v2, v3

    goto/16 :goto_0
.end method

.method private e()Z
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v4, Le/c;->k:[B

    new-array v5, v10, [B

    const/16 v2, 0x2c

    new-array v2, v2, [B

    const/4 v3, 0x7

    aput-byte v3, v2, v0

    const/16 v3, 0x27

    aput-byte v3, v2, v9

    aput-byte v1, v2, v10

    const/4 v3, 0x7

    const/16 v6, 0x20

    aput-byte v6, v2, v3

    const/16 v3, 0x28

    aput-byte v11, v2, v3

    const/16 v3, 0x2a

    aput-byte v1, v2, v3

    const/16 v3, 0x2b

    aput-byte v1, v2, v3

    const/16 v3, 0x33

    new-array v6, v3, [B

    const/4 v3, 0x7

    aput-byte v3, v6, v0

    const/16 v3, 0x2e

    aput-byte v3, v6, v9

    aput-byte v1, v6, v10

    const/4 v3, 0x7

    const/16 v7, 0x20

    aput-byte v7, v6, v3

    const/16 v3, 0x28

    aput-byte v11, v6, v3

    const/16 v3, 0x2a

    aput-byte v1, v6, v3

    const/16 v3, 0x2b

    aput-byte v1, v6, v3

    const/16 v3, 0x2c

    aput-byte v10, v6, v3

    const/16 v3, 0x2e

    aput-byte v9, v6, v3

    const/16 v3, 0x32

    aput-byte v1, v6, v3

    const/16 v3, 0x23

    new-array v7, v3, [B

    const/16 v3, 0xc

    aput-byte v3, v7, v0

    const/16 v3, 0x1e

    aput-byte v3, v7, v9

    aput-byte v1, v7, v10

    const/4 v3, 0x7

    aput-byte v9, v7, v3

    const/16 v3, 0x8

    const/16 v8, 0x54

    aput-byte v8, v7, v3

    const/16 v3, 0x9

    const/16 v8, 0x65

    aput-byte v8, v7, v3

    const/16 v3, 0xa

    const/16 v8, 0x73

    aput-byte v8, v7, v3

    const/16 v3, 0xb

    const/16 v8, 0x74

    aput-byte v8, v7, v3

    const/16 v3, 0xc

    aput-byte v11, v7, v3

    const/16 v3, 0xe

    const/4 v8, 0x3

    aput-byte v8, v7, v3

    const/16 v3, 0xf

    const/16 v8, 0x31

    aput-byte v8, v7, v3

    const/16 v3, 0x10

    const/16 v8, 0x2e

    aput-byte v8, v7, v3

    const/16 v3, 0x11

    const/16 v8, 0x30

    aput-byte v8, v7, v3

    const/16 v3, 0x12

    const/4 v8, 0x3

    aput-byte v8, v7, v3

    const/16 v3, 0x14

    const/4 v8, 0x3

    aput-byte v8, v7, v3

    const/16 v3, 0x15

    const/16 v8, 0x31

    aput-byte v8, v7, v3

    const/16 v3, 0x16

    const/16 v8, 0x2e

    aput-byte v8, v7, v3

    const/16 v3, 0x17

    const/16 v8, 0x30

    aput-byte v8, v7, v3

    const/16 v3, 0x18

    aput-byte v9, v7, v3

    const/16 v3, 0x1a

    const/4 v8, 0x3

    aput-byte v8, v7, v3

    const/16 v3, 0x1b

    const/16 v8, 0x31

    aput-byte v8, v7, v3

    const/16 v3, 0x1c

    const/16 v8, 0x2e

    aput-byte v8, v7, v3

    const/16 v3, 0x1d

    const/16 v8, 0x30

    aput-byte v8, v7, v3

    const/16 v3, 0x1e

    aput-byte v10, v7, v3

    const/16 v3, 0x20

    aput-byte v11, v7, v3

    const/16 v3, 0x21

    const/16 v8, 0x31

    aput-byte v8, v7, v3

    const/16 v3, 0x22

    const/16 v8, 0x35

    aput-byte v8, v7, v3

    const/4 v3, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x20

    :try_start_0
    invoke-static {v4, v3, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-static {v2, v3, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x18

    const/high16 v8, -0x100

    and-int/2addr v3, v8

    const/4 v8, 0x2

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x10

    const/high16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v3, v8

    const/4 v8, 0x3

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v3, v8

    const/4 v8, 0x4

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x0

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    const/4 v8, 0x0

    sput-boolean v8, Lcom/b/a;->a:Z

    iget-object v8, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    const/4 v9, 0x0

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v8, v2, v9, v3}, Ljava/io/DataOutputStream;->write([BII)V

    move v2, v0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    const/16 v8, 0x78

    if-lt v2, v8, :cond_2

    :cond_0
    sget-boolean v2, Lcom/b/a;->a:Z

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-boolean v2, Lcom/b/a;->a:Z

    if-nez v2, :cond_0

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    move v2, v3

    goto :goto_0

    :cond_3
    const-string v2, "appleout"

    const-string v3, " login 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x5

    invoke-static {v7, v2, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    aget-byte v2, v5, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v8, 0xff

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x8

    const v8, 0xff00

    and-int/2addr v3, v8

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x0

    sput-boolean v3, Lcom/b/a;->a:Z

    iget-object v3, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    const/4 v8, 0x0

    add-int/lit8 v9, v2, 0x5

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/DataOutputStream;->write([BII)V

    add-int/lit8 v3, v2, 0x5

    new-array v3, v3, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    add-int/lit8 v2, v2, 0x5

    invoke-static {v7, v8, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v3, Le/c;->l:[B

    const-string v2, "appleout"

    const-string v3, " login 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x20

    const/16 v3, 0x8

    const/16 v7, 0x20

    invoke-static {v4, v2, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v6, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    aget-byte v2, v5, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x0

    sput-boolean v3, Lcom/b/a;->a:Z

    iget-object v3, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v3, v6, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    const-string v2, "appleout"

    const-string v3, " login 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_2
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x78

    if-lt v2, v4, :cond_5

    :cond_4
    sget-boolean v2, Lcom/b/a;->a:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :cond_5
    sget-boolean v2, Lcom/b/a;->a:Z

    if-nez v2, :cond_4

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/c;->e:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/b/q;Lcom/b/q;)V
    .locals 0

    iput-object p2, p0, Lcom/b/c;->g:Lcom/b/q;

    iput-object p1, p0, Lcom/b/c;->f:Lcom/b/q;

    return-void
.end method

.method public final a(Lcom/c/j;)V
    .locals 1

    iget-object v0, p0, Lcom/b/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)V
    .locals 2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/c;->e:Z

    return v0
.end method

.method public final c()V
    .locals 10

    const/16 v9, -0x70

    const/4 v8, 0x5

    const/16 v7, 0x20

    const/4 v6, 0x2

    const/4 v5, 0x0

    sget-object v0, Le/c;->k:[B

    new-array v1, v8, [B

    const/16 v2, 0x56

    new-array v2, v2, [B

    const/16 v3, 0x9

    aput-byte v3, v2, v5

    const/4 v3, 0x4

    const/16 v4, 0x51

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    aput-byte v3, v2, v8

    const/4 v3, 0x7

    aput-byte v7, v2, v3

    const/16 v3, 0x28

    aput-byte v6, v2, v3

    const/16 v3, 0x2a

    const/16 v4, 0x14

    aput-byte v4, v2, v3

    const/16 v3, 0x2b

    const/16 v4, -0x18

    aput-byte v4, v2, v3

    const/16 v3, 0x2c

    const/16 v4, 0x56

    aput-byte v4, v2, v3

    const/16 v3, 0x2d

    const/16 v4, 0x19

    aput-byte v4, v2, v3

    const/16 v3, 0x2e

    const/16 v4, -0x55

    aput-byte v4, v2, v3

    const/16 v3, 0x2f

    const/16 v4, -0x2c

    aput-byte v4, v2, v3

    const/16 v3, 0x30

    aput-byte v7, v2, v3

    const/16 v3, 0x31

    const/16 v4, 0x29

    aput-byte v4, v2, v3

    const/16 v3, 0x32

    const/16 v4, -0x39

    aput-byte v4, v2, v3

    const/16 v3, 0x33

    const/16 v4, 0x48

    aput-byte v4, v2, v3

    const/16 v3, 0x34

    const/16 v4, 0x1a

    aput-byte v4, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0x7a

    aput-byte v4, v2, v3

    const/16 v3, 0x36

    const/16 v4, -0x3f

    aput-byte v4, v2, v3

    const/16 v3, 0x37

    aput-byte v9, v2, v3

    const/16 v3, 0x38

    const/16 v4, -0x6e

    aput-byte v4, v2, v3

    const/16 v3, 0x39

    const/16 v4, -0x45

    aput-byte v4, v2, v3

    const/16 v3, 0x3a

    const/16 v4, 0x46

    aput-byte v4, v2, v3

    const/16 v3, 0x3b

    aput-byte v9, v2, v3

    const/16 v3, 0x3c

    const/16 v4, -0x35

    aput-byte v4, v2, v3

    const/16 v3, 0x3d

    const/16 v4, -0x12

    aput-byte v4, v2, v3

    const/16 v3, 0x3e

    const/16 v4, 0x76

    aput-byte v4, v2, v3

    const/16 v3, 0x3f

    aput-byte v6, v2, v3

    const/16 v3, 0x41

    const/16 v4, 0x14

    aput-byte v4, v2, v3

    const/16 v3, 0x42

    const/16 v4, -0x1c

    aput-byte v4, v2, v3

    const/16 v3, 0x43

    const/16 v4, -0x1a

    aput-byte v4, v2, v3

    const/16 v3, 0x44

    const/16 v4, -0x27

    aput-byte v4, v2, v3

    const/16 v3, 0x45

    const/16 v4, 0x52

    aput-byte v4, v2, v3

    const/16 v3, 0x46

    const/16 v4, -0x6b

    aput-byte v4, v2, v3

    const/16 v3, 0x47

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    const/16 v3, 0x48

    const/16 v4, 0x68

    aput-byte v4, v2, v3

    const/16 v3, 0x49

    const/16 v4, -0x30

    aput-byte v4, v2, v3

    const/16 v3, 0x4a

    const/16 v4, -0x5b

    aput-byte v4, v2, v3

    const/16 v3, 0x4b

    const/16 v4, -0x25

    aput-byte v4, v2, v3

    const/16 v3, 0x4c

    aput-byte v6, v2, v3

    const/16 v3, 0x4d

    const/16 v4, -0x25

    aput-byte v4, v2, v3

    const/16 v3, 0x4e

    const/16 v4, -0x51

    aput-byte v4, v2, v3

    const/16 v3, 0x4f

    const/16 v4, 0x27

    aput-byte v4, v2, v3

    const/16 v3, 0x50

    const/16 v4, -0x34

    aput-byte v4, v2, v3

    const/16 v3, 0x51

    const/16 v4, 0x35

    aput-byte v4, v2, v3

    const/16 v3, 0x52

    const/4 v4, -0x4

    aput-byte v4, v2, v3

    const/16 v3, 0x53

    const/16 v4, 0x18

    aput-byte v4, v2, v3

    const/16 v3, 0x54

    const/16 v4, -0x2f

    aput-byte v4, v2, v3

    const/16 v3, 0x55

    const/16 v4, 0x59

    aput-byte v4, v2, v3

    if-eqz v0, :cond_0

    const/16 v3, 0x8

    invoke-static {v0, v7, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-static {v2, v5, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v3, -0x100

    and-int/2addr v0, v3

    aget-byte v3, v1, v6

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    const/4 v3, 0x3

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    const/4 v3, 0x4

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :try_start_0
    iget-object v1, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "appleout"

    const-string v1, " login 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final run()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/b/ag;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/b/c;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/c;->e:Z

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/b/c;->e:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iput-boolean v4, p0, Lcom/b/c;->e:Z

    const-string v0, "appleOutput"

    const-string v1, " over "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/c;->g:Lcom/b/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/b/q;->a(Lcom/c/j;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/b/c;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/c;->e:Z

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/b/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v0, p0, Lcom/b/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_3
    iget-object v0, p0, Lcom/b/c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/j;

    iget-object v1, p0, Lcom/b/c;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v1, "appleout"

    const-string v2, " send "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Lcom/c/j;->j()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/c/j;->n()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/b/c;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
