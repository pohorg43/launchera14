.class public abstract Lcom/oplus/quickstep/utils/DataStorageTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/DataStorageTask$State;,
        Lcom/oplus/quickstep/utils/DataStorageTask$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDataStorageTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStorageTask.kt\ncom/oplus/quickstep/utils/DataStorageTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
    }
.end annotation


# instance fields
.field private currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private needStoreDataAgain:Z

.field private final storedData$delegate:Lh4/f;

.field private final tag:Ljava/lang/String;

.field private final tempData$delegate:Lh4/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_ADD:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    iput-object p1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    sget-object p1, Lcom/oplus/quickstep/utils/DataStorageTask$storedData$2;->INSTANCE:Lcom/oplus/quickstep/utils/DataStorageTask$storedData$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->storedData$delegate:Lh4/f;

    sget-object p1, Lcom/oplus/quickstep/utils/DataStorageTask$tempData$2;->INSTANCE:Lcom/oplus/quickstep/utils/DataStorageTask$tempData$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tempData$delegate:Lh4/f;

    return-void
.end method

.method private final getStoredData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->storedData$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getTempData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tempData$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    sget-object v1, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_RUN:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    if-eq v0, v1, :cond_34

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run - fail, currentState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_ADD:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    goto/16 :goto_b5

    :cond_34
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    const-string v1, "run - start"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    sget-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->RUNNING:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    const-string v1, "run - Store data FIRST"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_b1

    :try_start_57
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getStoredData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/DataStorageTask;->storingData(Ljava/util/List;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_61

    goto :goto_66

    :catchall_61
    move-exception v0

    :try_start_62
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_66
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    const-string v2, "storingData fail"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_73
    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->needStoreDataAgain:Z

    if-eqz v0, :cond_9f

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getStoredData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getStoredData()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getTempData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->needStoreDataAgain:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    const-string v1, "run - Store data AGAIN"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_9f
    sget-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_ADD:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    const-string v1, "run - end"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_62 .. :try_end_b0} :catchall_b1

    goto :goto_b5

    :catchall_b1
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_b5
    :goto_b5
    iget-object p0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final runInExecutor(Ljava/util/concurrent/ExecutorService;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_f
    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    sget-object v1, Lcom/oplus/quickstep/utils/DataStorageTask$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7c

    const/4 p1, 0x2

    if-eq v0, p1, :cond_51

    const/4 p1, 0x3

    if-eq v0, p1, :cond_24

    goto/16 :goto_b2

    :cond_24
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getTempData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getTempData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runInExecutor - Update data while storing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iput-boolean v1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->needStoreDataAgain:Z

    goto :goto_b2

    :cond_51
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getStoredData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getStoredData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runInExecutor - Update data while waiting for storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :cond_7c
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getStoredData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DataStorageTask;->getStoredData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_RUN:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->currentState:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runInExecutor - Start storing data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_ad
    .catchall {:try_start_f .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_b2
    :goto_b2
    iget-object p0, p0, Lcom/oplus/quickstep/utils/DataStorageTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public abstract storingData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation
.end method
