.class public final Lcom/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f07000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    const/16 v2, 0x44

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * from KEYDB"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_1
    const-string v3, "AppleId"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "cert"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v0, "csr"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v0, "fastkey"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-static {v0}, Le/b;->b([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x40

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE table IF NOT EXISTS PRIDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, prikey TEXT, ip TEXT, port TEXT,checkmsg TEXT, date TEXT)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * from PRIDB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    const-string v2, "AppleId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "prikey"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ip"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "checkmsg"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "port"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-static {v2}, Le/b;->b([B)[B

    move-result-object v2

    sput-object v2, Le/c;->i:[B

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x40

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE table IF NOT EXISTS PRIDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, prikey TEXT, ip TEXT, port TEXT,checkmsg TEXT, date TEXT)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from PRIDB where AppleId = ?"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Le/c;->i:[B

    invoke-static {v1}, Le/b;->a([B)[B

    move-result-object v1

    invoke-static {v1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "insert into PRIDB (AppleId,prikey,ip,port,checkmsg,date) values(?,?,?,?,?,?)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v0, v4, v6

    const/4 v0, 0x2

    const-string v1, "192.168.1.1"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "8080"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "Hi We are HuluWaTeam."

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {}, Lcom/a/e;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0x40

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * from KEYDB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    const-string v2, "AppleId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cert"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "csr"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fastkey"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-static {v2}, Le/b;->b([B)[B

    move-result-object v2

    sput-object v2, Le/c;->d:[B

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-static {v2}, Le/b;->b([B)[B

    move-result-object v2

    sput-object v2, Le/c;->c:[B

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-static {v2}, Le/b;->b([B)[B

    move-result-object v2

    sput-object v2, Le/c;->f:[B

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v0, 0x40

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from KEYDB where AppleId = ?"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Le/c;->d:[B

    invoke-static {v1}, Le/b;->a([B)[B

    move-result-object v1

    invoke-static {v1, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    sget-object v2, Le/c;->c:[B

    invoke-static {v2}, Le/b;->a([B)[B

    move-result-object v2

    invoke-static {v2, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    sget-object v3, Le/c;->f:[B

    invoke-static {v3}, Le/b;->a([B)[B

    move-result-object v3

    invoke-static {v3, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    iget-object v4, p0, Lcom/a/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "insert into KEYDB (AppleId,cert,csr,fastkey,date) values(?,?,?,?,?)"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v0, v6, v8

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v6, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v6, v0

    const/4 v0, 0x4

    invoke-static {}, Lcom/a/e;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
