.class public final Lcom/android/launcher3/hotseat/expand/ExpandDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExpandDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpandDataManager.kt\ncom/android/launcher3/hotseat/expand/ExpandDataManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1569:1\n1549#2:1570\n1620#2,3:1571\n1855#2,2:1578\n1855#2,2:1580\n1549#2:1582\n1620#2,3:1583\n1855#2:1592\n1549#2:1593\n1620#2,3:1594\n1856#2:1601\n1549#2:1602\n1620#2,3:1603\n1855#2:1608\n1855#2,2:1609\n1856#2:1611\n1855#2:1612\n1855#2,2:1613\n1856#2:1615\n1549#2:1616\n1620#2,3:1617\n37#3,2:1574\n37#3,2:1586\n37#3,2:1597\n37#3,2:1606\n37#3,2:1620\n13309#4,2:1576\n13309#4,2:1588\n13309#4,2:1590\n13309#4,2:1599\n*S KotlinDebug\n*F\n+ 1 ExpandDataManager.kt\ncom/android/launcher3/hotseat/expand/ExpandDataManager\n*L\n601#1:1570\n601#1:1571,3\n1123#1:1578,2\n1138#1:1580,2\n1155#1:1582\n1155#1:1583,3\n1183#1:1592\n1188#1:1593\n1188#1:1594,3\n1183#1:1601\n1262#1:1602\n1262#1:1603,3\n1294#1:1608\n1297#1:1609,2\n1294#1:1611\n1339#1:1612\n1343#1:1613,2\n1339#1:1615\n1516#1:1616\n1516#1:1617,3\n601#1:1574,2\n1155#1:1586,2\n1188#1:1597,2\n1262#1:1606,2\n1516#1:1620,2\n603#1:1576,2\n1160#1:1588,2\n1172#1:1590,2\n1191#1:1599,2\n*E\n"
    }
.end annotation


# static fields
.field public static final EXPAND_UPDATING_DELAY_450:J = 0x1c2L

.field public static final EXPAND_UPDATING_DELAY_LONG:J = 0x320L

.field public static final EXPAND_UPDATING_DELAY_SHORT:J = 0x32L

.field private static final EXPAND_UPDATING_ON_TASK_STACK_CHANGE_MAX_DELAY:J = 0x258L

.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

.field public static final INVALID_TASK_ID:I = -0x80000000

.field public static final INVALID_TASK_SIZE_2:I = 0x2

.field public static final INVALID_TASK_SIZE_3:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ExpandDataManager"

.field private static allCombinationGroupTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private static appConnectDataItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private static appConnectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

.field private static volatile dockerExpandNeverBeenUpDate:Z

.field private static volatile enableUpdateExpandFlag:Z

.field private static final expandSourceCallingPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile expandUpdatingFlag:Z

.field private static volatile finishedUpdateExpandFlag:Z

.field private static lastFinalShownExpandDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastLayoutDirection:I

.field private static launchAppAnimationEndTime:J

.field private static launchIntentPkgCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile launcherFinishBindFlag:Z

.field private static volatile launcherOnBinding:Z

.field private static multiRecommendAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final needFeedbackClickEventSourcePackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static noLaunchIntentPkgCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile pendingUpdateRunnable:Ljava/lang/Runnable;

.field private static recentTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static requestID:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final resetExpandUpdatingFlagRunnable:Ljava/lang/Runnable;

.field private static final updateRecentTaskRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->allCombinationGroupTaskMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->needFeedbackClickEventSourcePackageMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandSourceCallingPackageMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->dockerExpandNeverBeenUpDate:Z

    sget-object v0, Lcom/android/launcher3/hotseat/expand/d;->a:Lcom/android/launcher3/hotseat/expand/d;

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/launcher3/hotseat/expand/c;->a:Lcom/android/launcher3/hotseat/expand/c;

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetExpandUpdatingFlagRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/launcher3/p2;->c:Lcom/android/launcher3/p2;

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastLayoutDirection:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launchIntentPkgCacheList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->noLaunchIntentPkgCacheList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->requestID:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setPendingUpdateRunnable$lambda$20()V

    return-void
.end method

.method public static final synthetic access$isDuplicateInMutipTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isDuplicateInMutipTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDuplicateInPocketStudioTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isDuplicateInPocketStudioTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    return p0
.end method

