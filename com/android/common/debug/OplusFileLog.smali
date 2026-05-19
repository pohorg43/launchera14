.class public final Lcom/android/common/debug/OplusFileLog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/debug/OplusFileLog$FileComparator;,
        Lcom/android/common/debug/OplusFileLog$LogMsg;,
        Lcom/android/common/debug/OplusFileLog$CopyFileMsg;,
        Lcom/android/common/debug/OplusFileLog$LogWriterCallback;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

.field public static final DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

.field private static final DATE_TIME_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

.field private static final DELAY_COPY_SP_XML:J = 0x7530L

.field private static final ENABLED:Z = true

.field private static final FILE_LAUNCHER_DUMP_PREFIX:Ljava/lang/String; = "launcher_dump_"

.field private static final FILE_LOG_PERMANENT:Ljava/lang/String; = "log-permanent"

.field public static final LOG_CONSTANT_S:Ljava/lang/String; = "%s %s %s %s"

.field private static final LOG_DIR_OTHER:Ljava/lang/String; = "other"

.field private static final LOG_DIR_OTHER_SHARED_PREFERENCE:Ljava/lang/String; = "sharedPreference"

.field public static final LOG_SPLIT:Ljava/lang/String; = "-"

.field private static final MAX_FILE_LENGTH_LOG_PERMANENT:I = 0x3000

.field private static final MAX_FILE_SIZE_20:I = 0x14

.field private static final MAX_FILE_SIZE_5:I = 0x5

.field private static final SOURCE_SHARED_PREFERENCE_PATH:Ljava/lang/String; = "/data/user_de/0/com.android.launcher/shared_prefs"

.field private static final TAG:Ljava/lang/String; = "OplusFileLog"

.field private static volatile mDumpWriter:Ljava/io/PrintWriter;

.field private static volatile sHandler:Landroid/os/Handler;

.field private static sLogsDirectory:Ljava/io/File;

