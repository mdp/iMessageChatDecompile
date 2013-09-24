.class public final Lcom/c/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/c/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSTALLATION-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "androidkit"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v1, Lcom/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/c/d;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/c/d;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/c/d;->a(Landroid/content/Context;Ljava/io/File;)V

    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/c/d;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    sget-object v0, Lcom/c/d;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)V
    .locals 6

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    array-length v0, v2

    add-int/lit8 v0, v0, 0x6

    new-array v4, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-lt v0, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    iget v5, v3, Landroid/text/format/Time;->year:I

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v2, 0x1

    iget v5, v3, Landroid/text/format/Time;->month:I

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v0, 0x1

    iget v5, v3, Landroid/text/format/Time;->monthDay:I

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v2, 0x1

    iget v5, v3, Landroid/text/format/Time;->hour:I

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v0, 0x1

    iget v5, v3, Landroid/text/format/Time;->minute:I

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget v0, v3, Landroid/text/format/Time;->second:I

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    invoke-static {v4}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uuid.."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void

    :cond_0
    aget-byte v5, v2, v0

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
