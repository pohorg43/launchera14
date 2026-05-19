.class public abstract Lcom/android/launcher3/model/OplusBaseLoaderResults;
.super Lcom/android/launcher3/model/LoaderResults;
.source ""


# static fields
.field private static final FLING_FIRST_PROTECT_TIME:J = 0x12cL

.field private static final FLING_FIRST_SLEEP_TIME:J = 0x10L

.field private static final TAG:Ljava/lang/String; = "OplusBaseLoaderResults"


# instance fields
.field private final mPendingExecutor:Ljava/util/concurrent/Executor;

.field private final mPendingTasks:Lcom/android/launcher3/util/RunnableList;

.field private final mTaskbarPendingExecutor:Ljava/util/concurrent/Executor;

.field private final mTaskbarPendingTasks:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    new-instance p1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mPendingTasks:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/model/p;

    invoke-direct {p2, p1}, Lcom/android/launcher3/model/p;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mPendingExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mTaskbarPendingTasks:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/model/p;

    invoke-direct {p2, p1}, Lcom/android/launcher3/model/p;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mTaskbarPendingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v3, Lcom/android/launcher3/model/r0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/android/launcher3/model/r0;-><init>(Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-virtual {p0, v3, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method private bindCards(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v3, Lcom/android/launcher/settings/g;

    invoke-direct {v3, v2}, Lcom/android/launcher/settings/g;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, v3, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    return-void
.end method

.method private bindWorkspaceScreenItems(IZZ)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    invoke-static {p1, v3, v0, v6}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-static {p1, v4, v1, v6}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-static {p1, v5, v2, v6}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    const-string v3, "bindWorkspaceScreenItems, screenId = "

    const-string v4, ", item size = "

    invoke-static {v3, p1, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", widget size "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", card size ="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "OplusBaseLoaderResults"

    invoke-static {v3, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/BaseLoaderResults;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindCards(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private checkCallbacks()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "LoaderTask running with no launcher"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic f(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntArray;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$bindWorkspaceScreen$1(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method private static filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">(I",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/model/x0;->b:Lcom/android/launcher3/model/x0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    sget-object v1, Lcom/android/launcher3/model/y0;->a:Lcom/android/launcher3/model/y0;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_38

    if-nez p3, :cond_17

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v2, p0, :cond_17

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_17

    :cond_38
    const/16 v3, -0x65

    if-ne v2, v3, :cond_47

    if-eqz p3, :cond_17

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_17

    :cond_47
    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_17

    :cond_56
    return-void
.end method

.method private flingFirstWhenLoad()V
    .registers 8

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-nez p0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    move v3, v2

    :goto_17
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v4

    if-eqz v4, :cond_3b

    if-eqz v3, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gez v3, :cond_2c

    move v3, v2

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    const-wide/16 v4, 0x10

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_17

    :catch_33
    move-exception p0

    const-string v0, "flingFirst exception :"

    const-string v1, "OplusBaseLoaderResults"

    invoke-static {v0, p0, v1}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$bindCards$4(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/model/OplusBaseLoaderResults;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$finishBindWorkspace$11(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$bindAppWidgets$3(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$filterCurrentWorkspaceItems$12(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$startBinding$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$bindVirtualFolder$14(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private static synthetic lambda$bindAppWidgets$3(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic lambda$bindCards$4(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic lambda$bindVirtualFolder$14(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic lambda$bindWorkspaceItems$2(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p3, p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic lambda$bindWorkspaceScreen$1(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntArray;)V
    .registers 2

    invoke-interface {p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method private static synthetic lambda$filterCurrentWorkspaceItems$12(Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return p0
.end method

.method private synthetic lambda$finishBindWorkspace$10()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    return-void
.end method

.method private synthetic lambda$finishBindWorkspace$11(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    instance-of v0, p2, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mTaskbarPendingTasks:Lcom/android/launcher3/util/RunnableList;

    invoke-interface {p2, p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V

    goto :goto_f

    :cond_a
    iget-object p0, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mPendingTasks:Lcom/android/launcher3/util/RunnableList;

    invoke-interface {p2, p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V

    :goto_f
    return-void
.end method

.method private static synthetic lambda$finishBindWorkspace$8(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V
    .registers 2

    invoke-interface {p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method private static synthetic lambda$finishBindWorkspace$9(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V
    .registers 2

    invoke-interface {p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method private static synthetic lambda$loadAndBindSuggestedFolder$13(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic lambda$rebindForEmptySpaceOnFirstScreen$5(Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string/jumbo v0, "rebindForEmptySpaceOnFirstScreen, cp.getClassName: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseLoaderResults"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$rebindForEmptySpaceOnFirstScreen$6(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/Launcher;Landroid/util/Pair;)V
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object p0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v3, -0x64

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    return-void
.end method

.method private static synthetic lambda$rebindForEmptySpaceOnFirstScreen$7(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic lambda$startBinding$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 1

    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->clearPendingBinds()V

    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->startBinding()V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/model/OplusBaseLoaderResults;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$finishBindWorkspace$10()V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$loadAndBindSuggestedFolder$13(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$bindWorkspaceItems$2(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic p(Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$rebindForEmptySpaceOnFirstScreen$5(Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$rebindForEmptySpaceOnFirstScreen$7(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/Launcher;Landroid/util/Pair;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$rebindForEmptySpaceOnFirstScreen$6(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/Launcher;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$finishBindWorkspace$8(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->lambda$finishBindWorkspace$9(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method private updateCurrentStandardModeNumHotseatIcons(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->canShowHotseatCenterMode()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iput v0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    return-void

    :cond_23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    return-void
.end method


# virtual methods
.method public bindHotSeatItems(ZZ)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    const-string v1, "bindHotSeatItems, size = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseLoaderResults"

    invoke-static {v2, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->updateCurrentStandardModeNumHotseatIcons(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/model/BaseLoaderResults;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public bindVirtualFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 8

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eqz v0, :cond_1c

    array-length v1, v0

    if-lez v1, :cond_1c

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/android/launcher3/model/o;

    invoke-direct {v5, p1, v3}, Lcom/android/launcher3/model/o;-><init>(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return-void
.end method

.method public bindWorkspaceItems(IZZZ)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindWorkspaceItems, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hotSeat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseLoaderResults"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_38

    if-eqz p3, :cond_38

    if-gez p1, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindWorkspaceItems, screen id must > 0 when not bind hot seat! screenId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    if-eqz p2, :cond_3e

    invoke-virtual {p0, p3, p4}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindHotSeatItems(ZZ)V

    goto :goto_41

    :cond_3e
    invoke-direct {p0, p1, p3, p4}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceScreenItems(IZZ)V

    :goto_41
    return-void
.end method

.method public bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    add-int/lit8 v2, v1, 0xc

    if-gt v2, v0, :cond_e

    const/16 v3, 0xc

    goto :goto_10

    :cond_e
    sub-int v3, v0, v1

    :goto_10
    new-instance v4, Lcom/android/launcher3/model/j;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v1, v3, v5}, Lcom/android/launcher3/model/j;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {p0, v4, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    move v1, v2

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public bindWorkspaceScreen(Lcom/android/launcher3/util/IntArray;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->checkCallbacks()V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v1, v0

    if-lez v1, :cond_1b

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/android/launcher3/model/s;

    invoke-direct {v5, v3, p1}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntArray;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_d

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->flingFirstWhenLoad()V

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/model/BaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public finishBindCurrentScreens()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eqz v0, :cond_1d

    array-length v1, v0

    if-lez v1, :cond_1d

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/core/widget/b;

    invoke-direct {v5, v3}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public finishBindHotSeat()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/model/w0;->a:Lcom/android/launcher3/model/w0;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public finishBindHotseatForFoldStateChange(Lcom/android/launcher3/util/IntSet;)V
    .registers 7

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string v0, "Hotseat_expand"

    const-string v1, "OplusBaseLoaderResults"

    const-string v2, "finishBindHotseatForFoldStateChange,setEnableUpdateExpandFlag true"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    array-length v2, v2

    if-lez v2, :cond_35

    const-string v2, "finishBindHotseatForFoldStateChange,mCallbacksList.length:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v4, v4

    invoke-static {v2, v4, v0, v1}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v0, p0

    move v1, v3

    :goto_27
    if-ge v1, v0, :cond_35

    aget-object v2, p0, v1

    instance-of v4, v2, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    if-eqz v4, :cond_32

    invoke-interface {v2, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_35
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public finishBindWorkspace(ZLcom/android/launcher3/util/IntSet;)V
    .registers 9

    iget-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mPendingExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mTaskbarPendingExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eqz v1, :cond_34

    array-length v2, v1

    if-lez v2, :cond_34

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    instance-of v5, v4, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    if-eqz v5, :cond_1e

    new-instance v5, Lcom/android/launcher3/model/s;

    invoke-direct {v5, v4, p2}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_26

    :cond_1e
    new-instance v5, Lcom/android/launcher3/model/o;

    invoke-direct {v5, v4, p2}, Lcom/android/launcher3/model/o;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {p1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_26
    iget-object v5, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v5}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_34
    new-instance v0, Landroidx/core/widget/a;

    invoke-direct {v0, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/model/OplusBaseLoaderResults;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/launcher3/model/h;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/model/h;-><init>(Lcom/android/launcher3/model/OplusBaseLoaderResults;Lcom/android/launcher3/util/IntSet;)V

    iget-object p2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public getCurrentScreenIds(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->checkCallbacks()V

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    new-instance p0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object p0

    :cond_f
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;
    .registers 3

    if-nez p2, :cond_8

    if-nez p1, :cond_5

    goto :goto_8

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;->mPendingExecutor:Ljava/util/concurrent/Executor;

    return-object p0

    :cond_8
    :goto_8
    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    return-object p0
.end method

.method public loadAndBindSuggestedFolder()V
    .registers 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLayoutLoadFromRestore()Z

    move-result v1

    const-string v2, "OplusBaseLoaderResults"

    if-eqz v1, :cond_10

    const-string v0, "loadAndBindSuggestedFolder return is from restore"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportAllAppsFolder()Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v0, "loadAndBindSuggestedFolder:isSupportRecommendApp:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPreAssetPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getMPreAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    invoke-static {}, Lcom/android/launcher3/OplusLauncherProvider;->isLoadingFromDefaultXml()Z

    move-result v1

    if-nez v1, :cond_48

    const-string v0, "loadAndBindSuggestedFolder isLoadingFromDefaultXml:false"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_48
    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->isSwitchDisable()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v0, "loadPreMarketInfos isWitchEnable is false"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/android/launcher/model/BgDataModelHelper;->findFolderByRecommendId(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAndBindSuggestedFolder:loadStartTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",folderInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_163

    iget-object v1, v0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eqz v1, :cond_163

    array-length v5, v1

    if-lez v5, :cond_163

    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_89
    if-ge v7, v5, :cond_163

    aget-object v8, v1, v7

    instance-of v9, v8, Lcom/android/launcher/Launcher;

    if-nez v9, :cond_94

    move v10, v6

    goto/16 :goto_15e

    :cond_94
    check-cast v8, Lcom/android/launcher/Launcher;

    iget-object v9, v0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v9, v9, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v9, v9, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v9}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iget-object v11, v0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v12, v0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v13, v12, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v13, v13, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-static {v11, v12, v13, v9}, Lcom/android/launcher/model/FindSpaceHelper;->getOccupancyForSpecialScreen(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;I)Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [I

    invoke-virtual {v11, v12}, Lcom/android/launcher3/util/GridOccupancy;->findConsecutiveVacantCellInTail([I)Z

    move-result v13

    const-string v14, "loadAndBindSuggestedFolder, vacantOut: "

    invoke-static {v14}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v15, v12, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v12, v10

    const-string v10, ",lastScreenIndex:"

    const-string v6, " lastOccupied:"

    invoke-static {v14, v15, v10, v9, v6}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " found:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_15d

    invoke-static {}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getMPreMarketAppInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_f6

    const-string v0, "loadAndBindSuggestedFolder mPreMarketAppInfos size is 0"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f6
    invoke-static {}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v6

    const/4 v10, 0x0

    aget v11, v12, v10

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v6, v9, v11, v12}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->addSuggestedFolder(III)I

    move-result v6

    invoke-static {}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->updatePreWorkSpaceItems(I)V

    invoke-static {}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getMSuggestedFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v6

    if-eqz v6, :cond_15e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadAndBindSuggestedFolder:folderInfo："

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v12, Lcom/android/launcher3/model/o;

    invoke-direct {v12, v8, v9}, Lcom/android/launcher3/model/o;-><init>(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    if-nez v8, :cond_147

    const-string v0, "loadAndBindSuggestedFolder: appState == null"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_147
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v8, v8, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {v8}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllApps()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->getMAllMarketInfoList()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v6, v9, v8, v12, v11}, Lcom/android/launcher3/model/data/FolderInfo;->updateRecommendContent(Ljava/util/List;Ljava/util/List;ZI)V

    goto :goto_15e

    :cond_15d
    const/4 v10, 0x0

    :cond_15e
    :goto_15e
    add-int/lit8 v7, v7, 0x1

    move v6, v10

    goto/16 :goto_89

    :cond_163
    const-string v0, "loadAndBindSuggestedFolder:cost:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyBubbleRefresh(I)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onAllActivityListUpdate(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public preBindAllApps()V
    .registers 1

    return-void
.end method

.method public rebindForEmptySpaceOnFirstScreen()V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eqz v0, :cond_18f

    array-length v1, v0

    if-lez v1, :cond_18f

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_18f

    aget-object v4, v0, v3

    instance-of v5, v4, Lcom/android/launcher/Launcher;

    if-nez v5, :cond_14

    goto/16 :goto_18b

    :cond_14
    check-cast v4, Lcom/android/launcher/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v6, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v6, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v7, v7, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-static {v5, v6, v7, v2}, Lcom/android/launcher/model/FindSpaceHelper;->getOccupancyForSpecialScreen(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;I)Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/GridOccupancy;->findConsecutiveVacantCellsInTail(Ljava/util/List;)V

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rebindForEmptySpaceOnFirstScreen, vacantOut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "  Occupied:"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const-string v5, "OplusBaseLoaderResults"

    invoke-static {v5, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18b

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f030037

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rebindForEmptySpaceOnFirstScreen, class list for filling: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v12, v12, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v12}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_99
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/model/data/FolderInfo;

    iget v14, v13, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v13, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lcom/android/launcher/badge/e;

    invoke-direct {v14, v7}, Lcom/android/launcher/badge/e;-><init>(Ljava/util/List;)V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lcom/android/common/util/z;

    invoke-direct {v14, v10, v8}, Lcom/android/common/util/z;-><init>(Ljava/util/List;I)V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_99

    :cond_c6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "rebindForEmptySpaceOnFirstScreen, targetItems: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_df
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_109

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_ef
    :goto_ef
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_df

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v13}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_ef

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    :cond_109
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_112
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_166

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_125

    goto :goto_166

    :cond_125
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v12, v10, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v12, :cond_143

    iget-object v13, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v14, Lcom/android/common/debug/c;

    invoke-direct {v14, v12, v10, v4, v8}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/Launcher;Landroid/util/Pair;)V

    invoke-virtual {v13, v14}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_143
    new-instance v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v12, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v2, v12, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/16 v8, -0x64

    iput v8, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_112

    :cond_166
    :goto_166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rebindForEmptySpaceOnFirstScreen, toBeBindList: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18b

    iget-object v5, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lcom/android/launcher3/model/o;

    invoke-direct {v6, v4, v7}, Lcom/android/launcher3/model/o;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_18b
    :goto_18b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_18f
    return-void
.end method

.method public rebindWidgets(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_12
    :goto_12
    const-string p0, "OplusBaseLoaderResults"

    const-string/jumbo p1, "rebindWidgets, appWidgetInfoList is null or appWidgetInfoList isEmpty"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startBinding()V
    .registers 7

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->checkCallbacks()V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mMyBindingId:I

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_2d

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->checkCallbacks()V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v1, v0

    if-lez v1, :cond_2c

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v5, v3}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2c
    return-void

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public startHotseatBindingForFoldStateChange()V
    .registers 7

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string v0, "Hotseat_expand"

    const-string v2, "OplusBaseLoaderResults"

    const-string/jumbo v3, "startHotseatBindingForFoldStateChange,setEnableUpdateExpandFlag false"

    invoke-static {v0, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->checkCallbacks()V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_16
    iget-object v2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v3, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mMyBindingId:I

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_5e

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->checkCallbacks()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/OplusHotseat;->resetLayout(Z)V

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v2, v0

    if-lez v2, :cond_5d

    array-length v2, v0

    :goto_45
    if-ge v1, v2, :cond_5d

    aget-object v3, v0, v1

    instance-of v4, v3, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    if-eqz v4, :cond_5a

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/core/app/a;

    invoke-direct {v5, v3}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_5d
    return-void

    :catchall_5e
    move-exception p0

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method