.field private static sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy-MM-dd_HH-mm-ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    const-string v0, "MM-dd HH:mm:ss.SSSSSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/common/debug/OplusFileLog;->lambda$copyFile$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$102(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .registers 1

    sput-object p0, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->doCopy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400()Ljava/time/format/DateTimeFormatter;
    .registers 1

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static synthetic access$500(Ljava/io/File;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->deleteOldFiles(Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$600()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic access$700(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/debug/OplusFileLog;->dumpFiles(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/common/debug/OplusFileLog;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/common/debug/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/common/debug/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static dForever(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->printForEver(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->printRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteLauncherDumps(I)V
    .registers 8

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    new-instance v1, Lcom/android/common/debug/OplusFileLog$FileComparator;

    invoke-direct {v1}, Lcom/android/common/debug/OplusFileLog$FileComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v2, v1, :cond_42

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "launcher_dump_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_38

    add-int/lit8 v3, v3, 0x1

    :cond_38
    if-le v3, p0, :cond_3f

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, -0x1

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_42
    return-void
.end method

.method private static deleteOldFiles(Ljava/io/File;Ljava/lang/String;I)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "other"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1f

    return-void

    :cond_1f
    new-instance v0, Lcom/android/common/debug/OplusFileLog$FileComparator;

    invoke-direct {v0}, Lcom/android/common/debug/OplusFileLog$FileComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_2a
    if-ge v1, v0, :cond_5e

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-static {v3, p1, p2}, Lcom/android/common/debug/OplusFileLog;->deleteOldFiles(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_5b

    :cond_38
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "launcher_dump_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    add-int/lit8 v2, v2, 0x1

    :cond_54
    if-le v2, p2, :cond_5b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, -0x1

    :cond_5b
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_5e
    return-void
.end method

.method private static doCopy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_13
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_50
    .catchall {:try_start_1 .. :try_end_21} :catchall_4d

    :try_start_21
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v3, v0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3a} :catch_47
    .catchall {:try_start_21 .. :try_end_3a} :catchall_41

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5f

    :catchall_41
    move-exception p1

    move-object v9, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v9

    goto :goto_61

    :catch_47
    move-exception p1

    move-object v9, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v9

    goto :goto_52

    :catchall_4d
    move-exception p0

    move-object p1, v0

    goto :goto_61

    :catch_50
    move-exception p0

    move-object p1, v0

    :goto_52
    :try_start_52
    const-string v1, "OplusFileLog"

    const-string v2, "error occur while copy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_60

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_5f
    return-void

    :catchall_60
    move-exception p0

    :goto_61
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    :try_start_7
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_49
    .catchall {:try_start_7 .. :try_end_11} :catchall_44

    :try_start_11
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- logfile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ---"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3a} :catch_42
    .catchall {:try_start_11 .. :try_end_3a} :catchall_3f

    goto :goto_31

    :cond_3b
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4c

    :catchall_3f
    move-exception p0

    move-object v0, v1

    goto :goto_45

    :catch_42
    move-object v0, v1

    goto :goto_49

    :catchall_44
    move-exception p0

    :goto_45
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_49
    :goto_49
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private static dumpFiles(Ljava/io/PrintWriter;)V
    .registers 5

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    invoke-static {p0, v3}, Lcom/android/common/debug/OplusFileLog;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public static dumpSharedPreference()V
    .registers 12

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user_de/0/com.android.launcher/shared_prefs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "OplusFileLog"

    if-nez v0, :cond_15

    const-string v0, "dumpSharedPreference: has not sharedPreference in this path"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_40

    aget-object v4, v0, v3

    const-string v5, "dumpSharedPreference vale:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x7530

    const-string/jumbo v7, "sharedPreference"

    invoke-static/range {v6 .. v11}, Lcom/android/common/debug/OplusFileLog;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_40
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static flushAll(Ljava/io/FileDescriptor;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x3

    invoke-static {v2, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public static flushDump()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static getDumpPrintWriter()Ljava/io/PrintWriter;
    .registers 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_cd

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_ca

    if-nez v1, :cond_c8

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher_dump_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    sget-object v3, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_36
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/common/debug/OplusFileLog;->deleteLauncherDumps(I)V

    :cond_51
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_96

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v1, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t---dumpsys_activity_top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v4, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_c8

    :cond_96
    const-string v1, "OplusFileLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDumpPrintWriter failed, dump file not exit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b0} :catch_b1
    .catchall {:try_start_b .. :try_end_b0} :catchall_ca

    goto :goto_c8

    :catch_b1
    move-exception v1

    :try_start_b2
    const-string v2, "OplusFileLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDumpPrintWriter error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    :goto_c8
    monitor-exit v0

    goto :goto_cd

    :catchall_ca
    move-exception v1

    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_b2 .. :try_end_cc} :catchall_ca

    throw v1

    :cond_cd
    :goto_cd
    sget-object v0, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->initHandler()V

    monitor-exit v0

    goto :goto_29

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1

    :cond_f
    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_29

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    monitor-enter v0

    :try_start_1e
    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->resetHandler()V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->initHandler()V

    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1

    :cond_29
    :goto_29
    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getTemporaryDir()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getFileDir()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static iDbTracker(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->printDbTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initHandler()V
    .registers 5

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_56

    const-string v0, "file-logger"

    invoke-static {v0}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string/jumbo v2, "new thread:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", main thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusFileLog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;-><init>(Lcom/android/common/debug/OplusFileLog$1;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    :cond_56
    return-void
.end method

.method public static isTemporaryLogging()Z
    .registers 1

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static synthetic lambda$copyFile$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "."

    const-string v3, ""

    if-nez v1, :cond_46

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-le v1, v4, :cond_32

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_33

    :cond_32
    move-object v5, v3

    :goto_33
    if-le v1, v4, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_44

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_44
    move-object v1, v3

    goto :goto_48

    :cond_46
    move-object v1, v3

    move-object v5, v1

    :goto_48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_50

    move-object p1, v3

    goto :goto_5d

    :cond_50
    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_64

    move-object p2, v3

    :cond_64
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6b

    move-object p3, v3

    :cond_6b
    new-instance v3, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;

    invoke-direct {v3}, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;-><init>()V

    iput-object p0, v3, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;->filePath:Ljava/lang/String;

    invoke-static {p1, p2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_95

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_83

    goto :goto_95

    :cond_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    :cond_95
    :goto_95
    invoke-static {v0, p3}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;->targetFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p0, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string v1, "%s %s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_4e

    const-string v1, "\n"

    invoke-static {v0, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4e
    new-instance p2, Lcom/android/common/debug/OplusFileLog$LogMsg;

    invoke-direct {p2, v0}, Lcom/android/common/debug/OplusFileLog$LogMsg;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    iput-object v1, p2, Lcom/android/common/debug/OplusFileLog$LogMsg;->fileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    sget-object p2, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    if-eqz p2, :cond_6f

    invoke-virtual {p2}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->isBRFileLog()Z

    move-result p2

    if-eqz p2, :cond_6f

    invoke-static {p0, p1, v0}, Lcom/android/launcher/backup/util/RestoreLogHelper;->filterRestoreLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return-void
.end method

.method private static printDbTracker(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const-string p0, "%s %s %s %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/common/debug/OplusFileLog$LogMsg;

    invoke-direct {p1, p0}, Lcom/android/common/debug/OplusFileLog$LogMsg;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    iput-object p0, p1, Lcom/android/common/debug/OplusFileLog$LogMsg;->fileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static printForEver(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const-string p0, "%s %s %s %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/common/debug/OplusFileLog$LogMsg;

    invoke-direct {p1, p0}, Lcom/android/common/debug/OplusFileLog$LogMsg;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "other"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "log-permanent"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/common/debug/OplusFileLog$LogMsg;->targetFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static printRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_CONTENT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p2, v0, p0

    const-string p0, "%s %s %s %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/android/common/debug/OplusFileLog$LogMsg;

    invoke-direct {p2, p0}, Lcom/android/common/debug/OplusFileLog$LogMsg;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "other"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/android/common/debug/OplusFileLog$LogMsg;->targetFilePath:Ljava/lang/String;

    iput-boolean v2, p2, Lcom/android/common/debug/OplusFileLog$LogMsg;->append:Z

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static resetHandler()V
    .registers 4

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "quit thread:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusFileLog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    :cond_46
    return-void
.end method

.method public static setDir(Ljava/io/File;)V
    .registers 2

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->resetHandler()V

    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw p0

    :cond_13
    :goto_13
    sput-object p0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    return-void
.end method

.method public static setTemporaryDir(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V
    .registers 7

    const-string v0, "OplusFileLog"

    if-eqz p0, :cond_6f

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6f

    :cond_f
    sget-object v1, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getFileDir()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    invoke-virtual {v2}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getFileDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-void

    :cond_24
    sput-object p0, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT_FOR_FILE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getFileDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->setFilePath(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTemporaryLogTracing fileDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;->getFileDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    :goto_6f
    const/4 p0, 0x0

    sput-object p0, Lcom/android/common/debug/OplusFileLog;->sTemporaryFileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    const-string/jumbo p0, "stopTemporaryLogTracing"

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
