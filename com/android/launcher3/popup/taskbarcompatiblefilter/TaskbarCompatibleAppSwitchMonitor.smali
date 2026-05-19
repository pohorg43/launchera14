.class public final Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;
.implements Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskbarCompatibleAppSwitchMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskbarCompatibleAppSwitchMonitor.kt\ncom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,377:1\n1#2:378\n1855#3,2:379\n1855#3,2:381\n1855#3,2:383\n1855#3,2:385\n1855#3,2:387\n*S KotlinDebug\n*F\n+ 1 TaskbarCompatibleAppSwitchMonitor.kt\ncom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor\n*L\n266#1:379,2\n315#1:381,2\n325#1:383,2\n337#1:385,2\n343#1:387,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ACTIVITY_LAUNCHER:Ljava/lang/String; = "com.android.launcher.Launcher"

.field public static final Companion:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$Companion;

.field private static final MILL_TO_SECOND:I = 0x3e8

.field private static final PACKAGE_LAUNCHER:Ljava/lang/String; = "com.android.launcher"

.field private static final STATE_FOLD:I = 0x0

.field private static final STATE_HALF_OPEN:I = 0x2

.field private static final STATE_OPEN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TaskbarCompatibleAppSwitchMonitor"

.field private static final TASKBAR_IS_STASHED:Ljava/lang/String; = "taskbar_is_stashed"


# instance fields
.field private final mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

.field private mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

.field private mCurrentDay:I

.field private mCurrentShowInfo:Lcom/oplus/app/OplusAppEnterInfo;

.field private mCurrentState:I

.field private mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field private final mIntervalRunnable:Ljava/lang/Runnable;

.field private mIsApp:Z

.field private mLastState:I

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mLauncherScope:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private final mPackNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldDisplayToast:Z

.field private final mShowToastRunnable:Ljava/lang/Runnable;

