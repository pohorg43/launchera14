.class public final Lcom/android/launcher3/taskbar/OplusTaskbarManager;
.super Lcom/android/launcher3/taskbar/TaskbarManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskbarManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskbarManager.kt\ncom/android/launcher3/taskbar/OplusTaskbarManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,505:1\n1#2:506\n94#3,14:507\n*S KotlinDebug\n*F\n+ 1 OplusTaskbarManager.kt\ncom/android/launcher3/taskbar/OplusTaskbarManager\n*L\n309#1:507,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;

.field private static final TASKBAR_RECREATE_REASON_SWITCH_OFF:Ljava/lang/String; = "onTaskbarSettingDisable"

.field private static final TASKBAR_RECREATE_REASON_SWITCH_ON:Ljava/lang/String; = "onTaskbarSettingEnable"


# instance fields
.field private mCachedLargeScreenDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

.field private mCachedSmallScreenDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

.field private final mFoldStateChangeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

.field private mIsFold:Z

.field private mIsInParallelWindow:Z

.field private mIsTaskbarSettingEnable:Ljava/lang/Boolean;

.field private mLargeScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

.field private final mRecreateTaskOnLauncherDestroy:Ljava/lang/Runnable;

.field private mSmallScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

.field private mTaskBarEnableListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private mTaskbarDisableAnim:Landroid/animation/AnimatorSet;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .registers 7

    const-string/jumbo v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    new-instance p1, Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/ImeStateManage;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsTaskbarSettingEnable:Ljava/lang/Boolean;

    new-instance p1, Lcom/android/launcher3/folder/t;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mRecreateTaskOnLauncherDestroy:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarManager$mUserSwitchObserver$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$mUserSwitchObserver$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    new-instance v0, Lcom/android/launcher/guide/side/e;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mFoldStateChangeCallback:Ljava/util/function/Consumer;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_a2

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsTaskbarSettingEnable:Ljava/lang/Boolean;

    new-instance v2, Lcom/android/launcher/touch/c;

    invoke-direct {v2, p0}, Lcom/android/launcher/touch/c;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mTaskBarEnableListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first mIsTaskbarSettingEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsTaskbarSettingEnable:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taskbar"

    const-string v4, "TaskbarManager"

    invoke-static {v2, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->recreateTaskbarManager()V

    sget-object v1, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFold()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsFold:Z

    sget-object v1, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/util/FoldStateMonitor;->addCallback(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->initState()V

    :try_start_93
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_9a} :catch_9b

    goto :goto_a2

    :catch_9b
    move-exception p0

    const-string/jumbo p1, "registerUserSwitchObserver error"

    invoke-static {v4, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method private static final _init_$lambda$14(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Z)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->onTaskbarSettingEnableChange(Z)V

    return-void
.end method

.method public static final synthetic access$destroyExistingTaskbar$s-1239244929(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$setMTaskbarDisableAnim$p(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mTaskbarDisableAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final closeLauncherAllOpenViews()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getContext()Lcom/android/launcher3/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    :cond_10
    return-void
.end method

.method private final closeTaskbarAllOpenViews()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    :cond_8
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mFoldStateChangeCallback$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->_init_$lambda$14(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mRecreateTaskOnLauncherDestroy$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    return-void
.end method

.method private final getCachedCopyDeviceProfile(ZLandroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/OplusDeviceProfile;
    .registers 5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mCachedSmallScreenDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mCachedLargeScreenDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    :goto_7
    if-nez v0, :cond_14

    invoke-virtual {p3, p2}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    if-eqz p1, :cond_12

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mCachedSmallScreenDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    goto :goto_14

    :cond_12
    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mCachedLargeScreenDeviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    :cond_14
    :goto_14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getTaskbarProfile(Z)Lcom/android/launcher3/taskbar/TaskbarProfile;
    .registers 4

    const-string v0, "mContext"

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mSmallScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    if-nez p1, :cond_20

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarProfile;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarProfile;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getSmallScreenBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "getSmallScreenBounds()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->setWindowBounds(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mSmallScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mSmallScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_47

    :cond_26
    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mLargeScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    if-nez p1, :cond_42

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarProfile;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarProfile;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->getLargeScreenBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "getLargeScreenBounds()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->setWindowBounds(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mLargeScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    :cond_42
    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mLargeScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_47
    return-object p0
.end method

.method public static final isSmallScreenButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;->isSmallScreenButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result p0

    return p0
.end method

.method public static final isSmallScreenMode(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;->isSmallScreenMode(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z

    move-result p0

    return p0
.end method

.method private final isTaskbarPresent(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->cacheWindowOnDestroy(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_16

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isTaskbarPresent()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method private static final mFoldStateChangeCallback$lambda$1(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->onFoldChange(Z)V

    return-void
.end method

.method private static final mRecreateTaskOnLauncherDestroy$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defer recreate on Launcher Destroyed"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar(Ljava/lang/String;)V

    return-void
.end method

.method private final onFoldChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->onFoldStateChange(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsFold:Z

    if-eq v0, p1, :cond_26

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsFold:Z

    const-string/jumbo v0, "onFoldStateChange isFold: "

    const-string v1, "TaskbarManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->closeLauncherAllOpenViews()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->closeTaskbarAllOpenViews()V

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_26

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->getTaskbarProfile(Z)Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onFoldStateChange(ZLcom/android/launcher3/taskbar/TaskbarProfile;)V

    :cond_26
    return-void
.end method

.method private final onTaskbarSettingEnableChange(Z)V
    .registers 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsTaskbarSettingEnable:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsTaskbarSettingEnable:Ljava/lang/Boolean;

    const-string/jumbo v0, "onTaskbarSettingEnableChange mIsTaskbarSettingEnable:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsTaskbarSettingEnable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taskbar"

    const-string v2, "TaskbarManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    const-string/jumbo p1, "onTaskbarSettingEnable"

    goto :goto_32

    :cond_2f
    const-string/jumbo p1, "onTaskbarSettingDisable"

    :goto_32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->recreateTaskbar(Ljava/lang/String;Z)V

    :cond_36
    return-void
.end method


# virtual methods
.method public cacheContextWhenDestroy()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->cacheWindowOnDestroy(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public destroy()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroy()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mTaskBarEnableListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    const-string v1, "mContext"

    if-eqz v0, :cond_1e

    sget-object v2, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    :cond_1e
    sget-object v0, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mFoldStateChangeCallback:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/common/util/FoldStateMonitor;->removeCallback(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mRecreateTaskOnLauncherDestroy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mRecreateTaskOnLauncherDestroy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_41
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->onDestroyed()V

    :try_start_46
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_59

    :catch_50
    move-exception v0

    const-string v1, "TaskbarManager"

    const-string/jumbo v2, "unregisterUserSwitchObserver error"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_59
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    instance-of v2, v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v2, :cond_65

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    goto :goto_66

    :cond_65
    move-object v0, v1

    :goto_66
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->releaseTaskbarManager()V

    :cond_6b
    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-void
.end method

.method public destroyExistingTaskbar(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mTaskbarDisableAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->closeTaskbarAllOpenViews()V

    const-string/jumbo v0, "onTaskbarSettingDisable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsTaskbarSettingEnable:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v2, :cond_29

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createTaskbarTransYAnim(Ljava/lang/Boolean;)Landroid/animation/AnimatorSet;

    move-result-object v0

    move-object v1, v0

    :cond_29
    iput-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mTaskbarDisableAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_35

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$destroyExistingTaskbar$$inlined$addListener$default$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_35
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3a
    if-nez v1, :cond_3f

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V

    :cond_3f
    return-void

    :cond_40
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V

    return-void
.end method

.method public final isFold()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsFold:Z

    return p0
.end method

.method public final isForbidDelayForStash()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public final onLauncherConfigChange(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isLargeScreen(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLauncherConfigChange reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", windowBounds: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskbarManager"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_48

    const-string/jumbo p0, "onLauncherConfigChange ignore. isTablet"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_48
    sget-object p1, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/util/FoldStateMonitor;->isFold()Z

    move-result p1

    if-eq p1, v0, :cond_62

    const-string/jumbo p0, "onLauncherConfigChange ignore. fold state not matched, isFold: "

    invoke-static {p0, v0, p2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_62
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez p1, :cond_6d

    const-string/jumbo p0, "onLauncherConfigChange ignore. taskbar context null, isFold: "

    invoke-static {p0, v0, p2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_6d
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p1

    if-ne p1, v0, :cond_86

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->shouldUpdateWindowNext()Z

    move-result p1

    if-nez p1, :cond_86

    const-string/jumbo p0, "onLauncherConfigChange ignore. fold state not changed for taskbar"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_86
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->getTaskbarProfile(Z)Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_91

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateTaskbarProfile(Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    :cond_91
    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->onSystemUiFlagsChanged(I)I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->onSystemUiFlagsChanged(I)V

    return-void
.end method

.method public onTaskbarConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "newConfig"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "oldConfig"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    return v4

    :cond_1a
    iget v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mOriginDensityDpi:I

    if-eq v3, v5, :cond_22

    iput v3, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mOriginDensityDpi:I

    :cond_22
    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    const-string/jumbo v5, "onTaskbarConfigurationChanged "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newDensityDpi: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TaskbarManager"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    const-string v6, "mContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/util/FoldStateMonitor;->isFold()Z

    move-result v1

    new-instance v5, Lcom/android/launcher3/taskbar/TaskbarProfile;

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/android/launcher3/taskbar/TaskbarProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result v7

    if-eq v7, v1, :cond_91

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v8

    if-nez v8, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTaskbarConfigurationChanged fold state not matched, ignore. isFold: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConfigFold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_91
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v7, v8, :cond_9d

    move v7, v4

    goto :goto_9e

    :cond_9d
    const/4 v7, 0x0

    :goto_9e
    iget-object v8, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v8, :cond_ab

    invoke-virtual {v8}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v8

    if-eq v8, v7, :cond_a9

    goto :goto_ab

    :cond_a9
    const/4 v8, 0x0

    goto :goto_ac

    :cond_ab
    :goto_ab
    move v8, v4

    :goto_ac
    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->startConfigCache()V

    iget-boolean v9, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    if-eqz v9, :cond_c0

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v9

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v9

    goto :goto_c1

    :cond_c0
    const/4 v9, 0x0

    :goto_c1
    const v10, -0x7fffda00

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->noNeedRecreateWhenDarkModeChange()Z

    move-result v11

    if-eqz v11, :cond_cd

    const v10, -0x7fffdc00

    :cond_cd
    and-int v11, v2, v10

    if-eqz v11, :cond_d3

    move v11, v4

    goto :goto_d4

    :cond_d3
    const/4 v11, 0x0

    :goto_d4
    and-int/lit16 v12, v2, 0x2000

    if-eqz v12, :cond_d9

    goto :goto_da

    :cond_d9
    const/4 v4, 0x0

    :goto_da
    and-int/lit16 v12, v2, 0x400

    const/16 v16, 0x3

    const/16 v17, 0x2

    if-eqz v12, :cond_15a

    iget-object v12, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v12, :cond_15a

    invoke-virtual {v12}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result v13

    invoke-virtual {v12}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowHeight()I

    move-result v12

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result v14

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowHeight()I

    move-result v15

    if-ne v13, v14, :cond_fe

    if-eq v12, v15, :cond_102

    :cond_fe
    if-ne v13, v15, :cond_10e

    if-ne v12, v14, :cond_10e

    :cond_102
    and-int/lit16 v11, v2, -0x401

    and-int/2addr v10, v11

    if-eqz v10, :cond_109

    const/4 v10, 0x1

    goto :goto_10a

    :cond_109
    const/4 v10, 0x0

    :goto_10a
    move/from16 v19, v11

    move v11, v10

    goto :goto_110

    :cond_10e
    move/from16 v19, v2

    :goto_110
    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v20, "onTaskbarConfigurationChanged requiresRecreate: "

    const/16 v21, 0x0

    aput-object v20, v10, v21

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v10, v21

    const-string v20, ", oldWidth: "

    aput-object v20, v10, v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v16

    const-string v13, ", oldHeight: "

    const/16 v18, 0x4

    aput-object v13, v10, v18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v10, v13

    const-string v12, ", newWidth: "

    const/4 v13, 0x6

    aput-object v12, v10, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v10, v13

    const-string v12, ", newHeight: "

    const/16 v13, 0x8

    aput-object v12, v10, v13

    const/16 v12, 0x9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-static {v3, v10}, Lcom/android/common/debug/LogUtils;->dEx(Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v10, v19

    goto :goto_15b

    :cond_15a
    move v10, v2

    :goto_15b
    if-eqz v8, :cond_164

    const-string/jumbo v8, "onTaskbarConfigurationChanged isNavModeChanged, isGestureNav: "

    invoke-static {v8, v7, v3}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v11, 0x1

    :cond_164
    if-nez v11, :cond_16e

    invoke-direct {v0, v5}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->isTaskbarPresent(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/lit8 v11, v7, 0x1

    goto :goto_16f

    :cond_16e
    const/4 v8, 0x1

    :goto_16f
    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v12, "onTaskbarConfigurationChanged configDiff to recreate: "

    const/4 v13, 0x0

    aput-object v12, v7, v13

    invoke-static {v10}, Lcom/android/launcher3/taskbar/TaskbarDebugUtil;->getDiffForConfigsRequiringRecreate(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    const-string v8, ", originConfigDiff: "

    aput-object v8, v7, v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v16

    const-string v2, ", requiresRecreate: "

    const/4 v8, 0x4

    aput-object v2, v7, v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v7, v8

    const-string v2, ", forceRecreate: "

    const/4 v8, 0x6

    aput-object v2, v7, v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v7, v8

    invoke-static {v3, v7}, Lcom/android/common/debug/LogUtils;->dEx(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v9, :cond_1af

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isTaskbarPresent()Z

    move-result v3

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/DeviceProfile;->updateTaskbarPresent(Landroid/content/Context;Z)V

    :cond_1af
    if-eqz v11, :cond_1b8

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->recreateTaskbar(Lcom/android/launcher3/taskbar/TaskbarProfile;Ljava/lang/String;Z)V

    goto :goto_1d1

    :cond_1b8
    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v2, :cond_1d1

    if-eqz v9, :cond_1cc

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v9}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->getCachedCopyDeviceProfile(ZLandroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2, v1, v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    :cond_1cc
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onConfigurationChanged(I)V

    :cond_1d1
    :goto_1d1
    const/4 v0, 0x1

    return v0
.end method

.method public final recreateTaskbar(Lcom/android/launcher3/taskbar/TaskbarProfile;Ljava/lang/String;Z)V
    .registers 12

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    const-string v1, "mContext"

    if-eqz v0, :cond_1a

    if-nez p1, :cond_1b

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarProfile;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;-><init>(Landroid/content/Context;)V

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :cond_1b
    :goto_1b
    move-object v5, p1

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    const-string p3, "TaskbarManager"

    if-nez v5, :cond_2c

    const-string/jumbo v0, "recreateTaskbar return, mUserUnlocked false, reason: "

    invoke-static {v0, p2, p3}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    goto :goto_30

    :cond_2c
    invoke-direct {p0, v5}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->isTaskbarPresent(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z

    move-result v0

    :goto_30
    const-string v2, "Taskbar"

    if-eqz v5, :cond_fa

    if-nez v0, :cond_38

    goto/16 :goto_fa

    :cond_38
    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p1

    if-nez p1, :cond_41

    iput-object v5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mLargeScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    goto :goto_43

    :cond_41
    iput-object v5, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mSmallScreenProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    :goto_43
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-string/jumbo v0, "recreateTaskbar -->enable, reason: "

    const-string v3, ", deviceProfile width: "

    invoke-static {v0, p2, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", taskbarProfile: width: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isTaskbarPresent()Z

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/android/launcher3/DeviceProfile;->updateTaskbarPresent(Landroid/content/Context;Z)V

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dp"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->getCachedCopyDeviceProfile(ZLandroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isTaskbarPresent()Z

    move-result p3

    invoke-virtual {v4, p1, p3}, Lcom/android/launcher3/DeviceProfile;->updateTaskbarPresent(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez p1, :cond_c0

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;Lcom/android/launcher3/taskbar/TaskbarProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mImeStateManage:Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/ImeStateManage;->onTaskbarActivityContextCreated()V

    goto :goto_c3

    :cond_c0
    invoke-virtual {p1, v4, v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    :goto_c3
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p1, :cond_d7

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    :cond_d7
    const-string/jumbo p1, "onTaskbarSettingEnable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->mIsTaskbarSettingEnable:Ljava/lang/Boolean;

    if-eqz p1, :cond_f9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_f9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createTaskbarTransYAnim(Ljava/lang/Boolean;)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_f9

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_f9
    return-void

    :cond_fa
    :goto_fa
    const-string/jumbo v0, "recreateTaskbar -->disable, enable: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, p1, p1}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarStatus(ZZ)V

    return-void
.end method

.method public recreateTaskbar(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->recreateTaskbar(Lcom/android/launcher3/taskbar/TaskbarProfile;Ljava/lang/String;Z)V

    return-void
.end method
