.class public Lcom/oplus/quickstep/memory/CleanedTaskRecorder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final REMOVETASK_DELAY_TORLERANCE:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "CleanedTaskRecorder"


# instance fields
.field private final mCleanedTaskids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLastCleanAllTime:J

.field private mRunningTaskId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mRunningTaskId:I

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private filterTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 7

    const/4 p0, 0x1

    if-eqz p3, :cond_44

    iget-object v0, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_8

    goto :goto_44

    :cond_8
    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_f

    return p0

    :cond_f
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p2

    if-nez p2, :cond_44

    if-eqz p1, :cond_2e

    iget-object p2, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p2, v0, :cond_2e

    goto :goto_44

    :cond_2e
    if-eqz p1, :cond_43

    iget-object p2, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    return p0

    :cond_43
    const/4 p0, 0x0

    :cond_44
    :goto_44
    return p0
.end method


# virtual methods
.method public clearCleanTaskRecord()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearTaskRecorder(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_27
    return-void
.end method

.method public isCleanedTask(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->isNeedCheck()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mRunningTaskId:I

    if-ne v0, p1, :cond_b

    goto :goto_16

    :cond_b
    iget-object p0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedCheck()Z
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mLastCleanAllTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p0, v0, v2

    if-gez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public onCleanAllTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mLastCleanAllTime:J

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseRecentsModel;->getLastLoadedTask()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "CleanedTaskRecorder"

    if-lez v1, :cond_7f

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/GroupTask;

    iget-object v4, v2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1, v0, v4}, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->filterTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    iget-object v4, v2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1, v0, v4}, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->filterTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_6c
    const-string p1, "onCleanAllTask: mCleanedTaskIds = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mCleanedTaskids:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_7f
    const-string p0, "onCleanAllTask: mCleanedTaskIds empty."

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    return-void
.end method

.method public setRunningTaskId(I)V
    .registers 5

    const-string v0, "setRunningTaskId: "

    const-string v1, "QuickStep"

    const-string v2, "CleanedTaskRecorder"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oplus/quickstep/memory/CleanedTaskRecorder;->mRunningTaskId:I

    return-void
.end method