.field private mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->Companion:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_1c

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncherScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-direct {p1}, Lcom/oplus/app/OplusAppSwitchConfig;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShouldDisplayToast:Z

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mUserId:I

    new-instance p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mIntervalRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroidx/core/widget/a;

    invoke-direct {p1, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShowToastRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$mAppSwitchObserver$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$mAppSwitchObserver$1;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShowToastRunnable$lambda$2(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V

    return-void
.end method

.method public static final synthetic access$getMAppSwitchConfig$p(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)Lcom/oplus/app/OplusAppSwitchConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

    return-object p0
.end method

.method public static final synthetic access$getMAppSwitchObserver$p(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    return-object p0
.end method

.method public static final synthetic access$getMIntervalRunnable$p(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mIntervalRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMShowToastRunnable$p(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShowToastRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$registerAppSwitchObserver(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->registerAppSwitchObserver()V

    return-void
.end method

.method public static final synthetic access$setMCurrentShowInfo$p(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentShowInfo:Lcom/oplus/app/OplusAppEnterInfo;

    return-void
.end method

.method public static final synthetic access$setMIsApp$p(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mIsApp:Z

    return-void
.end method

.method public static final synthetic access$setMShouldDisplayToast$p(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShouldDisplayToast:Z

    return-void
.end method

.method public static final synthetic access$showToast(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Lcom/oplus/app/OplusAppEnterInfo;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->showToast(Lcom/oplus/app/OplusAppEnterInfo;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mIntervalRunnable$lambda$0(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V

    return-void
.end method

.method private static final mIntervalRunnable$lambda$0(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShouldDisplayToast:Z

    return-void
.end method

.method private static final mShowToastRunnable$lambda$2(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentState:I

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "TaskbarCompatibleAppSwitchMonitor"

    const-string/jumbo v1, "mShowToastRunnable: show Toast"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShouldDisplayToast:Z

    sget-object v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getTotalDisplayTimes()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setTotalDisplayTimes(I)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getRemainderDTOneDay()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setRemainderDTOneDay(I)V

    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->setToastMessage(Landroid/content/Context;Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)V

    :cond_42
    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentShowInfo:Lcom/oplus/app/OplusAppEnterInfo;

    const/4 v5, 0x0

    if-eqz v3, :cond_4c

    iget-object v3, v3, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    goto :goto_4d

    :cond_4c
    move-object v3, v5

    :goto_4d
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->traverseListAccordingName(Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    iget-object v6, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentShowInfo:Lcom/oplus/app/OplusAppEnterInfo;

    if-eqz v6, :cond_5a

    iget-object v6, v6, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    goto :goto_5b

    :cond_5a
    move-object v6, v5

    :goto_5b
    invoke-virtual {p0, v3, v6}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->traverseListAccordingName(Ljava/util/List;Ljava/lang/String;)I

    move-result v3

    if-eq v2, v4, :cond_6e

    iget-object v3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_7f

    :cond_6e
    if-eq v3, v4, :cond_7d

    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_7f

    :cond_7d
    const-string v2, ""

    :goto_7f
    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->updateSingeDisplayTimes(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_93

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_93

    const v4, 0x7f1205ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_93
    invoke-static {v2, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mIntervalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getDisplayTimeInterval()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final registerAppSwitchObserver()V
    .registers 11

    invoke-direct {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->resetAllParameter()V

    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    iget-object v3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {v0, v1, v3}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z

    invoke-direct {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->updateCompatibleList()V

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    const-string/jumbo v4, "packageName"

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->getMonitorList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    const-string v4, "activityName"

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->getMonitorList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V

    iget-object v4, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncherScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-eqz v4, :cond_48

    sget-object v5, Lm7/y0;->b:Lm7/f0;

    new-instance v7, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$registerAppSwitchObserver$1;

    invoke-direct {v7, p0, v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$registerAppSwitchObserver$1;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Ll4/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_48
    return-void
.end method

.method private final resetAllParameter()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentShowInfo:Lcom/oplus/app/OplusAppEnterInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mIsApp:Z

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentDay:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShouldDisplayToast:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShowToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mIntervalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final showToast(Lcom/oplus/app/OplusAppEnterInfo;Z)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_10

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_10
    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_15
    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentShowInfo:Lcom/oplus/app/OplusAppEnterInfo;

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2d

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v1

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    iget-object v3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "taskbar_is_stashed"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v4, :cond_d7

    const-string/jumbo v4, "showToastEnter, info = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", info.multiApp = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p1, Lcom/oplus/app/OplusAppEnterInfo;->multiApp:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", single_app_total_display_times = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->traverseListAccordingName(Ljava/util/List;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getSelfDisplayTimes()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", totalDisplayTimes = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    invoke-virtual {v7}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getTotalDisplayTimes()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", maxDisplayTimesOneDay = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getMaxDTOneDay()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainderDTOneDay = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getRemainderDTOneDay()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mShouldDisplayToast = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShouldDisplayToast:Z

    const-string v8, ", isTaskbarSettingEnable = "

    const-string v9, ", isFoldState = "

    invoke-static {v4, v7, v8, v1, v9}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget v7, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentState:I

    if-eq v7, v6, :cond_ba

    if-ne v7, v5, :cond_b8

    goto :goto_ba

    :cond_b8
    move v7, v2

    goto :goto_bb

    :cond_ba
    :goto_ba
    const/4 v7, 0x1

    :goto_bb
    const-string v8, ", isApp = "

    const-string v9, ", taskbarIsStash = "

    invoke-static {v4, v7, v8, p2, v9}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mAppSwitchObserver = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    if-eqz p2, :cond_d2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_d2
    const-string p2, "TaskbarCompatibleAppSwitchMonitor"

    invoke-static {v4, v2, p2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_d7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentDay:I

    sget-object v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getLastDay()I

    move-result v4

    if-eq p2, v4, :cond_117

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object p2

    iget v4, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentDay:I

    invoke-virtual {p2, v4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setLastDay(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object p2

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getMaxDTOneDay()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->setRemainderDTOneDay(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p2, :cond_117

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_117

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->setToastMessage(Landroid/content/Context;Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)V

    :cond_117
    iget-boolean p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShouldDisplayToast:Z

    if-eqz p2, :cond_163

    iget-object p1, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->traverseListAccordingName(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getSelfDisplayTimes()I

    move-result p1

    if-lez p1, :cond_163

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getTotalDisplayTimes()I

    move-result p1

    if-lez p1, :cond_163

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getRemainderDTOneDay()I

    move-result p1

    if-lez p1, :cond_163

    if-eqz v1, :cond_163

    iget p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentState:I

    if-eq p1, v6, :cond_149

    if-ne p1, v5, :cond_163

    :cond_149
    if-nez v3, :cond_163

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mShowToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMToastMessage()Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->getDelayDisplaySecond()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x3e8

    int-to-long v2, p2

    mul-long/2addr v0, v2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_163
    return-void
.end method

.method private final updateCompatibleList()V
    .registers 7

    sget-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->getMCompatibleList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "it"

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_37
    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    const/4 v2, -0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "randomUUID().toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "com.android.launcher"

    const-string v5, "com.android.launcher.Launcher"

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCompatibleList: packNameList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n activityList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskbarCompatibleAppSwitchMonitor"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equalsCurrentUser()Z
    .registers 2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final getMDeviceStateManager()Landroid/hardware/devicestate/DeviceStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    return-object p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final getMonitorList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    const-string/jumbo v1, "packageName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_31
    invoke-virtual {v0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_39
    return-object p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 9

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "device_state"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.hardware.devicestate.DeviceStateManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    sget-object v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    invoke-virtual {v0, p0}, Lcom/android/rusconfig/RusBaseConfigManager;->registerRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    const-string p1, "TaskbarCompatibleAppSwitchMonitor"

    const-string/jumbo v0, "onDestroy 销毁对象"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    sget-object p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;->INSTANCE:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleToastManager;

    invoke-virtual {p1, p0}, Lcom/android/rusconfig/RusBaseConfigManager;->unregisterRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {p1, v0, v2}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z

    iput-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    return-void
.end method

.method public onRusConfigChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->registerAppSwitchObserver()V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChanged: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarCompatibleAppSwitchMonitor"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentState:I

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLastState:I

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentState:I

    invoke-virtual {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->equalsCurrentUser()Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_45

    :cond_2f
    iget p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_37

    const/4 v0, 0x2

    if-ne p1, v0, :cond_44

    :cond_37
    iget p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLastState:I

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mCurrentShowInfo:Lcom/oplus/app/OplusAppEnterInfo;

    if-eqz p1, :cond_44

    iget-boolean v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mIsApp:Z

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->showToast(Lcom/oplus/app/OplusAppEnterInfo;Z)V

    :cond_44
    return-void

    :cond_45
    :goto_45
    const-string/jumbo p0, "onActivityExit:Process.identifier = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", 前台Id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMDeviceStateManager(Landroid/hardware/devicestate/DeviceStateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    return-void
.end method

.method public final setMLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public final traverseListAccordingName(Ljava/util/List;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    if-nez p2, :cond_9

    return p0

    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2d
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :cond_31
    return p0
.end method

.method public final updateSingeDisplayTimes(Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mPackNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getSelfDisplayTimes()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->setSelfDisplayTimes(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getSelfDisplayTimes()I

    move-result v2

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_11

    :cond_37
    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->mActivityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getSelfDisplayTimes()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->setSelfDisplayTimes(I)V

    invoke-virtual {v2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->getSelfDisplayTimes()I

    move-result v2

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3d

    :cond_63
    sget-object v1, Lm7/y0;->d:Lm7/f0;

    invoke-static {v1}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;

    const/4 v1, 0x0

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Ljava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Ll4/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
