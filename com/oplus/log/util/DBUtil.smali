.class public Lcom/oplus/log/util/DBUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static BUFFER_SIZE:I = 0x9c40

.field public static DB_NAME:Ljava/lang/String; = "usetrace.db"

.field public static DB_PATH:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeDatabase()V
    .registers 1

    sget-object v0, Lcom/oplus/log/util/DBUtil;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/oplus/log/util/DBUtil;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/log/util/DBUtil;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_12
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    sput-object p0, Lcom/oplus/log/util/DBUtil;->mContext:Landroid/content/Context;

    const-string p0, "/data"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oplus/log/util/DBUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/databases"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/log/util/DBUtil;->DB_PATH:Ljava/lang/String;

    sget-object p0, Lcom/oplus/log/util/DBUtil;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p0, :cond_3e

    const-class p0, Lcom/oplus/log/util/DBUtil;

    monitor-enter p0

    :try_start_33
    invoke-static {}, Lcom/oplus/log/util/DBUtil;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/DBUtil;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit p0

    goto :goto_3e

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :goto_3e
    sget-object p0, Lcom/oplus/log/util/DBUtil;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method private static openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/log/util/DBUtil;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/usetrace.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1

    sput-object p0, Lcom/oplus/log/util/DBUtil;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    sget-object p0, Lcom/oplus/log/util/DBUtil;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method
