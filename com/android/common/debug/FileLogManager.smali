.class public final Lcom/android/common/debug/FileLogManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileLogManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileLogManager.kt\ncom/android/common/debug/FileLogManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1#2:107\n1855#3,2:108\n1855#3,2:110\n*S KotlinDebug\n*F\n+ 1 FileLogManager.kt\ncom/android/common/debug/FileLogManager\n*L\n83#1:108,2\n103#1:110,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/debug/FileLogManager;

.field private static final TAG:Ljava/lang/String; = "FileLogManager"

.field private static final mFileLogHelpers:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/common/debug/FileLogHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mHandler:Landroid/os/Handler;

.field private static mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/debug/FileLogManager;

    invoke-direct {v0}, Lcom/android/common/debug/FileLogManager;-><init>()V

    sput-object v0, Lcom/android/common/debug/FileLogManager;->INSTANCE:Lcom/android/common/debug/FileLogManager;

    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    sput-object v0, Lcom/android/common/debug/FileLogManager;->mFileLogHelpers:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/common/debug/FileLogManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$processFileLogHelper(Lcom/android/common/debug/FileLogManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/debug/FileLogManager;->processFileLogHelper(I)V

    return-void
.end method

.method private final addHelper(Lcom/android/common/debug/FileLogHelper;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Lcom/android/common/debug/FileLogHelper;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    sget-object p0, Lcom/android/common/debug/FileLogManager;->mFileLogHelpers:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Lcom/android/common/debug/FileLogHelper;->getType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private final clearHelpers()V
    .registers 3

    sget-object p0, Lcom/android/common/debug/FileLogManager;->mFileLogHelpers:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/debug/FileLogHelper;

    sget-object v1, Lcom/android/common/debug/FileLogManager;->INSTANCE:Lcom/android/common/debug/FileLogManager;

    invoke-virtual {v1}, Lcom/android/common/debug/FileLogManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/common/debug/FileLogHelper;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_6

    :cond_22
    sget-object p0, Lcom/android/common/debug/FileLogManager;->mFileLogHelpers:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private final getOtherValidHelper(I)Lcom/android/common/debug/FileLogHelper;
    .registers 4

    sget-object p0, Lcom/android/common/debug/FileLogManager;->mFileLogHelpers:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/debug/FileLogHelper;

    invoke-virtual {v0}, Lcom/android/common/debug/FileLogHelper;->getType()I

    move-result v1

    if-eq v1, p1, :cond_6

    invoke-virtual {v0}, Lcom/android/common/debug/FileLogHelper;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private final processFileLogHelper(I)V
    .registers 5

    sget-object v0, Lcom/android/common/debug/FileLogManager;->mFileLogHelpers:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/debug/FileLogHelper;

    if-eqz v1, :cond_76

    const-string/jumbo v2, "stopPersistentLog: helpers:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dirName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/common/debug/FileLogHelper;->getFileDirName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isValid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/common/debug/FileLogHelper;->isValid()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", currentLogDir:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->getPersistentLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FileLogManager"

    invoke-static {v2, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/common/debug/FileLogHelper;->isValid()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/android/common/debug/LogUtils;->getPersistentLog()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-direct {p0, p1}, Lcom/android/common/debug/FileLogManager;->getOtherValidHelper(I)Lcom/android/common/debug/FileLogHelper;

    move-result-object v0

    if-eqz v0, :cond_6d

    const-string/jumbo v1, "stopPersistentLog failed: validHelper:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/common/debug/FileLogHelper;->getFileDirName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    :cond_6d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->stopPersistentLog()V

    invoke-direct {p0}, Lcom/android/common/debug/FileLogManager;->clearHelpers()V

    :cond_73
    :goto_73
    invoke-direct {p0, p1}, Lcom/android/common/debug/FileLogManager;->removeHelper(I)V

    :cond_76
    return-void
.end method

.method private final removeHelper(I)V
    .registers 5

    sget-object v0, Lcom/android/common/debug/FileLogManager;->mFileLogHelpers:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/debug/FileLogHelper;

    if-eqz v1, :cond_e

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/common/debug/FileLogHelper;->setValid(Z)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/common/debug/FileLogManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_17
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .registers 3

    sget-object p0, Lcom/android/common/debug/FileLogManager;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_1b

    sget-object p0, Lcom/android/common/debug/FileLogManager;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    sget-object v0, Lcom/android/common/debug/FileLogManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_16

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/common/debug/FileLogManager$getHandler$1$1;

    invoke-direct {v1, v0}, Lcom/android/common/debug/FileLogManager$getHandler$1$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/common/debug/FileLogManager;->mHandler:Landroid/os/Handler;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/android/common/debug/FileLogManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final startPersistentLog(Lcom/android/common/debug/FileLogHelper;)V
    .registers 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/common/debug/FileLogHelper;->getFileLogInfo()Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/debug/LogUtils;->startPersistentLog(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V

    invoke-direct {p0, p1}, Lcom/android/common/debug/FileLogManager;->addHelper(Lcom/android/common/debug/FileLogHelper;)V

    return-void
.end method

.method public final stopPersistentLog(IJ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/common/debug/FileLogManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    return-void
.end method
