.class public Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer;
.implements Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskbarModelCallbacks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskbarModelCallbacks.kt\ncom/android/launcher3/taskbar/OplusTaskbarModelCallbacks\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,682:1\n1864#2,3:683\n59#3:686\n59#3:687\n56#3:688\n24#3:689\n76#3,4:690\n56#3:694\n*S KotlinDebug\n*F\n+ 1 OplusTaskbarModelCallbacks.kt\ncom/android/launcher3/taskbar/OplusTaskbarModelCallbacks\n*L\n110#1:683,3\n123#1:686\n338#1:687\n374#1:688\n378#1:689\n529#1:690,4\n613#1:694\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$Companion;

.field private static final MAX_SUBSCRIBE_ITEM_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OplusTaskbarModelCallbacks"

.field private static final TASK_HANDLE_MODIFY:Ljava/lang/String; = "handleItemsModifies"


# instance fields
.field private final mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mDeferTaskOnLauncherReady:Ljava/lang/Runnable;

.field private final mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

.field private final mExpandRegionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsLayoutRtl:Z

.field private final mMaxItems:I

.field private final mOnExpandDataChangeListener:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;

.field private final mOnSubscribeDataChangeListener:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;

.field private final mPendingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/taskbar/NamedTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistRegionItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribeDataManager:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