.method public static final assembleDockerExpandDataToShow(ZZ)V
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const-string v1, "ExpandDataManager"

    const-string v2, "Hotseat_expand"

    if-nez v0, :cond_10

    const-string p0, "assembleDockerExpandDataToShow return,not support docker expand device"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string p0, "assembleDockerExpandDataToShow return,expand dock switch off"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v3, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_418

    const-string v0, "assembleDockerExpandDataToShow validated thread, continue assembling"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_46

    sget-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->enableUpdateExpandFlag:Z

    if-nez v0, :cond_46

    const-string p0, "assembleDockerExpandDataToShow launcher is not finish bind,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_46
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_4d

    return-void

    :cond_4d
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    if-nez v3, :cond_58

    return-void

    :cond_58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_76

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarPersistRegionPackages()Ljava/util/List;

    move-result-object v6

    goto :goto_7f

    :cond_76
    const-string v7, "container"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalApplicationItemPackages(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Ljava/util/ArrayList;

    move-result-object v6

    :goto_7f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    const-string v8, ",expandUpdatingFlag:"

    if-eqz v7, :cond_150

    const-string v7, "assembleDockerExpandDataToShow,curNormalAreaPkg"

    invoke-static {v7, v6}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->printExpandData(Ljava/lang/String;Ljava/util/List;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "assembleDockerExpandDataToShow"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",recentTaskList.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",multiRecommendAppList.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",appConnectList.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",isInMinimize:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",launcher.isResumed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",onlyUpdateForTaskbar:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",forceUpdate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v1, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_150
    sget-object v7, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/4 v9, 0x1

    xor-int/2addr v7, v9

    if-eqz v7, :cond_177

    invoke-virtual {v3}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result v7

    if-eqz v7, :cond_177

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_16c

    sget-object v7, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_17c

    :cond_16c
    sget-object v7, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    sget-object v7, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_17c

    :cond_177
    sget-object v7, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_17c
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v9

    const/4 v10, 0x3

    if-eqz v7, :cond_1e3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_189
    if-ge v11, v7, :cond_1e3

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1c0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "newExpandPackages[i]"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->shouldFilterOutCombinationItem(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1e0

    iget-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v10, :cond_1e0

    goto :goto_1e3

    :cond_1c0
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e0

    iget-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v10, :cond_1e0

    goto :goto_1e3

    :cond_1e0
    add-int/lit8 v11, v11, 0x1

    goto :goto_189

    :cond_1e3
    :goto_1e3
    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v9

    if-eqz v4, :cond_226

    const-string v4, "assembleDockerExpandDataToShow,add appConnect"

    invoke-static {v2, v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v4

    if-nez v4, :cond_226

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v10, :cond_218

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Ljava/util/ArrayList;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v9

    sget-object v7, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_226

    :cond_218
    const/4 v4, 0x0

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_226
    :goto_226
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_237

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Li4/u;->w(Ljava/util/List;)V

    :cond_237
    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v9

    if-eqz v4, :cond_276

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v4

    if-eqz v4, :cond_276

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_274

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, v10, :cond_270

    goto :goto_274

    :cond_270
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25d

    :cond_274
    :goto_274
    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_276
    const-string v4, "assembleDockerExpandDataToShow,finalToShowExpandPackages.size:"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->getShowExpandGuidTipType()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    const-string v7, "assembleDockerExpandDataToShow final to show"

    invoke-static {v7, v4}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->printExpandData(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->getShowExpandGuidTipType()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2cb

    invoke-virtual {v6}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->getShowExpandGuidTipType()I

    move-result v4

    if-eq v4, v10, :cond_2cb

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isExpandDataChangedToUpdate(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_2cb

    move v4, v9

    goto :goto_2cc

    :cond_2cb
    const/4 v4, 0x0

    :goto_2cc
    if-eqz p0, :cond_2d2

    if-eqz p1, :cond_2d2

    move p0, v9

    goto :goto_2d3

    :cond_2d2
    const/4 p0, 0x0

    :goto_2d3
    if-eqz v4, :cond_2df

    if-nez p0, :cond_2df

    const-string p0, "assembleDockerExpandDataToShow,expand data not real changed,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->finishedUpdateExpandFlag:Z

    return-void

    :cond_2df
    const-string v8, "app.model"

    if-nez v4, :cond_2e5

    if-nez p1, :cond_2e7

    :cond_2e5
    if-eqz p0, :cond_312

    :cond_2e7
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isDockerExpandNeverBeenUpdated(Ljava/util/ArrayList;)Z

    move-result p1

    const-string v10, "assembleDockerExpandDataToShow,isDockerExpandNeverBeenUpdated:"

    invoke-static {v10, p1, v2, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2f8

    if-eqz p0, :cond_312

    :cond_2f8
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->notifyExpandDataChange(Lcom/android/launcher3/OplusLauncherModel;Ljava/util/ArrayList;)V

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo p0, "only notify for taskbar,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_312
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetPendingUpdateRunnable()V

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    if-eqz p1, :cond_324

    invoke-virtual {p1}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_325

    :cond_324
    const/4 p1, 0x0

    :goto_325
    sget-boolean v10, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    if-nez v10, :cond_3cf

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_333

    goto/16 :goto_3cf

    :cond_333
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isIconAlignmentAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_345

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetStateForUpdateExceptionReturn()V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setPendingUpdateRunnable()V

    const-string p0, "assembleDockerExpandDataToShow,isIconAlignmentAnimRunning,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_345
    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo p1, "update lastFinalShownExpandDataList"

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    iget-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_35d

    if-eqz p0, :cond_370

    :cond_35d
    const-string p0, "assembleDockerExpandDataToShow,notify for taskbar"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->notifyExpandDataChange(Lcom/android/launcher3/OplusLauncherModel;Ljava/util/ArrayList;)V

    :cond_370
    invoke-virtual {v6}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->getShowExpandGuidTipType()I

    move-result p0

    if-ne p0, v7, :cond_387

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p0

    if-eqz p0, :cond_38f

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p1, Lcom/android/launcher/wallpaper/b;

    invoke-direct {p1, v3, v5}, Lcom/android/launcher/wallpaper/b;-><init>(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_38f

    :cond_387
    iget-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->needUpdateExpandItem(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)Z

    move-result v9

    :cond_38f
    :goto_38f
    xor-int/lit8 p0, v9, 0x1

    sput-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->finishedUpdateExpandFlag:Z

    sput-boolean v9, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    const-string p0, "assembleDockerExpandDataToShow,needUpdate:"

    invoke-static {p0, v9, v2, v1}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_3bb

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->dockerExpandNeverBeenUpDate:Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p1

    if-eqz p1, :cond_3b3

    sget-object p1, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkFinalToShowExpandPackages(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandItems(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    goto :goto_3ce

    :cond_3b3
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v3, p1, p0}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->updateExpandItems(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    goto :goto_3ce

    :cond_3bb
    iget-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3ce

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    if-eqz p0, :cond_3ce

    invoke-static {v3}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->checkAndRemoveExpandDivider(Lcom/android/launcher3/Launcher;)V

    :cond_3ce
    :goto_3ce
    return-void

    :cond_3cf
    :goto_3cf
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "assembleDockerExpandDataToShow:hotseatExpandUpdateAnimating="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",expandUpdatingFlag="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_408

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_400

    goto :goto_408

    :cond_400
    const-string p0, "assembleDockerExpandDataToShow,is expandUpdating,and expand data not real changed,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->finishedUpdateExpandFlag:Z

    goto :goto_417

    :cond_408
    :goto_408
    const-string p0, "assembleDockerExpandDataToShow,expandUpdating,delay 500ms to update"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    const-wide/16 p0, 0x320

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetExpandUpdatingFlagDelay(J)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setPendingUpdateRunnable()V

    :goto_417
    return-void

    :cond_418
    const-string v0, "assembleDockerExpandDataToShow INVALIDATED thread, return and post to assemble."

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/hotseat/expand/a;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/hotseat/expand/a;-><init>(ZZ)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final assembleDockerExpandDataToShow$lambda$5(ZZ)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow(ZZ)V

    return-void
.end method

.method private static final assembleDockerExpandDataToShow$lambda$6(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$finalToShowExpandPackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->refreshExapandBgData(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    return-void
.end method

.method private static final assembleDockerExpandDataToShowRunnable$lambda$0()V
    .registers 3

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string v2, "assembleDockerExpandDataToShowRunnable run"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    invoke-static {v0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow(ZZ)V

    return-void
.end method

.method private static final assemblePocketStudioTaskToPackage(Lcom/android/quickstep/util/GroupTask;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/util/GroupTask;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    const-string v0, "embeddedTasks.size:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_60

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_60
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData$lambda$4(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic c(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/ArrayList;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData$lambda$4$lambda$3(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final checkAndAddItem(Ljava/lang/String;J)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const-string p0, "Hotseat_expand"

    const-string v0, "ExpandDataManager"

    const-string v1, "checkAndAddItem to update hotseat recent task"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateExpandItemDelay(J)V

    return-void
.end method

.method public static final checkAndClearLastExpandItems(Landroid/content/res/Configuration;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "newConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    sget v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastLayoutDirection:I

    if-eq p0, v0, :cond_15

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_15
    sput p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastLayoutDirection:I

    return-void
.end method

.method public static final checkAndRemoveDuplicateItem(Lcom/android/launcher3/model/data/ItemInfo;ZJ)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    if-nez p1, :cond_1f

    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->curExpandItemsContainThisPkg(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p0

    if-nez p0, :cond_1f

    return-void

    :cond_1f
    const-string p0, "Hotseat_expand"

    const-string p1, "ExpandDataManager"

    const-string v0, "checkAndRemoveDuplicateItem to update hotseat recent task"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateExpandItemDelay(J)V

    return-void
.end method

.method public static final checkPendingUpdateRunnable()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "checkPendingUpdateRunnable,pendingUpdateRunnable:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->pendingUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->pendingUpdateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2d

    const-string v0, "checkPendingUpdateRunnable start pendingRunnable"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->pendingUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->pendingUpdateRunnable:Ljava/lang/Runnable;

    :cond_2d
    return-void
.end method

.method public static final clearDockerAppConnectData(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clearDockerAppConnectData,needUpdateUi:"

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandDataManager"

    invoke-static {v0, p0, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p0, :cond_1f

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->setShowExpandGuidTipType(I)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow(ZZ)V

    :cond_1f
    return-void
.end method

.method private static final curExpandItemsContainThisPkg(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7f

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_7f

    :cond_b
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object v1

    instance-of v2, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_4e

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v2, v3, :cond_4e

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v2}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_4e

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$1;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    new-instance v5, Lcom/android/launcher/folder/download/b;

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$curExpandItemsContainThisPkg$2;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    new-instance p0, Lcom/android/exceptionmonitor/util/c;

    const/4 v6, 0x6

    invoke-direct {p0, v5, v6}, Lcom/android/exceptionmonitor/util/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v4, p0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-nez v2, :cond_4d

    if-eqz p0, :cond_4e

    :cond_4d
    return v3

    :cond_4e
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    return v0

    :cond_5f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_63
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v2, "itemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    return v3

    :cond_7f
    :goto_7f
    return v0
.end method

.method private static final curExpandItemsContainThisPkg$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final curExpandItemsContainThisPkg$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->curExpandItemsContainThisPkg$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskRunnable$lambda$2()V

    return-void
.end method

.method public static synthetic f()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetExpandUpdatingFlagRunnable$lambda$1()V

    return-void
.end method

.method public static final feedbackExpandClickEventIfNecessary(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clickItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "feedbackExpandClickEventIfNecessary clickPkg:"

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandDataManager"

    invoke-static {v0, p0, v1, v2}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2e

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->needFeedbackClickEventSourcePackageMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2e

    invoke-static {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->sendBroadCastFeedbackExpandItemClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public static final filterTaskForDocker(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v2

    const/16 v3, 0x7d

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "ExpandDataManager"

    const-string v8, "Hotseat_expand"

    const/4 v9, 0x0

    if-eqz v2, :cond_7c

    iget-object v2, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_32

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_33

    :cond_32
    move-object v2, v6

    :goto_33
    invoke-static {v2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getEmbeddedTasks(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e9

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    const-string v11, "filterTaskForDocker(), pkg = "

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_58

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    goto :goto_59

    :cond_58
    move-object v12, v6

    :goto_59
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", taskid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v7, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    if-ne v10, v4, :cond_3d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v10

    if-eqz v10, :cond_3d

    move v9, v5

    goto :goto_3d

    :cond_7c
    invoke-virtual {v1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v2

    if-eqz v2, :cond_e4

    const-string v2, "filterTaskForDocker(), task1 = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v10, :cond_97

    iget-object v10, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_97

    iget v10, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_98

    :cond_97
    move-object v10, v6

    :goto_98
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", task2 = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v10, :cond_ae

    iget-object v10, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_ae

    iget v6, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_ae
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_c9

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_c9

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, v4, :cond_c9

    move v2, v5

    goto :goto_ca

    :cond_c9
    move v2, v9

    :goto_ca
    if-nez v2, :cond_dd

    iget-object v2, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_da

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_da

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, v4, :cond_da

    move v2, v5

    goto :goto_db

    :cond_da
    move v2, v9

    :goto_db
    if-eqz v2, :cond_e9

    :cond_dd
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_e9

    goto :goto_ea

    :cond_e4
    const-string v2, "filterTaskForDocker(), no option!!"

    invoke-static {v8, v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e9
    move v5, v9

    :goto_ea
    if-eqz v5, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter this Task from list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_105
    return-void
.end method

.method public static final findExpandItemByExpandType(Ljava/lang/String;I)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_36

    if-eq p1, v0, :cond_2f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_28

    const/4 v2, 0x3

    if-eq p1, v2, :cond_21

    const/4 v2, 0x4

    if-eq p1, v2, :cond_17

    goto :goto_4f

    :cond_17
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4f

    goto :goto_4e

    :cond_21
    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4f

    :cond_28
    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4f

    :cond_2f
    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4f

    :cond_36
    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    :cond_4e
    :goto_4e
    move v1, v0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public static synthetic g()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShowRunnable$lambda$0()V

    return-void
.end method

.method private static final gatherRecentPkgFormRecentTask(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_23

    move v1, v4

    goto :goto_24

    :cond_23
    move v1, v3

    :goto_24
    if-nez v1, :cond_3f

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v5, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    invoke-virtual {v0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v1

    if-ne v1, v4, :cond_47

    move v1, v4

    goto :goto_48

    :cond_47
    move v1, v3

    :goto_48
    if-eqz v1, :cond_83

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_5e

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_5e

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v2

    if-nez v1, :cond_5e

    move v3, v4

    :cond_5e
    xor-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_83

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_83

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_7b

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_7b

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7c

    :cond_7b
    const/4 v2, 0x0

    :goto_7c
    invoke-static {v1, v2}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    const-string v1, "hasPocketStudioFeature:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",hasEmbedded:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Hotseat_expand"

    const-string v4, "ExpandDataManager"

    invoke-static {v3, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "group"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assemblePocketStudioTaskToPackage(Lcom/android/quickstep/util/GroupTask;Ljava/util/ArrayList;)V

    goto/16 :goto_4

    :cond_c9
    return-void
.end method

.method private static final gatherRecentPkgFormRecentTaskWhenCombineIconEnable(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->requestID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "ExpandDataManager"

    const-string v5, "Hotseat_expand"

    if-eqz v3, :cond_1c5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v3}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v6

    const-string/jumbo v7, "|_splitScreen/"

    const/16 v8, 0x5f

    const/4 v9, 0x0

    if-eqz v6, :cond_a7

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v10, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_40

    iget v10, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_41

    :cond_40
    move-object v10, v9

    :goto_41
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v10, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_52

    invoke-virtual {v10}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_53

    :cond_52
    move-object v10, v9

    :goto_53
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x7c

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v10, :cond_6e

    iget-object v10, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_6e

    iget v10, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6f

    :cond_6e
    move-object v10, v9

    :goto_6f
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v3, :cond_81

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_81

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :cond_81
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gatherRecentPkgFormRecentTask--google version currentTaskPkgList is : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_a7
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_197

    sget-object v6, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v6}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v6

    if-eqz v6, :cond_197

    const-string v6, "group"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v6

    if-eqz v6, :cond_197

    iget-object v6, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v6}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v6

    if-eqz v6, :cond_181

    iget-object v6, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v6}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    const/4 v12, 0x2

    if-lt v6, v12, :cond_181

    iget-object v6, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_e2

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_e3

    :cond_e2
    move-object v6, v9

    :goto_e3
    if-eqz v6, :cond_ed

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_ec

    goto :goto_ed

    :cond_ec
    move v10, v11

    :cond_ed
    :goto_ed
    if-nez v10, :cond_181

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v6}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    new-instance v10, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v6, v12}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_107
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v12}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_11b
    new-array v6, v11, [Ljava/lang/String;

    invoke-interface {v10, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_135

    array-length v12, v6

    :goto_12b
    if-ge v11, v12, :cond_135

    aget-object v13, v6, v11

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_12b

    :cond_135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v11, v11, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v11, :cond_147

    iget v11, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_148

    :cond_147
    move-object v11, v9

    :goto_148
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_158

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :cond_158
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gatherRecentPkgFormRecentTask-- PocketStudio version currentTaskPkgList is : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gatherRecentPkgFormRecentTask-- wrong group! info  is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_197
    iget-object v4, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1a7

    goto :goto_1a8

    :cond_1a7
    move v10, v11

    :goto_1a8
    if-nez v10, :cond_f

    iget-object v4, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v3, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_1c5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "gatherRecentPkgFormRecentTask-- request ID is  : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->allCombinationGroupTaskMap:Ljava/util/HashMap;

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_splitScreen"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_12

    return-object v3

    :cond_12
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getListFromCombineMap(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_1b

    return-object v3

    :cond_1b
    const/high16 v4, -0x80000000

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "|"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {p0, v5, v1, v1, v6}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGroupTaskByPkgNames-data is: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Hotseat_expand"

    const-string v8, "ExpandDataManager"

    invoke-static {v7, v8, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const-string v9, "_"

    const/4 v10, 0x1

    if-eq v5, v2, :cond_a0

    const/4 v2, 0x3

    if-eq v5, v2, :cond_53

    return-object v3

    :cond_53
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v1, v6}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1, v1, v6}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_c8

    const-string p0, "getGroupTaskByPkgNames-it\'s a google task: task ID1 is: "

    const-string/jumbo v5, "task ID2 is: "

    invoke-static {p0, v2, v5, v4}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    :cond_a0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1, v1, v6}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_c8

    const-string p0, "getGroupTaskByPkgNames-it\'s a PocketStudio task and taskID1 is: "

    invoke-static {p0, v2, v7, v8}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_172

    :cond_d0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v5

    if-eqz v5, :cond_121

    iget-object v5, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_f2

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v5, v2, :cond_f2

    move v5, v10

    goto :goto_f3

    :cond_f2
    move v5, v1

    :goto_f3
    if-eqz v5, :cond_d4

    iget-object v5, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v5, :cond_103

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_103

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v5, v4, :cond_103

    move v5, v10

    goto :goto_104

    :cond_103
    move v5, v1

    :goto_104
    if-eqz v5, :cond_d4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_120

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGroupTaskByPkgNames-google match!! and item is: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_120
    return-object v0

    :cond_121
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v5

    if-eqz v5, :cond_164

    sget-object v5, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v5}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v5

    if-eqz v5, :cond_164

    const-string v5, "item"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v5

    if-eqz v5, :cond_164

    iget-object v5, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_146

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v5, v2, :cond_146

    move v5, v10

    goto :goto_147

    :cond_146
    move v5, v1

    :goto_147
    if-eqz v5, :cond_d4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_163

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGroupTaskByPkgNames-PocketStudio match!! and item is: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_163
    return-object v0

    :cond_164
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_16f

    const-string p0, "getGroupTaskByPkgNames- no option matchs!!"

    invoke-static {v7, v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16f
    return-object v3

    :cond_170
    sget-object v3, Lh4/z;->a:Lh4/z;

    :goto_172
    return-object v3
.end method

.method public static final getIconForPocketStudioTask(Lcom/android/quickstep/util/GroupTask;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "groupTask"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    const-string v3, "groupTask.task1"

    const/4 v4, 0x0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_49
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertIconByThemeSafely(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6a

    :cond_61
    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertIconByThemeSafely(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6a
    :goto_6a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v5, "ExpandDataManager"

    const-string v6, "Hotseat_expand"

    if-eqz v3, :cond_90

    const-string v3, "getIconForPocketStudioTask: taskId="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , icon null ? "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_8c

    move v7, v2

    goto :goto_8d

    :cond_8c
    move v7, v1

    :goto_8d
    invoke-static {v3, v7, v6, v5}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_90
    if-nez v0, :cond_114

    const-string v0, "getIconForPocketStudioTask--icon is null, get default!"

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p1

    instance-of v0, p1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    if-eqz v0, :cond_aa

    check-cast p1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    goto :goto_ab

    :cond_aa
    move-object p1, v4

    :goto_ab
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v7, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v3, v7}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_104

    if-eqz p1, :cond_e0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/TaskIconCache;->getDefaultDrawable(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v7, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v8, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    invoke-virtual {p1, v3, v8, v7, v0}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    goto :goto_e1

    :cond_e0
    move-object p1, v4

    :goto_e1
    if-eqz p1, :cond_e5

    iget-object v4, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :cond_e5
    const-string p1, "get default, task="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", bitmap null ? "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_f8

    move v1, v2

    :cond_f8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v5, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_114

    :cond_104
    if-eqz p1, :cond_110

    iget-object p0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p1, p0}, Lcom/android/quickstep/TaskIconCache;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_110
    invoke-static {v4}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_114
    :goto_114
    return-object v0
.end method

.method public static synthetic h(ZZ)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow$lambda$5(ZZ)V

    return-void
.end method

.method public static synthetic i()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetExpandUpdatingFlagDelay$lambda$16$lambda$15()V

    return-void
.end method

.method public static final initLayoutDirection(I)V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sput p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastLayoutDirection:I

    return-void
.end method

.method private static final isDockerExpandNeverBeenUpdated(Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->dockerExpandNeverBeenUpDate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->enableUpdateExpandFlag:Z

    if-eqz p0, :cond_1d

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launcherFinishBindFlag:Z

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method private static final isDuplicateInMutipTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "info.intent.extras"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pkgName1"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkgName2"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isSplitScreenCombination"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_80

    if-eqz v0, :cond_80

    if-eqz v1, :cond_80

    const-string/jumbo p0, "shouldFilterOutCombinationItem -- google version ,pkgName1: "

    const-string v2, ", pkgName2: "

    const-string v4, ", task1 is "

    invoke-static {p0, v0, v2, v1, v4}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", task2 is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    :cond_51
    move-object v2, v4

    :goto_52
    const-string v5, "Hotseat_expand"

    const-string v6, "ExpandDataManager"

    invoke-static {p0, v2, v5, v6}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    iget-object p0, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_73

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_73

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_73
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const-string/jumbo p0, "shouldFilterOutCombinationItem -- google version match!!"

    invoke-static {v5, v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_80
    return v3
.end method

.method private static final isDuplicateInPocketStudioTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "info.intent.extras"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pkgNames"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ExpandDataManager"

    const-string v3, "Hotseat_expand"

    if-eqz v0, :cond_3f

    :try_start_1b
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v6, v1

    :goto_2b
    if-ge v6, v5, :cond_40

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_37} :catch_3a

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :catch_3a
    const-string v0, "Parser ERROR!!!"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    const/4 v0, 0x0

    :cond_40
    const-string v4, "isPsSplitScreenCombination"

    invoke-virtual {p0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_6f
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string/jumbo v4, "shouldFilterOutCombinationItem -- PS version , packageNamesFromTask: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pkgNames: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v2}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eqz p0, :cond_a7

    if-eqz v0, :cond_a7

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a7

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c3

    const-string/jumbo p0, "shouldFilterOutCombinationItem -- PS 2 version match!!"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    :cond_a7
    if-eqz p0, :cond_bd

    if-eqz v0, :cond_bd

    array-length p0, v0

    const/4 v5, 0x3

    if-ne p0, v5, :cond_bd

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c3

    const-string/jumbo p0, "shouldFilterOutCombinationItem -- PS 3 version match!!"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_bb
    move v1, v4

    goto :goto_c3

    :cond_bd
    const-string/jumbo p0, "no option here!"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    :goto_c3
    return v1
.end method

.method public static final isExpandDataChangedToUpdate(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "finalToShowExpandPackages"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_be

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    move v4, v2

    :goto_1f
    if-ge v4, p0, :cond_52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "packagesCopy[i]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_3c

    :cond_3a
    move v5, v2

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v5, v3

    :goto_3d
    if-nez v5, :cond_4f

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_52
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v4, v2

    :goto_5c
    if-ge v4, p0, :cond_8e

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "lastPackagesCopy[i]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_78

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_76

    goto :goto_78

    :cond_76
    move v5, v2

    goto :goto_79

    :cond_78
    :goto_78
    move v5, v3

    :goto_79
    if-nez v5, :cond_8b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_8e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p0, v4, :cond_bd

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a5

    goto :goto_bd

    :cond_a5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    return v3

    :cond_bc
    return v2

    :cond_bd
    :goto_bd
    return v3

    :cond_be
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method public static final isFinishUpdateExpandItems()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1f

    :cond_d
    const-string v0, "isFinishUpdateExpandItems:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->finishedUpdateExpandFlag:Z

    const-string v2, "Hotseat_expand"

    const-string v3, "ExpandDataManager"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->finishedUpdateExpandFlag:Z

    return v0

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    return v0
.end method

.method public static final isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "groupTask"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_28

    :cond_27
    move-object v0, v1

    :goto_28
    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->sameComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_2e
    iget-object p0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    const-string v0, "groupTask.task1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPocketStudioTask, embedded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_48
    move-object v2, v1

    :goto_49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_5c

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5d

    :cond_5c
    move-object v3, v1

    :goto_5d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_6d

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "ExpandDataManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_7d
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow$lambda$6(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->curExpandItemsContainThisPkg$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->needUpdateExpandItem$lambda$14(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private static final needUpdateExpandItem(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getAppContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->forceUpdateWhenPackageUninstall(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    return v2

    :cond_1b
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "ExpandDataManager"

    const-string v6, "Hotseat_expand"

    if-eqz v4, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v7, "itemInfo"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_28

    instance-of v8, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v8, :cond_6e

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-boolean v8, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    if-nez v8, :cond_51

    iget-boolean v4, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    if-eqz v4, :cond_6e

    :cond_51
    invoke-static {v7}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package after trim : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_6e
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_72
    const-string/jumbo v1, "needUpdateExpandItem -- oldExpandItems: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v4, v2, [Ljava/util/ArrayList;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "toString(this)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pkgNames: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v2, [Ljava/util/ArrayList;

    aput-object p1, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v7

    :goto_aa
    if-ge v4, v1, :cond_dc

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "finalToShowExpandPackagesCopy[i]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c6

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_c4

    goto :goto_c6

    :cond_c4
    move v5, v7

    goto :goto_c7

    :cond_c6
    :goto_c6
    move v5, v2

    :goto_c7
    if-nez v5, :cond_d9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->trimIDOut(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d9
    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    :cond_dc
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v1

    if-eqz v1, :cond_f3

    sget-object v0, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->checkNeedUpdateExpandItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/z0;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/z0;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_fb

    :cond_f3
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fa

    goto :goto_fb

    :cond_fa
    move v2, v7

    :goto_fb
    return v2
.end method

.method private static final needUpdateExpandItem$lambda$14(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Z)V
    .registers 4

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$finalToShowExpandPackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->refreshExapandBgData(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    return-void
.end method

.method public static final notifyExpandDataChange(Lcom/android/launcher3/OplusLauncherModel;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusLauncherModel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcherModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-static {v0}, Li4/u;->w(Ljava/util/List;)V

    :cond_24
    const-string p1, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string/jumbo v2, "notifyExpandDataChange"

    invoke-static {p1, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    const-string p1, "launcherModel.callbacks"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    array-length v1, p0

    :goto_3f
    if-ge p1, v1, :cond_49

    aget-object v2, p0, p1

    invoke-interface {v2, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onHotseatExpandDataChange(Ljava/util/ArrayList;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    :cond_49
    return-void
.end method

.method public static final onLaunchAppAnimationEnd()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    const-string/jumbo v3, "onLaunchAppAnimationEnd,hasDelayRunnable:"

    const-string v4, "Hotseat_expand"

    const-string v5, "ExpandDataManager"

    invoke-static {v3, v1, v4, v5}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    :cond_2c
    return-void
.end method

.method public static final onTaskStackChangedBackground()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-wide v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launchAppAnimationEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string/jumbo v2, "onTaskStackChangedBackground,currentTimeMillis() "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " delayTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hotseat_expand"

    const-string v4, "ExpandDataManager"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_3e

    const-wide/16 v4, 0x258

    cmp-long v2, v0, v4

    if-gez v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    move v2, v3

    :goto_3f
    if-eqz v2, :cond_45

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskDelay(J)V

    goto :goto_5c

    :cond_45
    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    :goto_5c
    return-void
.end method

.method public static final resetExpandUpdatingFlagDelay(J)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetExpandUpdatingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-eqz p0, :cond_27

    sget-object p1, Lcom/android/launcher3/q2;->c:Lcom/android/launcher3/q2;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->runOnceOnUpdateAnimatorEnd(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method

.method private static final resetExpandUpdatingFlagDelay$lambda$16$lambda$15()V
    .registers 3

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string/jumbo v2, "remove resetExpandUpdatingFlagRunnable because update animator finished."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetExpandUpdatingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final resetExpandUpdatingFlagRunnable$lambda$1()V
    .registers 3

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string/jumbo v2, "resetExpandUpdatingFlagRunnable run"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    return-void
.end method

.method public static final resetPendingUpdateRunnable()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string/jumbo v2, "resetPendingUpdateRunnable"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->pendingUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->pendingUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final resetStateForUpdateExceptionReturn()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->finishedUpdateExpandFlag:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final setPendingUpdateRunnable()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string/jumbo v2, "setPendingUpdateRunnable"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/b;->a:Lcom/android/launcher3/hotseat/expand/b;

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->pendingUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final setPendingUpdateRunnable$lambda$20()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow(ZZ)V

    return-void
.end method

.method public static final shouldFilterOutCombinationItem(Ljava/lang/String;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_19

    return v1

    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v2, "container"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getAllCombineItems(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    return v2

    :cond_2c
    const-string v3, "Hotseat_expand"

    const-string v4, "ExpandDataManager"

    const-string/jumbo v5, "shouldFilterOutCombinationItem begin"

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v6, "_splitScreen"

    invoke-static {p0, v6, v2, v5}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v5

    if-nez v5, :cond_40

    return v2

    :cond_40
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/quickstep/util/GroupTask;

    if-nez v5, :cond_56

    :cond_55
    return v1

    :cond_56
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.quickstep.util.GroupTask"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {p0}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v5

    if-eqz v5, :cond_91

    const-string/jumbo v5, "shouldFilterOutCombinationItem google case "

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_72

    invoke-static {v5, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isDuplicateInMutipTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo p0, "shouldFilterOutCombinationItem google case match successfully!"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_91
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v5

    if-eqz v5, :cond_ce

    sget-object v5, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v5}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v5

    if-eqz v5, :cond_ce

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v5

    if-eqz v5, :cond_ce

    const-string/jumbo v5, "shouldFilterOutCombinationItem isPocketStudioTask "

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_af

    invoke-static {v5, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isDuplicateInPocketStudioTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/quickstep/util/GroupTask;)Z

    move-result v2

    if-eqz v2, :cond_af

    const-string/jumbo p0, "shouldFilterOutCombinationItem PocketStudio case match successfully!"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_ce
    const-string/jumbo p0, "no match items from all !!"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static final shouldFilterOutMultipleTask(Lcom/android/quickstep/util/GroupTask;Ljava/util/ArrayList;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/util/GroupTask;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_ce

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/GroupTask;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v5, 0x0

    if-eqz v2, :cond_2e

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2f

    :cond_2e
    move-object v2, v5

    :goto_2f
    invoke-static {v2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getEmbeddedTasks(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v6, "shouldFilterOutMultipleTask(), pkg = "

    const-string v7, "ExpandDataManager"

    const-string v8, "Hotseat_expand"

    if-eqz v2, :cond_79

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", taskid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x7d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v7, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_79
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_b9

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz p0, :cond_95

    iget-object v9, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v9, :cond_95

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v9, :cond_95

    iget v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_96

    :cond_95
    move-object v9, v5

    :goto_96
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz p0, :cond_b0

    iget-object v9, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v9, :cond_b0

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v9, :cond_b0

    iget v5, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_b0
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    move v1, v4

    goto/16 :goto_8

    :cond_b9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c8

    const-string/jumbo v2, "shouldFilterOutMultipleTask(), pkg 3="

    invoke-static {v8, v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c8
    invoke-static {v8, v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_cd
    move v0, v1

    :cond_ce
    return v0
.end method

.method public static final trimIDOut(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_splitScreen"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v2, "ExpandDataManager"

    const-string v3, "Hotseat_expand"

    if-eqz v0, :cond_1f

    const-string v0, "String before trim: "

    invoke-static {v0, p0, v3, v2}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    invoke-static {p0, v0, v1, v1, v4}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "String after trim: "

    invoke-static {v0, p0, v3, v2}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_3c
    const-string p0, ""

    :cond_3e
    :goto_3e
    return-object p0
.end method

.method public static final updateAppConnectExpandDataIfNeeded(Lcom/android/launcher/Launcher;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const-string v1, "ExpandDataManager"

    const-string v2, "Hotseat_expand"

    if-nez v0, :cond_16

    const-string/jumbo p0, "updateAppConnectExpandDataIfNeeded not support docker expand device,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_58

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    if-ne v4, v6, :cond_44

    goto :goto_45

    :cond_44
    move v3, v5

    :goto_45
    if-nez v3, :cond_58

    const-string v3, "iconsize changed need recreate app connect bitmap"

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerAppConnectExpandData(Lcom/android/launcher/Launcher;Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateTaskbarAppConnectExpandData(Lcom/android/launcher/Launcher;Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;)V

    :cond_58
    return-void
.end method

.method public static final updateDockerAppConnectData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appConnectData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDockerAppConnectData appConnectData.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_4b

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->setShowExpandGuidTipType(I)V

    goto :goto_51

    :cond_4b
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->setShowExpandGuidTipType(I)V

    :goto_51
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow(ZZ)V

    return-void
.end method

.method public static final updateDockerAppConnectExpandData(Lcom/android/launcher/Launcher;Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_93

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getCallPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, v0

    :goto_18
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_1f
    move-object v2, v0

    :goto_20
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getSubIconUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    :cond_27
    move-object v3, v0

    :goto_28
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->createAppConnectBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_39

    return-void

    :cond_39
    if-nez p1, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-virtual {p1, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_3f
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCurrentExpandItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v3, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_7b

    invoke-static {p1}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    goto :goto_7c

    :cond_7b
    move-object p1, v0

    :goto_7c
    iput-object p1, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->getFirstExpandItem(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_8e

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    :cond_8e
    if-eqz v0, :cond_93

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_93
    return-void
.end method

.method public static final updateDockerRecentTaskData(Landroid/content/Context;ZZ)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const-string v1, "ExpandDataManager"

    const-string v2, "Hotseat_expand"

    if-nez v0, :cond_16

    const-string/jumbo p0, "updateDockerRecentTaskData not support docker expand device,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo p0, "updateDockerRecentTaskData return,expand dock switch off"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean p2, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v4, 0x1

    if-nez p2, :cond_67

    sget-boolean v5, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->enableUpdateExpandFlag:Z

    if-nez v5, :cond_67

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v5

    if-eqz v5, :cond_60

    sget-object v5, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "getAppContext()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v5

    if-eqz v5, :cond_60

    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const-string/jumbo v5, "updateDockerRecentTaskData launcher is not finish bind,only update taskbar"

    invoke-static {v2, v1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :cond_60
    const-string/jumbo p0, "updateDockerRecentTaskData launcher is not finish bind,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_67
    :goto_67
    if-eqz p1, :cond_7d

    if-nez p2, :cond_7d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p2

    if-eqz p2, :cond_7d

    invoke-static {v4}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->expandStateErrorCheck(Z)Z

    move-result p2

    if-eqz p2, :cond_7d

    const-string p0, "finishBind to updateDockerRecentTaskData dockExpandStateError return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7d
    invoke-static {}, Lcom/android/quickstep/TouchInteractionService;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_8f

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo p0, "recent tasks service is not initialized"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8f
    sget-object p2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p2}, Lcom/android/quickstep/SystemUiProxy;->isActive()Z

    move-result p2

    if-nez p2, :cond_a9

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo p0, "recent tasks SystemUiProxy is null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a9
    new-instance p2, Lcom/android/launcher3/z0;

    invoke-direct {p2, v3, p0, p1}, Lcom/android/launcher3/z0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Z)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final updateDockerRecentTaskData$lambda$4(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Z)V
    .registers 11

    const-string v0, "$onlyUpdateForTaskbar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "start get recent task,onlyUpdateForTaskbar:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const-string v4, "Hotseat_expand"

    const-string v5, "ExpandDataManager"

    invoke-static {v0, v1, v4, v5}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    new-instance v7, Lcom/android/launcher3/hotseat/expand/e;

    move-object v1, v7

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/hotseat/expand/e;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;ZLkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v7}, Lcom/android/quickstep/RecentsModel;->getTasksForTaskbar(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final updateDockerRecentTaskData$lambda$4$lambda$3(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/ArrayList;)V
    .registers 14

    const-string v0, "$currentTaskPkgList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentValidTaskPkgList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onlyUpdateForTaskbar"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_19

    invoke-static {p5}, Li4/u;->w(Ljava/util/List;)V

    :cond_19
    const/4 v0, 0x1

    const-string v1, "ExpandDataManager"

    const-string v2, "Hotseat_expand"

    if-eqz p5, :cond_158

    const-string v3, "get recent taskSize:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarCombineIconDisable()Z

    move-result v3

    if-nez v3, :cond_40

    invoke-static {p0, p5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->gatherRecentPkgFormRecentTaskWhenCombineIconEnable(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_43

    :cond_40
    invoke-static {p0, p5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->gatherRecentPkgFormRecentTask(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_43
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_47
    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_158

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarCombineIconDisable()Z

    move-result v3

    const/4 v4, 0x2

    const-string/jumbo v5, "pkg"

    const/4 v6, 0x0

    if-nez v3, :cond_95

    invoke-static {p5, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "_splitScreen"

    invoke-static {p5, v3, v6, v4}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-static {p5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8f

    instance-of v3, v3, Lcom/android/quickstep/util/GroupTask;

    if-nez v3, :cond_76

    goto :goto_8f

    :cond_76
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add a PoketStudio or google multip task component:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, v1, p5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_150

    :cond_8f
    :goto_8f
    const-string v3, "delete when find GroupTask result is null:"

    invoke-static {v3, p5, v2, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_95
    invoke-static {p2}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v3, p5, v7}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_a4

    goto :goto_47

    :cond_a4
    invoke-static {p5, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getUserId(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getRealPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageUserEncrypted(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_d5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableRecentTaskPkg,pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " is encrypted, won\'t show"

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, v1, p5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_47

    :cond_d5
    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-static {p5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getRealPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e9

    const-string/jumbo v3, "package is uninstall !! "

    invoke-static {v3, p5, v2, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_47

    :cond_e9
    sget-object v3, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launchIntentPkgCacheList:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f9

    sget-object v5, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->noLaunchIntentPkgCacheList:Ljava/util/ArrayList;

    invoke-virtual {v5, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    :cond_f9
    const-string v5, "_999"

    invoke-static {p5, v5, v6, v4}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    if-eqz v4, :cond_13e

    :cond_101
    if-eqz p2, :cond_112

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_112

    invoke-static {p5}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getRealPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_113

    :cond_112
    const/4 v3, 0x0

    :goto_113
    if-eqz v3, :cond_11c

    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launchIntentPkgCacheList:Ljava/util/ArrayList;

    invoke-virtual {v4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_121

    :cond_11c
    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->noLaunchIntentPkgCacheList:Ljava/util/ArrayList;

    invoke-virtual {v4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get recent task launch intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    :cond_13e
    if-nez v3, :cond_145

    const-string v4, ",has no launcher intent"

    invoke-static {p5, v4, v2, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_145
    if-eqz v3, :cond_150

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_150

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_150
    :goto_150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/16 v3, 0xa

    if-lt p5, v3, :cond_47

    :cond_158
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "all recentTaskList:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->setShowExpandGuidTipType(I)V

    iget-boolean p0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p3, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow(ZZ)V

    return-void
.end method

.method public static final updateExpandItemDelay(J)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final updateExpandItemsOnSplitModeChanged()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandShowMultiRecommendApp()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string/jumbo v2, "updateExpandItemsOnSplitModeChanged"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1c2

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskDelay(J)V

    return-void
.end method

.method public static final updateExpandItemsOnSplitScreenMinimizeModeExit()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandShowMultiRecommendApp()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string/jumbo v2, "updateExpandItemsOnSplitScreenModeExit"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1c2

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskDelay(J)V

    return-void
.end method

.method public static final updateMultiRecommendState(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "updateData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->setShowExpandGuidTipType(I)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShow(ZZ)V

    return-void
.end method

.method public static final updateRecentTaskDelay(J)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRecentTaskDelay : delayTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->DOCKER_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final updateRecentTaskRunnable$lambda$2()V
    .registers 3

    const-string v0, "Hotseat_expand"

    const-string v1, "ExpandDataManager"

    const-string/jumbo v2, "updateRecentTaskRunnable run"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static final updateTaskbarAppConnectExpandData(Lcom/android/launcher/Launcher;Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_79

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getCallPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v0

    :goto_1b
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;->getSubIconUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_22
    move-object p1, v0

    :goto_23
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, p1, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataParser;->createAppConnectBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_34

    return-void

    :cond_34
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarExpandDataItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    iput-object p0, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarAppConnectView()Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_74

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    :cond_74
    if-eqz v0, :cond_79

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_79
    return-void
.end method


# virtual methods
.method public final forceUpdateWhenPackageUninstall(Ljava/util/ArrayList;Landroid/content/Context;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const-string/jumbo p0, "pkgList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ExpandDataManager"

    const-string v3, "Hotseat_expand"

    if-eqz v1, :cond_a1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getGroupTaskByPkgNames(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/android/quickstep/util/GroupTask;

    if-eqz v4, :cond_2c

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v4}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v1, :cond_11

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isPocketStudioTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_6c
    new-array v1, p1, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v4, "forceUpdateWhenPackageUninstall packageNames is "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_11

    array-length v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    array-length v4, v1

    move v5, p1

    :goto_8c
    if-ge v5, v4, :cond_11

    aget-object v6, v1, v5

    sget-object v7, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v7, p2, v6}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9e

    const-string v0, "forceUpdateWhenPackageUninstall uninstall package:  "

    invoke-static {v0, v6, v3, v2}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_9e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    :cond_a1
    const-string p0, "forceUpdateWhenPackageUninstall: "

    invoke-static {p0, v0, v3, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final getAllCombinationGroupTaskMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->allCombinationGroupTaskMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getAppConnectDataItemMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getAppConnectList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getAssembleDockerExpandDataToShowRunnable()Ljava/lang/Runnable;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->assembleDockerExpandDataToShowRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getDockerExpandNeverBeenUpDate()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->dockerExpandNeverBeenUpDate:Z

    return p0
.end method

.method public final getEnableUpdateExpandFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->enableUpdateExpandFlag:Z

    return p0
.end method

.method public final getExpandSourceCallingPackageMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandSourceCallingPackageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getExpandUpdatingFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    return p0
.end method

.method public final getFinishedUpdateExpandFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->finishedUpdateExpandFlag:Z

    return p0
.end method

.method public final getIndexFromPkg(Ljava/lang/String;)J
    .registers 5

    const-string/jumbo p0, "pkg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "/"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexFromPkg index is :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide p0
.end method

.method public final getLastFinalShownExpandDataList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getLastLayoutDirection()I
    .registers 1

    sget p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastLayoutDirection:I

    return p0
.end method

.method public final getLaunchAppAnimationEndTime()J
    .registers 3

    sget-wide v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launchAppAnimationEndTime:J

    return-wide v0
.end method

.method public final getLauncherFinishBindFlag()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launcherFinishBindFlag:Z

    return p0
.end method

.method public final getLauncherOnBinding()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launcherOnBinding:Z

    return p0
.end method

.method public final getListFromCombineMap(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "pkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_6
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->allCombinationGroupTaskMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getIndexFromPkg(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2b

    const-string p1, "getListFromCombineMap error!! , e="

    const-string v0, "ExpandDataManager"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2b
    new-instance p0, Lh4/c;

    invoke-direct {p0}, Lh4/c;-><init>()V

    throw p0
.end method

.method public final getMultiRecommendAppList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getNeedFeedbackClickEventSourcePackageMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->needFeedbackClickEventSourcePackageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getRecentTaskList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getResetExpandUpdatingFlagRunnable()Ljava/lang/Runnable;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->resetExpandUpdatingFlagRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getUpdateRecentTaskRunnable()Ljava/lang/Runnable;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final groupTaskContainUninstallApp(Lcom/android/quickstep/util/GroupTask;Landroid/content/Context;)Z
    .registers 9

    const-string p0, "groupTask"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_33
    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v0, "groupTaskContainUninstallApp packageNames is "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "ExpandDataManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6f

    array-length v0, p1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_57

    goto :goto_6f

    :cond_57
    array-length v0, p1

    move v3, p0

    :goto_59
    if-ge p0, v0, :cond_6e

    aget-object v4, p1, p0

    sget-object v5, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v5, p2, v4}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    const-string v3, "groupTaskContainUninstallApp uninstall package:  "

    invoke-static {v3, v4, v1, v2}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_6b
    add-int/lit8 p0, p0, 0x1

    goto :goto_59

    :cond_6e
    move p0, v3

    :cond_6f
    :goto_6f
    return p0
.end method

.method public final setAllCombinationGroupTaskMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->allCombinationGroupTaskMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setAppConnectDataItemMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/hotseat/expand/ExpandDataManager$OplusHotseatExtraDataItem;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectDataItemMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setAppConnectList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->appConnectList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setDockerExpandNeverBeenUpDate(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->dockerExpandNeverBeenUpDate:Z

    return-void
.end method

.method public final setEnableUpdateExpandFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->enableUpdateExpandFlag:Z

    return-void
.end method

.method public final setExpandUpdatingFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->expandUpdatingFlag:Z

    return-void
.end method

.method public final setFinishedUpdateExpandFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->finishedUpdateExpandFlag:Z

    return-void
.end method

.method public final setLastFinalShownExpandDataList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastFinalShownExpandDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setLastLayoutDirection(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->lastLayoutDirection:I

    return-void
.end method

.method public final setLaunchAppAnimationEndTime(J)V
    .registers 3

    sput-wide p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launchAppAnimationEndTime:J

    return-void
.end method

.method public final setLauncherFinishBindFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launcherFinishBindFlag:Z

    return-void
.end method

.method public final setLauncherOnBinding(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->launcherOnBinding:Z

    return-void
.end method

.method public final setMultiRecommendAppList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->multiRecommendAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRecentTaskList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->recentTaskList:Ljava/util/ArrayList;

    return-void
.end method

.method public final shouldForceUpdateWhenPackageUninstall([Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7

    const-string/jumbo p0, "pkgList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v0, p0, :cond_1e

    aget-object v2, p1, v0

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v3, p2, v2}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    const-string/jumbo p0, "shouldForceUpdateWhenPackageUninstall: "

    const-string p1, "Hotseat_expand"

    const-string p2, "ExpandDataManager"

    invoke-static {p0, v1, p1, p2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return v1
.end method
