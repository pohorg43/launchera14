.class public final Lcom/oplus/utrace/hlog/HLogUploader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final handler$delegate:Lh4/f;

.field private final logFilePath:Ljava/lang/String;

.field private final logPrefix:Ljava/lang/String;

.field private final onFinish:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/oplus/utrace/hlog/PushData;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private final pushData:Lcom/oplus/utrace/hlog/PushData;

.field private state:Lcom/oplus/utrace/hlog/UploadState;

.field private final targetPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/oplus/utrace/hlog/PushData;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/oplus/utrace/hlog/PushData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/utrace/hlog/PushData;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinish"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->executor:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    iput-object p4, p0, Lcom/oplus/utrace/hlog/HLogUploader;->onFinish:Lkotlin/jvm/functions/Function1;

    sget-object p2, Lcom/oplus/utrace/hlog/UploadState;->INIT:Lcom/oplus/utrace/hlog/UploadState;

    iput-object p2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    invoke-virtual {p3}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oplus/utrace/hlog/HLogUtils;->defaultLogUploadPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logFilePath:Ljava/lang/String;

    const/16 p1, 0x5b

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    new-instance p1, Lcom/oplus/utrace/hlog/HLogUploader$handler$2;

    invoke-direct {p1, p0}, Lcom/oplus/utrace/hlog/HLogUploader$handler$2;-><init>(Lcom/oplus/utrace/hlog/HLogUploader;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->handler$delegate:Lh4/f;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->handleMessage$lambda-9(Lcom/oplus/utrace/hlog/HLogUploader;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/utrace/hlog/HLogUploader;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/utrace/hlog/HLogUploader;->receiveLogFiles$lambda-13(Lcom/oplus/utrace/hlog/HLogUploader;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->onUploadFinish$lambda-29(Lcom/oplus/utrace/hlog/HLogUploader;)V

    return-void
.end method

.method private final checkIfUpload()Z
    .registers 9

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "targetPkgs.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    move v1, v3

    goto :goto_3a

    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_1a

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_32

    goto :goto_1a

    :cond_32
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    :goto_3a
    if-nez v1, :cond_40

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->doUpload()V

    goto :goto_95

    :cond_40
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    const-string v6, " checkIfUpload() pendingCount="

    const-string v7, " pending="

    invoke-static {v4, v5, v6, v1, v7}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5f
    :goto_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_5f

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_84
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTrace.Sdk.HLogUploader"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :goto_95
    return v2
.end method

.method private final checkUploadFlag(Ljava/lang/String;)Lcom/oplus/utrace/hlog/UploadFlag;
    .registers 4

    sget-object v0, Lcom/oplus/utrace/lib/PackageNames;->INSTANCE:Lcom/oplus/utrace/lib/PackageNames;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/PackageNames;->getUTRACE_DEMO_APPS()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/PushData;->getExtras()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "suggested_upload_flag"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    check-cast p0, Ljava/lang/Integer;

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    if-nez p0, :cond_28

    goto :goto_36

    :cond_28
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget-object v0, Lcom/oplus/utrace/hlog/UploadFlag;->Companion:Lcom/oplus/utrace/hlog/UploadFlag$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/utrace/hlog/UploadFlag$Companion;->from(I)Lcom/oplus/utrace/hlog/UploadFlag;

    move-result-object p0

    if-nez p0, :cond_35

    goto :goto_36

    :cond_35
    return-object p0

    :cond_36
    :goto_36
    sget-object p0, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogUtils;->getDefaultUploadFlags$utrace_sdk_fullRelease()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/oplus/utrace/hlog/UploadFlag;->CAN_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/hlog/UploadFlag;

    return-object p0
.end method

.method private final copyLogFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 12

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    const-string v3, " copyLogFile() fileName="

    invoke-static {v1, v2, v3, p1}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogUploader"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_24
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :goto_2e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/4 v1, 0x0

    :try_start_32
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_8f

    :try_start_3b
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_88

    const/4 v5, 0x1

    const/16 v6, 0x400

    :try_start_43
    new-array v6, v6, [B

    move v7, v1

    :goto_46
    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_79

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " total="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_7e

    const/4 v1, 0x0

    :try_start_70
    invoke-static {p2, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_85

    :try_start_73
    invoke-static {v4, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_95

    :catchall_77
    move-exception p1

    goto :goto_91

    :cond_79
    :try_start_79
    invoke-virtual {p2, v6, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7e

    add-int/2addr v7, v8

    goto :goto_46

    :catchall_7e
    move-exception p1

    :try_start_7f
    throw p1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    :catchall_80
    move-exception v1

    :try_start_81
    invoke-static {p2, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception p1

    move v1, v5

    goto :goto_89

    :catchall_88
    move-exception p1

    :goto_89
    :try_start_89
    throw p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception p2

    :try_start_8b
    invoke-static {v4, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception p1

    move v5, v1

    :goto_91
    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_95
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_9c

    goto :goto_c4

    :cond_9c
    if-eqz v5, :cond_a1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_a1
    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " copyLogFile() deleteOnFailure="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v2, p0, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c4
    return-void
.end method

.method public static synthetic d(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->handleMessage$lambda-10(Lcom/oplus/utrace/hlog/HLogUploader;)V

    return-void
.end method

.method private final doUpload()V
    .registers 6

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doUpload() pushData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogUploader"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    sget-object v1, Lcom/oplus/utrace/hlog/UploadState;->STARTED:Lcom/oplus/utrace/hlog/UploadState;

    if-eq v0, v1, :cond_30

    return-void

    :cond_30
    sget-object v0, Lcom/oplus/utrace/hlog/UploadState;->UPLOADING:Lcom/oplus/utrace/hlog/UploadState;

    iput-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.utrace.hlog.HLogUploadService.upload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    const-class v3, Lcom/oplus/utrace/hlog/HLogUploadService;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/PushData;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "push_data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getOuid$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ouid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logFilePath:Ljava/lang/String;

    const-string v3, "log_path"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sendFrom"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oplus/utrace/lib/PackageNames;->INSTANCE:Lcom/oplus/utrace/lib/PackageNames;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/PackageNames;->getUTRACE_DEMO_APPS()[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/PushData;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v3, "simulate_upload_timeout"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_91
    :try_start_91
    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_98

    goto :goto_9d

    :catchall_98
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_9d
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_b5

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_b5
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startInThread() startService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->finish()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->start$lambda-0(Lcom/oplus/utrace/hlog/HLogUploader;)V

    return-void
.end method

.method private final finish()V
    .registers 6

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finish() pushData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogUploader"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/hlog/UploadState;->FIN:Lcom/oplus/utrace/hlog/UploadState;

    iput-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3b

    goto :goto_47

    :cond_3b
    const/4 v2, 0x0

    array-length v3, v1

    :goto_3d
    if-ge v2, v3, :cond_47

    aget-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_3d

    :cond_47
    :goto_47
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->onFinish:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->handler$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private static final handleMessage$lambda-10(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->finish()V

    return-void
.end method

.method private static final handleMessage$lambda-9(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->checkIfUpload()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->finish()V

    :cond_e
    return-void
.end method

.method private static final onUploadFinish$lambda-29(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->finish()V

    return-void
.end method

.method private static final receiveLogFiles$lambda-13(Lcom/oplus/utrace/hlog/HLogUploader;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetPkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/utrace/hlog/HLogUploader;->receiveLogFilesInThread(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    :try_start_26
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_1a

    :catchall_2a
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    goto :goto_1a

    :cond_2f
    return-void
.end method

.method private final receiveLogFilesInThread(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    const-string v3, " receiveLogFilesInThread() pkg="

    const-string v4, " fds.size="

    invoke-static {v1, v2, v3, p1, v4}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogUploader"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    sget-object v1, Lcom/oplus/utrace/hlog/UploadState;->STARTED:Lcom/oplus/utrace/hlog/UploadState;

    if-eq v0, v1, :cond_31

    return-void

    :cond_31
    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    return-void

    :cond_3a
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_42
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :try_start_5a
    invoke-direct {p0, v1, v0}, Lcom/oplus/utrace/hlog/HLogUploader;->copyLogFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_60

    goto :goto_65

    :catchall_60
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_65
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6c

    goto :goto_42

    :cond_6c
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " receiveLogFilesInThread() copyLogFile exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    :cond_88
    iget-object p2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->checkIfUpload()Z

    move-result p1

    if-eqz p1, :cond_9d

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9d
    return-void
.end method

.method private final sendBroadcasts()I
    .registers 14

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.pantanal.log.upload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/PushData;->getBusiness()Ljava/lang/String;

    move-result-object v1

    const-string v2, "business"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v1

    const-string v3, "traceId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/PushData;->getBeginTime()J

    move-result-wide v1

    const-string v3, "startTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/PushData;->getEndTime()J

    move-result-wide v1

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/PushData;->getUseWifi()Z

    move-result v1

    const-string v2, "useWifi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "maxFileSize"

    const-wide/32 v2, 0x300000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendFrom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oplus/utrace/lib/PackageNames;->INSTANCE:Lcom/oplus/utrace/lib/PackageNames;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/PackageNames;->getUTRACE_DEMO_APPS()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/PushData;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "simulate_fd_timeout"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_78
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oplus/utrace/hlog/HLogUploader;->checkUploadFlag(Ljava/lang/String;)Lcom/oplus/utrace/hlog/UploadFlag;

    move-result-object v4

    sget-object v5, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    const-string v8, " sendBroadcasts() packageName="

    const-string v9, " uploadFlag="

    invoke-static {v6, v7, v8, v3, v9}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTrace.Sdk.HLogUploader"

    invoke-virtual {v5, v7, v6}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/oplus/utrace/hlog/UploadFlag;->NEED_PROXY:Lcom/oplus/utrace/hlog/UploadFlag;

    if-eq v4, v6, :cond_c0

    iget-object v10, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c0
    sget-object v10, Lcom/oplus/utrace/hlog/UploadFlag;->NO_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    if-ne v4, v10, :cond_c5

    goto :goto_83

    :cond_c5
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/oplus/utrace/hlog/UploadFlag;->getValue()I

    move-result v11

    const-string v12, "uploadFlag"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_d6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " context="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " intent="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oplus/utrace/hlog/HLogUploader;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-ne v4, v6, :cond_10f

    add-int/lit8 v1, v1, 0x1

    :cond_10f
    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_111
    .catchall {:try_start_d6 .. :try_end_111} :catchall_112

    goto :goto_117

    :catchall_112
    move-exception v3

    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_117
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_11f

    goto/16 :goto_83

    :cond_11f
    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sendBroadcasts exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_83

    :cond_13c
    return v1
.end method

.method private static final start$lambda-0(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->startInThread()V

    return-void
.end method

.method private final startInThread()V
    .registers 6

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startInThread() pushData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogUploader"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    sget-object v1, Lcom/oplus/utrace/hlog/UploadState;->INIT:Lcom/oplus/utrace/hlog/UploadState;

    if-eq v0, v1, :cond_30

    return-void

    :cond_30
    sget-object v0, Lcom/oplus/utrace/hlog/UploadState;->STARTED:Lcom/oplus/utrace/hlog/UploadState;

    iput-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->state:Lcom/oplus/utrace/hlog/UploadState;

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->pushData:Lcom/oplus/utrace/hlog/PushData;

    invoke-virtual {v0}, Lcom/oplus/utrace/hlog/PushData;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v4, v3}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4f
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_66
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    :cond_7e
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startInThread() targetPkgs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/utrace/hlog/HLogUploader;->targetPkgs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->sendBroadcasts()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startInThread() sendBroadcasts returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_c2

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->finish()V

    return-void

    :cond_c2
    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "UTrace.Sdk.HLogUploader"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_28

    const/4 v2, 0x2

    if-eq p1, v2, :cond_10

    goto :goto_3f

    :cond_10
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    const-string v3, " handleMessage() MSG_FINISH"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/oplus/utrace/hlog/HLogUploader;)V

    invoke-static {p1, v0}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    goto :goto_3f

    :cond_28
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    const-string v3, " handleMessage() MSG_UPLOAD"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/utrace/hlog/HLogUploader;)V

    invoke-static {p1, v0}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    :goto_3f
    return v1
.end method

.method public final onUploadFinish()V
    .registers 4

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogUploader;->logPrefix:Ljava/lang/String;

    const-string v2, " onUploadFinish()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogUploader"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/oplus/utrace/hlog/HLogUploader;)V

    invoke-static {v0, v1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final receiveLogFiles(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "targetPkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/quickstep/f1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/f1;-><init>(Lcom/oplus/utrace/hlog/HLogUploader;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploader;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/utrace/hlog/HLogUploader;)V

    invoke-static {v0, v1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method