.field private final mSubscribeRegionItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/OplusTaskbarView;)V
    .registers 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    new-instance p2, Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeRegionItems:Landroid/util/SparseArray;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandRegionItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_30

    const/16 p2, 0xd

    goto :goto_32

    :cond_30
    const/16 p2, 0xc

    :goto_32
    iput p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mMaxItems:I

    new-instance p2, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    invoke-direct {p2, p1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeDataManager:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    new-instance p2, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mOnSubscribeDataChangeListener:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;

    new-instance p2, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-direct {p2, p1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    new-instance p2, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mOnExpandDataChangeListener:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mIsLayoutRtl:Z

    return-void
.end method

.method public static final synthetic access$checkAndRun(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkAndRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$enqueue(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/taskbar/NamedTask;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->enqueue(Lcom/android/launcher3/taskbar/NamedTask;Z)V

    return-void
.end method

.method public static final synthetic access$onAddSubscribeItem(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->onAddSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static final synthetic access$onRemoveSubscribeItem(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->onRemoveSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static final synthetic access$updateExpandData(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->updateExpandData(Ljava/util/List;)V

    return-void
.end method

.method private static final bindItemsModified$lambda$6(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;ILjava/util/List;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsModifies(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->commitItemsToUI$lambda$8(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Z)V

    return-void
.end method

.method private final checkAndRun(Ljava/lang/Runnable;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSGestureToHomeWatcher()Lcom/android/launcher3/taskbar/AnimatorWatcher;

    move-result-object v1

    const-string v2, "OplusTaskbarModelCallbacks"

    const-string v3, "Taskbar"

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v1, "checkAndRun animator#"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/animation/Animator;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is running. deffer run task"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;-><init>(Landroid/animation/Animator;Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4f

    :cond_38
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/AnimatorWatcher;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "checkAndRun gestureToHomeWatcher is running. deffer run task"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;-><init>(Lcom/android/launcher3/taskbar/AnimatorWatcher;Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/AnimatorWatcher;->addListener(Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;)V

    goto :goto_4f

    :cond_4c
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_4f
    return-void
.end method

.method private final checkStashTaskbar()V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getSubscribeDataItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandRegionItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_22

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_18

    move v0, v4

    goto :goto_19

    :cond_18
    move v0, v3

    :goto_19
    if-eqz v0, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    move v3, v4

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/taskbar/e0;

    invoke-direct {v1, p0, v3, v4}, Lcom/android/launcher3/taskbar/e0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final checkStashTaskbar$lambda$11(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Z)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    return-void
.end method

.method private final commitItemsToUI()V
    .registers 15

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result v0

    const-string v1, "Taskbar"

    const-string v2, "OplusTaskbarModelCallbacks"

    if-eqz v0, :cond_12

    const-string p0, "commitItemsToUI return isbinding"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    iget v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mMaxItems:I

    new-array v3, v0, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getSubscribeDataItems()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandRegionItems:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_31

    move v7, v9

    goto :goto_32

    :cond_31
    move v7, v8

    :goto_32
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const-string v11, "commitItemsToUI subscribeRegionItems size: "

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , mPersistRegionItems size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mExpandRegionItems size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v2, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_7d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    move v6, v8

    move v11, v6

    :goto_6c
    if-ge v6, v1, :cond_7e

    if-ge v11, v0, :cond_7e

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    :cond_7d
    move v11, v8

    :cond_7e
    const-string v1, ", max: "

    const-string v4, "container is full, nextItemIndex: "

    if-nez v7, :cond_f5

    add-int/lit8 v6, v11, 0x1

    if-ge v6, v0, :cond_dd

    if-lez v11, :cond_93

    const/16 v7, 0xcb

    invoke-static {v7, v11}, Lcom/android/launcher3/taskbar/TaskbarUtils;->createDividerItem(II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v7

    aput-object v7, v3, v11

    move v11, v6

    :cond_93
    iget-object v6, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    iget-boolean v7, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mIsLayoutRtl:Z

    xor-int/2addr v7, v9

    invoke-static {v6, v7}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSparseArrayKeys(Landroid/util/SparseArray;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-ge v11, v0, :cond_c4

    iget-object v12, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    const-string v13, "key"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v7, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a0

    :cond_c4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f5

    :cond_dd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f5
    :goto_f5
    if-nez v10, :cond_152

    add-int/lit8 v6, v11, 0x1

    if-ge v6, v0, :cond_13a

    if-lez v11, :cond_106

    const/16 v7, 0xc9

    invoke-static {v7, v11}, Lcom/android/launcher3/taskbar/TaskbarUtils;->createDividerItem(II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v7

    aput-object v7, v3, v11

    move v11, v6

    :cond_106
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v8

    :goto_10b
    if-ge v7, v6, :cond_152

    if-ge v11, v0, :cond_121

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v12, "expandRegionItems[i]"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v10, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_10b

    :cond_121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_152

    :cond_13a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_152
    :goto_152
    const-string/jumbo v0, "updateHotseatItems"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-nez v11, :cond_163

    goto :goto_164

    :cond_163
    move v9, v8

    :goto_164
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_170

    new-instance v1, Lcom/android/launcher3/taskbar/e0;

    invoke-direct {v1, p0, v9, v8}, Lcom/android/launcher3/taskbar/e0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    :cond_170
    return-void
.end method

.method private static final commitItemsToUI$lambda$8(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Z)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-eqz v0, :cond_13

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    :cond_13
    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    :cond_1e
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->executeNext()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;ILjava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->bindItemsModified$lambda$6(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;ILjava/util/List;)V

    return-void
.end method

.method private final enqueue(Lcom/android/launcher3/taskbar/NamedTask;Z)V
    .registers 8

    const-string v0, "enqueue "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NamedTask;->desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Immediately: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taskbar"

    const-string v2, "OplusTaskbarModelCallbacks"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NamedTask;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "handleItemsModifies"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v4, "mPendingTasks[mPendingTasks.size - 1]"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/taskbar/NamedTask;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NamedTask;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string v3, "drop "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NamedTask;->desc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_73
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_7f

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    :cond_7f
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_91

    new-instance p1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkAndRun(Ljava/lang/Runnable;)V

    :cond_91
    return-void
.end method

.method private final executeNext()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mPendingTasks.removeAt(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/taskbar/NamedTask;

    const-string v1, "executeNext "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NamedTask;->desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "! pendingTasks remain count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taskbar"

    const-string v3, "OplusTaskbarModelCallbacks"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NamedTask;->run()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPendingTasks:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_54

    new-instance v0, Lcom/android/launcher3/taskbar/p0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/p0;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkAndRun(Ljava/lang/Runnable;)V

    :cond_54
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->finishBindingItems$lambda$3(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V

    return-void
.end method

.method private static final finishBindingItems$lambda$3(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->commitItemsToUI()V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getAppContext()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkStashTaskbar$lambda$11(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Z)V

    return-void
.end method

.method private final getSubscribeDataItems()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeRegionItems:Landroid/util/SparseArray;

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mIsLayoutRtl:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSparseArrayKeys(Landroid/util/SparseArray;Z)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_14
    if-ge v2, v3, :cond_38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "keys[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v5, "item"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_38
    return-object v0
.end method

.method private final handleItemsAdded(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_6

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v3, :cond_44

    const/4 v4, 0x3

    if-eq v3, v4, :cond_44

    const/4 v4, 0x6

    if-eq v3, v4, :cond_44

    if-ne v3, v0, :cond_25

    goto :goto_44

    :cond_25
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->handleItemsAdded(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_33
    move v1, v0

    goto :goto_6

    :cond_35
    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeDataManager:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->handleItemsAdded(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_33

    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_47
    iget-object v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    monitor-exit v1

    goto :goto_33

    :catchall_50
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_53
    return v1
.end method

.method private final handleItemsModifies(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/16 v0, -0x65

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_12
    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    monitor-exit v1

    goto :goto_2a

    :catchall_19
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1c
    invoke-static {p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItems(Ljava/util/Collection;)Ljava/util/function/Predicate;

    move-result-object v0

    const-string/jumbo v1, "ofItems(items)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result v0

    :goto_2a
    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result v1

    const-string v2, "Taskbar"

    const-string v3, "OplusTaskbarModelCallbacks"

    const-string v4, "handleItemsModifies size: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", removed: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", added: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", container: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_62

    if-eqz v1, :cond_65

    :cond_62
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->commitItemsToUI()V

    :cond_65
    return-void
.end method

.method private final handleItemsRemoved(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_c
    const/4 v4, -0x1

    if-ge v4, v1, :cond_24

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_26

    move v3, v2

    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_24
    monitor-exit v0

    return v3

    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final onAddSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeRegionItems:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result v0

    const-string v1, "OplusTaskbarModelCallbacks"

    const-string v2, "Taskbar"

    if-eqz v0, :cond_1f

    const-string/jumbo p0, "onAddSubscribeItem return. isBinding"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getSubscribeDataItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v9, v6, 0x1

    if-ltz v6, :cond_43

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v7, v0, :cond_41

    goto :goto_49

    :cond_41
    move v6, v9

    goto :goto_2b

    :cond_43
    invoke-static {}, Li4/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_48
    move v6, v8

    :goto_49
    if-ne v6, v8, :cond_66

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onAddSubscribeItem return "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cannot find index to add"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_92

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_7e

    move v5, v1

    :cond_7e
    if-nez v5, :cond_89

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandRegionItems:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_92

    :cond_89
    const/16 p1, 0xcb

    invoke-static {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->createDividerItem(II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_92
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {p1, v0, v6, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->addItems(Ljava/util/List;IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkStashTaskbar()V

    return-void
.end method

.method private final onRemoveSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeRegionItems:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "Taskbar"

    const-string p1, "OplusTaskbarModelCallbacks"

    const-string/jumbo v0, "onRemoveSubscribeItem return. isBinding"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2a
    if-ge v3, v1, :cond_4f

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-static {v4, v3}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_4c

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, p1, :cond_4c

    move v0, v3

    goto :goto_4f

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_4f
    :goto_4f
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getSubscribeDataItems()Ljava/util/List;

    move-result-object p1

    if-ltz v0, :cond_84

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_77

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_77

    move v2, v3

    :cond_77
    if-eqz v2, :cond_7b

    const/4 p1, 0x2

    goto :goto_7c

    :cond_7b
    move p1, v3

    :goto_7c
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v1, v0, p1, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->removeItems(IIZ)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkStashTaskbar()V

    :cond_84
    return-void
.end method

.method private final updateExpandData(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandRegionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandRegionItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "Taskbar"

    const-string p1, "OplusTaskbarModelCallbacks"

    const-string/jumbo v0, "onTaskbarExpandDataChange return. isBindingItems"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->endLastAnimator()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_2f
    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    const/4 v3, -0x1

    if-ge v3, p1, :cond_54

    iget-object v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_51

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_55

    :cond_51
    add-int/lit8 p1, p1, -0x1

    goto :goto_2f

    :cond_54
    move p1, v3

    :goto_55
    const/4 v3, 0x0

    if-ltz p1, :cond_93

    iget-object v4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_74

    goto :goto_76

    :cond_74
    add-int/lit8 p1, p1, 0x1

    :goto_76
    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v2, p1, v0, v1, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->replaceItems(ILjava/util/List;ZZ)V

    goto :goto_98

    :cond_7c
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_8c

    const/16 v2, 0xc9

    invoke-static {v2, v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->createDividerItem(II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8c
    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    add-int/2addr p1, v1

    invoke-virtual {v2, p1, v0, v1, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->replaceItems(ILjava/util/List;ZZ)V

    goto :goto_98

    :cond_93
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {p1, v3, v0, v1, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->replaceItems(ILjava/util/List;ZZ)V

    :goto_98
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkStashTaskbar()V

    return-void
.end method


# virtual methods
.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 4

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    :cond_10
    return-void
.end method

.method public bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->appRemove(Ljava/util/ArrayList;)V

    :cond_10
    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string p1, "addNotAnimated"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "addAnimated"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p1

    invoke-direct {p0, p3}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p2

    if-nez p1, :cond_16

    if-eqz p2, :cond_19

    :cond_16
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->commitItemsToUI()V

    :cond_19
    return-void
.end method

.method public bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->addOrUpdateApps(Ljava/util/ArrayList;)V

    :cond_10
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deepShortcutMapCopy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->setDeepShortcutMap(Ljava/util/HashMap;)V

    :cond_10
    return-void
.end method

.method public bindDockerItemsRemoved(Ljava/util/function/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->commitItemsToUI()V

    :cond_f
    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .registers 2

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_10
    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo p2, "shortcuts"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->commitItemsToUI()V

    :cond_f
    return-void
.end method

.method public bindItemsModified(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/taskbar/NamedTask;

    new-instance v1, Lcom/android/launcher/badge/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;ILjava/util/List;)V

    const-string p1, "handleItemsModifies"

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/taskbar/NamedTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->enqueue(Lcom/android/launcher3/taskbar/NamedTask;Z)V

    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "updates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {p0, p1, v0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->commitItemsToUI()V

    :cond_f
    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "updated"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {p0, p1, v0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public final checkSubscribeSwitchAddItem()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->getSwitchOnSubscribeItemList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    return-void
.end method

.method public final clearSubscribeAndExpandData()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getAppContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandRegionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->onStartBinding()V

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->getSwitchOffSubscribeItemTypeList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeDataManager:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->clearItems(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2c

    :cond_42
    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeRegionItems:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->updateSubscribeIcon(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 15

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarModelCallbacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%s\tPersist region items count=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_4e
    const/4 v7, 0x3

    const/4 v8, 0x4

    if-ge v6, v5, :cond_86

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object p1, v10, v2

    iget v11, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v11}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v9}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    iget-object v9, v9, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v9, v10, v7

    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s\t persist :itemType: %s\t targetPackage: %s\t title: %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    :cond_86
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getSubscribeDataItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%s\tSubscribe region items count=%s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getSubscribeDataItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v2

    iget v9, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v9}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v0

    iget-object v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v6, v7

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%s\t subscribe :itemType: %s\t targetPackage: %s\t title: %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b2

    :cond_e7
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getExpandDataItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%s\tExpand region items count=%s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getExpandDataItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_113
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_148

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v2

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v6}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v1, v5, v7

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%s\t expand :itemType: %s\t targetPackage: %s\t title: %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_113

    :cond_148
    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .registers 5

    const-string p1, "Taskbar"

    const-string v0, "OplusTaskbarModelCallbacks"

    const-string v1, "finishBindingItems"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setBindingItems(Z)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->onFinishBinding()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->commitItemsToUI()V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "getAppContext()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, v2, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    goto :goto_3a

    :cond_2b
    const-string v1, "delay refresh taskbar for launcher is null"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->addObserverForObtainLauncher(Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;)V

    new-instance p1, Lcom/android/launcher3/model/c1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mDeferTaskOnLauncherReady:Ljava/lang/Runnable;

    :goto_3a
    return-void
.end method

.method public final getExpandDataItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->getItemInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPersistRegionItems()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    const-string/jumbo v1, "mPersistRegionItems.clone()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 3

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeDataManager:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mOnSubscribeDataChangeListener:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->init(Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager$OnDataChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mOnExpandDataChangeListener:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnExpandDataChangeListener$1;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->init(Lcom/android/launcher3/taskbar/TaskbarExpandDataManager$OnDataChangeListener;)V

    return-void
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .registers 10

    const-string/jumbo v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_6e

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_6b

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_5b

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5b

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object v3

    invoke-interface {v3}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_3e

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v6, v5}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3e

    return-void

    :cond_5b
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3, v2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6b

    return-void

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_6e
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mSubscribeDataManager:Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSubscribeDataManager;->onDestroy()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->onDestroy()V

    return-void
.end method

.method public onHotseatExpandDataChange(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "packages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mExpandDataManager:Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarExpandDataManager;->onHotseatExpandDataChange(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLauncherAvailable(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Taskbar"

    const-string v0, "OplusTaskbarModelCallbacks"

    const-string/jumbo v1, "refresh taskbar onLauncherAvailable"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mDeferTaskOnLauncherReady:Ljava/lang/Runnable;

    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_16
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mDeferTaskOnLauncherReady:Ljava/lang/Runnable;

    return-void
.end method

.method public startBinding()V
    .registers 4

    const-string v0, "Taskbar"

    const-string v1, "OplusTaskbarModelCallbacks"

    const-string/jumbo v2, "startBinding"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setBindingItems(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_13
    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->mPersistRegionItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_20

    monitor-exit v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->clearSubscribeAndExpandData()V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkSubscribeSwitchAddItem()V

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0

    throw p0
.end method
