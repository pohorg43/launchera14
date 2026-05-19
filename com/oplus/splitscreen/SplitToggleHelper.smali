.class public Lcom/oplus/splitscreen/SplitToggleHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ENABLE_COLOR_SPLIT_FEATURE:Z

.field private static final ENABLE_LARGE_SCREEN_FEATURE:Z

.field private static final ENABLE_PAIR_SPLIT_FEATURE:Z

.field private static final FEATURE_COLOR_SPLIT_FEATURE:Ljava/lang/String; = "oplus.software.color_split_feature"

.field private static final FEATURE_FOLD:Ljava/lang/String; = "oplus.hardware.type.fold"

.field private static final FEATURE_POCKET_STUDIO_SUPPORT:Ljava/lang/String; = "oplus.software.pocketstudio.support"

.field private static final FEATURE_REMAP_DISPLAY_DISABLED:Ljava/lang/String; = "oplus.software.fold_remap_display_disabled"

.field private static final FEATURE_TABLET:Ljava/lang/String; = "oplus.hardware.type.tablet"

.field private static final FORBID_SPLITSCREEN_FEATURE:Ljava/lang/String; = "oplus.customize.splitscreen.disable"

.field private static final KEY_CHILDREN_MODE:Ljava/lang/String; = "children_mode_on"

.field private static final KEY_STUDY_CENTER_MODE:Ljava/lang/String; = "STUDY_CENTER_MODE"

.field private static final MARKET_HEYDEMO_PACKAGE_NAME:Ljava/lang/String; = "com.market.heydemo"

.field private static final PACKAGE_BOOT_REG:Ljava/lang/String; = "com.coloros.bootreg"

.field private static final RESET_IS_ACTIVITY_TRANSITION_IN_SPLIT_TIMEOUT:I = 0x320

.field private static final RESET_IS_SNAPPING_TO_DISMISS_TIMEOUT:I = 0x320

.field public static final SAFECENTER_PASSWORD_ACTIVITY:Ljava/lang/String; = "com.oplus.safecenter/.privacy.view.password.AppUnlockPasswordActivity"

.field private static final SETTINGS_FORBID_SPLITSCREEN:Ljava/lang/String; = "forbid_splitscreen_by_ep"

.field private static final SPLIT_NOTIFY_TOAST_COUNTS:Ljava/lang/String; = "record_split_notify_toast_counts"

.field private static final SUPER_POWERSAVE_LAUNCHER_ENTER:Ljava/lang/String; = "super_powersave_launcher_enter"

.field private static final TAG:Ljava/lang/String; = "SplitToggleHelper"

.field private static final TYPE_APPLICATION_IN_ZOOM:I = 0x1

.field private static final TYPE_APP_HAS_OPEN_WARN:I = 0x2

.field private static final TYPE_FLEXIBLE_TWO_SPLIT_DISABLED_PORTRAIT:I = 0x6

.field private static final TYPE_FLEXIBLE_TWO_SPLIT_TWO_FINGER_TOGGLE:I = 0x5

.field private static final TYPE_SHORTCUT_NOT_OPEN_ON_LARGSCREEN:I = 0x3

.field private static final TYPE_TWO_FINGER_ENTER_SPLIT:I = 0x4

.field private static final WARNING_TOAST_TIME_OUT:I = 0x76c

.field private static final WINDOWING_MODE_BRACKET:I = 0x73

.field private static volatile sInstance:Lcom/oplus/splitscreen/SplitToggleHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private mEnterMinimizedType:I

.field private mEnterNormalType:I

.field private mExitFromSafeCenter:Z

.field private mExitSplitType:I

.field private mExitType:I

.field private mHasColorSplitFeature:Z

.field private mHasLargeScreenFeature:Z

.field private mHasPocketStudioFeature:Z

.field private mHasSplitPairFeature:Z

.field private mInit:Z

.field private mIsActivityTransitionInSplit:Z

.field private mIsFlipDevice:Z

.field private mIsFoldDevice:Z

.field private mIsOpeningFullApp:Z

.field private mIsRelaunchRequest:Z

.field private mIsSnappingToDismiss:Z

.field private mIsSplitScreenGestureSnapshotRunning:Z

.field private mIsTabletDevice:Z

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mNeedGoLegacy:Z

.field private mNeedNotGoLegacyReason:I

.field private mOpeningTaskId:I

.field private mPendingEnterSplitTaskId:I

.field private mPendingEnterSplitTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRecordToastCount:I

.field private final mResetIsActivityTransitionInSplit:Ljava/lang/Runnable;

.field private final mResetIsSnappingToDismiss:Ljava/lang/Runnable;

.field private mShellMainTid:I

.field private mStartType:I

.field private mStashPositionInMinimized:I

.field private mSystemUiPid:I

.field private mZoomTransferToSplitAnimating:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "persist.sys.color_split_feature_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/splitscreen/SplitToggleHelper;->ENABLE_COLOR_SPLIT_FEATURE:Z

    const-string v0, "persist.sys.large_screen_split_feature_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/splitscreen/SplitToggleHelper;->ENABLE_LARGE_SCREEN_FEATURE:Z

    const-string v0, "persist.sys.pair_split_feature_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/splitscreen/SplitToggleHelper;->ENABLE_PAIR_SPLIT_FEATURE:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitType:I

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsTabletDevice:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsFoldDevice:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsFlipDevice:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasColorSplitFeature:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasSplitPairFeature:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mInit:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasPocketStudioFeature:Z

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mPendingEnterSplitTaskId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStashPositionInMinimized:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mPowerManager:Landroid/os/PowerManager;

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mRecordToastCount:I

    iput v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mEnterMinimizedType:I

    iput v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mEnterNormalType:I

    iput v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitSplitType:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedGoLegacy:Z

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedNotGoLegacyReason:I

    iput v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mOpeningTaskId:I

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsSnappingToDismiss:Z

    new-instance v1, Lcom/oplus/splitscreen/j;

    invoke-direct {v1, p0, v0}, Lcom/oplus/splitscreen/j;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mResetIsSnappingToDismiss:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitFromSafeCenter:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsRelaunchRequest:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsSplitScreenGestureSnapshotRunning:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mZoomTransferToSplitAnimating:Z

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsActivityTransitionInSplit:Z

    new-instance v1, Lcom/oplus/splitscreen/g;

    invoke-direct {v1, p0, v0}, Lcom/oplus/splitscreen/g;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mResetIsActivityTransitionInSplit:Ljava/lang/Runnable;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v3, "oplus.hardware.type.fold"

    invoke-virtual {v1, v3}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsFoldDevice:Z

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v3, "oplus.hardware.type.tablet"

    invoke-virtual {v1, v3}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsTabletDevice:Z

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v3, "oplus.software.fold_remap_display_disabled"

    invoke-virtual {v1, v3}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsFlipDevice:Z

    sget-boolean v1, Lcom/oplus/splitscreen/SplitToggleHelper;->ENABLE_LARGE_SCREEN_FEATURE:Z

    if-eqz v1, :cond_85

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsFoldDevice:Z

    if-nez v1, :cond_7d

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsTabletDevice:Z

    if-eqz v1, :cond_85

    :cond_7d
    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFlipDevice()Z

    move-result v1

    if-nez v1, :cond_85

    move v1, v2

    goto :goto_86

    :cond_85
    move v1, v0

    :goto_86
    iput-boolean v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    sget-boolean v3, Lcom/oplus/splitscreen/SplitToggleHelper;->ENABLE_PAIR_SPLIT_FEATURE:Z

    if-eqz v3, :cond_90

    if-eqz v1, :cond_90

    move v1, v2

    goto :goto_91

    :cond_90
    move v1, v0

    :goto_91
    iput-boolean v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasSplitPairFeature:Z

    sget-boolean v1, Lcom/oplus/splitscreen/SplitToggleHelper;->ENABLE_COLOR_SPLIT_FEATURE:Z

    if-eqz v1, :cond_a4

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v3, "oplus.software.color_split_feature"

    invoke-virtual {v1, v3}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    move v0, v2

    :cond_a4
    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasColorSplitFeature:Z

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.pocketstudio.support"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasPocketStudioFeature:Z

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showFlexibleTwoFingerDisabledPortraitToast$11()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$toggleSplitScreenMode$2()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showAdjustToMaxWidthWarn$8()V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showCannotOpenShortcutOnFoldedDisplay$15()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showEnterMinimizedToast$10()V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$toggleSplitScreenMode$0()V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$needInterceptStartForSplitScreen$5(Ljava/lang/String;)V

    return-void
.end method

.method private gestureSplitDisabled(II)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_8

    return v0

    :cond_8
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_19

    move p1, v1

    goto :goto_1a

    :cond_19
    move p1, v0

    :goto_1a
    iget-boolean v2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsTabletDevice:Z

    if-eqz v2, :cond_22

    if-nez p1, :cond_22

    move p1, v1

    goto :goto_23

    :cond_22
    move p1, v0

    :goto_23
    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/oplus/splitscreen/l;

    invoke-direct {v0, p0, p2, v1}, Lcom/oplus/splitscreen/l;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;II)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_30
    return v0
.end method

.method private getCounts(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mRecordToastCount:I

    const-string v0, "getCounts key = "

    const-string v1, " counts = "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mRecordToastCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitToggleHelper"

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mRecordToastCount:I

    return p0
.end method

.method public static getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;
    .registers 2

    sget-object v0, Lcom/oplus/splitscreen/SplitToggleHelper;->sInstance:Lcom/oplus/splitscreen/SplitToggleHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/splitscreen/SplitToggleHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/splitscreen/SplitToggleHelper;->sInstance:Lcom/oplus/splitscreen/SplitToggleHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/splitscreen/SplitToggleHelper;

    invoke-direct {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;-><init>()V

    sput-object v1, Lcom/oplus/splitscreen/SplitToggleHelper;->sInstance:Lcom/oplus/splitscreen/SplitToggleHelper;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/splitscreen/SplitToggleHelper;->sInstance:Lcom/oplus/splitscreen/SplitToggleHelper;

    return-object v0
.end method

.method public static synthetic h(Landroid/widget/Toast;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showOpenInLargeScreen$7(Landroid/widget/Toast;)V

    return-void
.end method

.method private hasForbidScreenScreenFeature()Z
    .registers 3

    const/4 p0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "oplus.customize.splitscreen.disable"

    invoke-interface {v0, v1, p0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    return p0

    :catch_c
    const-string v0, "SplitToggleHelper"

    const-string v1, "hasForbidScreenScreenFeature RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static synthetic i(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/CharSequence;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showAppHasOpenedWarn$17(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private isChildrenMode()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "children_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method private isEnterpriseDisableSplitScreen()Z
    .registers 3

    const/4 p0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forbid_splitscreen_by_ep"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move p0, v1

    :cond_13
    return p0

    :catch_14
    const-string v0, "SplitToggleHelper"

    const-string v1, "isEnterpriseDisableSplitScreen error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isRectValid(Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method private isSnapshotEditing()Z
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    const-string v0, "color_screenshot"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/screenshot/OplusScreenshotManager;

    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScreenshotManager;->isScreenshotEdit()Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSnapshotEditing error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplitToggleHelper"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isStudyCenterMode()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "STUDY_CENTER_MODE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method private isSuperPowerSaveDisableSplitScreen()Z
    .registers 3

    const/4 p0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "super_powersave_launcher_enter"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move p0, v1

    :cond_13
    return p0

    :catch_14
    const-string v0, "SplitToggleHelper"

    const-string v1, "isSuperPowerSaveDisableSplitScreen error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isToggleFromServiceWhenSwitchOff()Z
    .registers 3

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x6

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-static {}, Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;->getInstance()Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;->isSplitScreenFingersEnabled()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static synthetic j(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showApplicationInZoomMode$13()V

    return-void
.end method

.method public static synthetic k(Lcom/oplus/splitscreen/SplitToggleHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$gestureSplitDisabled$16(I)V

    return-void
.end method

.method public static synthetic l(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showTwoSplitTwoFingerEnterMode$14()V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenMode$4(IZZZ)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    const-string v1, "SplitToggleHelper"

    if-nez v0, :cond_21

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 p1, 0x0

    const-string p2, "home_key_called"

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_45

    :cond_1b
    const-string p0, "Exit split-screen mode when not in multi-window!"

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :cond_21
    const-string v0, "Exit split-screen mode, state:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerConstant;->exitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitType(I)V

    if-eqz p2, :cond_40

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreenAndGoHome()V

    goto :goto_45

    :cond_40
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(ZZ)V

    :goto_45
    return-void
.end method

.method private synthetic lambda$gestureSplitDisabled$16(I)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$string;->oplus_split_screen_two_finger_split_disabled_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private synthetic lambda$getProcessInfo$18()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mShellMainTid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mSystemUiPid:I

    return-void
.end method

.method private synthetic lambda$needInterceptStartForSplitScreen$5(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->needToast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasPocketStudioFeature:Z

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getInstance()Lcom/oplus/splitscreen/SplitScreenAppConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->isInPocketStudioBlackList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->showOpenInLargeScreen()V

    goto :goto_27

    :cond_23
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->showAppNotSupportWarn(Ljava/lang/String;I)V

    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenUndockInfo(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$showAdjustToMaxWidthWarn$8()V
    .registers 4

    const-string v0, "SplitToggleHelper"

    const-string v1, "showAdjustToMaxWidthWarn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$string;->oplus_split_screen_adjust_boundary:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    move-result-object p0

    const-string v0, "adjust_to_max_width"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$showAppHasOpenedWarn$17(Ljava/lang/CharSequence;I)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->oplus_drag_app_has_opened_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_10
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wm/shell/R$string;->oplus_drag_app_has_opened_format_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_21
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private synthetic lambda$showApplicationInZoomMode$13()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->application_already_open_in_zoom_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showCannotOpenShortcutOnFoldedDisplay$15()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->oplus_notopen_shortcut_ps:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showEnterMinimizedToast$10()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->oplus_split_open_to_normal_with_anotherapp:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showFlexibleTwoFingerDisabledPortraitToast$11()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->oplus_split_screen_two_finger_split_disabled_portrait:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showNotSupportSplitWarn$9(Ljava/lang/CharSequence;I)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->recents_incompatible_app_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_10
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wm/shell/R$string;->oplus_split_screen_failed_to_dock_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_21
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private static synthetic lambda$showOpenInLargeScreen$6(Landroid/widget/Toast;)V
    .registers 3

    if-eqz p0, :cond_c

    const-string v0, "SplitToggleHelper"

    const-string v1, "backgroundExecutor executeDelayed to cancel toast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_c
    return-void
.end method

.method private static synthetic lambda$showOpenInLargeScreen$7(Landroid/widget/Toast;)V
    .registers 1

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showTwoFingerEnterSplitToast$12()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->oplus_Three_finger_open_splitscreen_launcher_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showTwoSplitTwoFingerEnterMode$14()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->flexible_two_split_two_finger_toggle:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$toggleSplitScreenMode$0()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    move-result-object p0

    const-string v0, "two_split_down_counts"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->recordCounts(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$toggleSplitScreenMode$1()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    move-result-object p0

    const-string v0, "four_drag_window_end_counts"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->recordCounts(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$toggleSplitScreenMode$2()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->removeGestureGuideIfNeed()V

    return-void
.end method

.method private synthetic lambda$toggleSplitScreenMode$3(I)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-nez v0, :cond_11

    if-ne p1, v2, :cond_11

    move p1, v1

    :cond_11
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eq p1, v2, :cond_1c

    const/4 v3, 0x2

    if-ne p1, v3, :cond_22

    :cond_1c
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v0

    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleSplitScreenMode: newType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; inSplitMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SplitToggleHelper"

    invoke-static {v4, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_7d

    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterMinimizedType(I)I

    invoke-static {}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getInstance()Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getRunningTaskWithoutZoom()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v3, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    if-ne v3, v1, :cond_6b

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-eqz v1, :cond_6b

    const-string v1, "Three finger up gesture return"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isSplitScreenAvailable(ZLandroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wm/shell/R$string;->oplus_Three_finger_open_splitscreen_launcher_message:I

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    :cond_6a
    return-void

    :cond_6b
    invoke-virtual {p0, v2, v0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isSplitScreenAvailable(ZLandroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-direct {p0, p1, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->splitPrimaryTask(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-nez p1, :cond_7d

    :cond_77
    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetStartType()V

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterMinimizedType()V

    :cond_7d
    return-void
.end method

.method public static synthetic m(Landroid/widget/Toast;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showOpenInLargeScreen$6(Landroid/widget/Toast;)V

    return-void
.end method

.method public static synthetic n(Lcom/oplus/splitscreen/SplitToggleHelper;IZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$exitSplitScreenMode$4(IZZZ)V

    return-void
.end method

.method private needToast(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.coloros.bootreg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic o(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$toggleSplitScreenMode$1()V

    return-void
.end method

.method public static synthetic p(Lcom/oplus/splitscreen/SplitToggleHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$toggleSplitScreenMode$3(I)V

    return-void
.end method

.method public static synthetic q(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showTwoFingerEnterSplitToast$12()V

    return-void
.end method

.method public static synthetic r(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/CharSequence;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$showNotSupportSplitWarn$9(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private recordCounts(Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mRecordToastCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mRecordToastCount:I

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    move-result-object v0

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mRecordToastCount:I

    invoke-virtual {v0, p1, p0}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->putIntPref(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic s(Lcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->lambda$getProcessInfo$18()V

    return-void
.end method

.method private setNeedGoLegacy(ZI)V
    .registers 6

    const-string v0, "setNeedGoLegacy "

    const-string v1, ", for reason "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/oplus/splitscreen/DividerConstant;->legacySwitchReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitToggleHelper"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1f

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedNotGoLegacyReason:I

    goto :goto_21

    :cond_1f
    iput p2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedNotGoLegacyReason:I

    :goto_21
    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedGoLegacy:Z

    return-void
.end method

.method private showCannotOpenShortcutOnFoldedDisplay()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/splitscreen/k;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showDismissingDockedStackToast(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getRunningTaskLabel(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->recents_incompatible_app_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_16
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wm/shell/R$string;->oplus_split_screen_failed_to_dock_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_27
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private showFlexibleTwoFingerDisabledPortraitToast()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/splitscreen/h;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showOpenInLargeScreen()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$string;->oplus_open_splitscreen_in_large_screen:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/wm/shell/ShellBackgroundThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    if-eqz v1, :cond_27

    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Landroid/widget/Toast;)V

    const-wide/16 v2, 0x76c

    invoke-interface {v1, v0, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    new-instance v0, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Landroid/widget/Toast;)V

    invoke-interface {v1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method

.method private showToast(Landroid/content/Context;III)V
    .registers 5

    const/4 p0, 0x2

    if-ne p4, p0, :cond_4

    return-void

    :cond_4
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .registers 5

    const/4 p0, 0x2

    if-ne p4, p0, :cond_4

    return-void

    :cond_4
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showToastAndExitIfNeeded(I)Z
    .registers 6

    iget v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    move v1, v2

    goto :goto_26

    :cond_b
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/wm/shell/R$string;->oplus_open_splitscreen_menu_message:I

    invoke-direct {p0, v0, v3, v2, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    goto :goto_26

    :cond_13
    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/wm/shell/R$string;->oplus_open_splitscreen_launcher_message:I

    invoke-direct {p0, v0, v3, v2, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    goto :goto_26

    :cond_1f
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/wm/shell/R$string;->oplus_open_splitscreen_launcher_message_largescreen:I

    invoke-direct {p0, v0, v3, v2, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    :goto_26
    if-eqz v1, :cond_2d

    iput v2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterMinimizedType()V

    :cond_2d
    return v1
.end method

.method private showTwoFingerEnterSplitToast()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/oplus/splitscreen/k;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private splitPrimaryTask(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 9

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isUserSetup(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SplitToggleHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    const-string p0, "toggleSplitScreen isUserSetup is false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_11
    if-eqz p2, :cond_1c

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    invoke-static {}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getInstance()Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v4, :cond_2f

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2d

    goto :goto_2f

    :cond_2d
    move v0, v2

    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v5

    :goto_30
    if-nez v3, :cond_40

    if-eqz v0, :cond_40

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToastAndExitIfNeeded(I)Z

    move-result v4

    if-eqz v4, :cond_40

    const-string p0, "In home or recent stack Return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_40
    if-eqz p2, :cond_78

    if-nez v0, :cond_78

    if-nez v3, :cond_78

    iget-boolean v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->getInstance()Lcom/oplus/splitscreen/SplitScreenGuideManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->handleToggleSplitScreenMode(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string p0, "toggleSplitScreenMode from menu,Guide handled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5a
    invoke-static {}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getInstance()Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->checkIsOpenSplitPrimaryTask(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    if-eq v0, v5, :cond_70

    if-nez v0, :cond_6f

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showAppNotSupportWarn(Ljava/lang/String;I)V

    :cond_6f
    return v2

    :cond_70
    invoke-direct {p0, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->splitPrimaryTaskImpl(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :cond_75
    invoke-direct {p0, p2, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showDismissingDockedStackToast(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    :cond_78
    return v2
.end method

.method private splitPrimaryTaskImpl(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p0, "SplitToggleHelper"

    const-string p1, "splitPrimaryTaskImpl error, SplitToggleHelper is not ready"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1f

    move v0, v3

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    iget-boolean v2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-nez v2, :cond_27

    if-eqz v0, :cond_27

    move v1, v3

    :cond_27
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->enterSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenLaunched(Landroid/content/Context;I)V

    return v3
.end method


# virtual methods
.method public exitSplitScreenMode(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenMode(ZZZI)V

    return-void
.end method

.method public exitSplitScreenMode(ZZI)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenMode(ZZZI)V

    return-void
.end method

.method public exitSplitScreenMode(ZZZI)V
    .registers 13

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez v0, :cond_c

    const-string p0, "SplitToggleHelper"

    const-string p1, "exitSplitScreenMode error, SplitToggleHelper is not ready"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v7, Lcom/oplus/splitscreen/n;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/oplus/splitscreen/n;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;IZZZ)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitSplitScreenModeAndGoHome(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenMode(ZZZI)V

    return-void
.end method

.method public getCurrentLetterbox(II)[Landroid/graphics/Rect;
    .registers 13

    const-string p0, "SplitToggleHelper"

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v4

    if-eqz v4, :cond_68

    if-lez p1, :cond_68

    if-lez p2, :cond_68

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_68

    if-eqz v5, :cond_1e

    goto :goto_5c

    :cond_1e
    move-object v5, v1

    move v6, v3

    :goto_20
    :try_start_20
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_69

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v7, :cond_59

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentLetterbox ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v8, :cond_53

    invoke-static {v7}, Lcom/oplus/compatui/ReflectionHelper;->RunningTaskInfo_topActivityLetterboxInsets(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_59

    :cond_53
    if-ne p2, v8, :cond_59

    invoke-static {v7}, Lcom/oplus/compatui/ReflectionHelper;->RunningTaskInfo_topActivityLetterboxInsets(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/Rect;

    move-result-object v5
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_59} :catch_69

    :cond_59
    :goto_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_5c
    :goto_5c
    :try_start_5c
    const-string v4, "getCurrentLetterbox  list no valid"

    invoke-static {p0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v0, [Landroid/graphics/Rect;

    aput-object v1, v4, v3

    aput-object v1, v4, v2
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_67} :catch_68

    return-object v4

    :catch_68
    :cond_68
    move-object v5, v1

    :catch_69
    :cond_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentLetterbox   mainTaskId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mainLetter="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", taskInfo="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",sideLetter="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v0, [Landroid/graphics/Rect;

    aput-object v1, p0, v3

    aput-object v5, p0, v2

    return-object p0
.end method

.method public getEnterMinimizedType()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mEnterMinimizedType:I

    return p0
.end method

.method public getEnterNormalType()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mEnterNormalType:I

    return p0
.end method

.method public getExitSplitType()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitSplitType:I

    return p0
.end method

.method public getExitType()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitType:I

    return p0
.end method

.method public getNotGoLegacyReason()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedNotGoLegacyReason:I

    return p0
.end method

.method public getPendingEnterSplitTaskId()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mPendingEnterSplitTaskId:I

    return p0
.end method

.method public getPendingEnterSplitTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mPendingEnterSplitTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getProcessInfo()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/splitscreen/i;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getShellMainTid()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mShellMainTid:I

    return p0
.end method

.method public getSplitAppName()Ljava/util/HashMap;
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez p0, :cond_d

    const-string p0, "SplitToggleHelper"

    const-string v0, "getSplitAppName error, SplitToggleHelper is not ready"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getSplitAppName()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getStartType()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    return p0
.end method

.method public getStashPositionInMinimized()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStashPositionInMinimized:I

    return p0
.end method

.method public getSystemUiPid()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mSystemUiPid:I

    return p0
.end method

.method public hasColorSplitFeature()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasColorSplitFeature:Z

    return p0
.end method

.method public hasLargeScreenFeature()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    return p0
.end method

.method public hasPocketStudioFeature()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasPocketStudioFeature:Z

    return p0
.end method

.method public hasSplitPairFeature()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasSplitPairFeature:Z

    return p0
.end method

.method public hideImeDimLayerWhenRemoveImeSurface()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->hideImeDimLayerWhenRemoveImeSurface()V

    :cond_b
    return-void
.end method

.method public hookImePositionIfNeeded(IIZZZ)I
    .registers 10

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    return p1

    :cond_4
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->hasChildTask(Z)Z

    move-result v1

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->hasChildTask(Z)Z

    move-result v3

    :cond_20
    if-eqz v1, :cond_2d

    if-eqz v3, :cond_2d

    if-nez p4, :cond_2d

    if-nez p5, :cond_2d

    if-eq p2, v0, :cond_2c

    move p1, p2

    goto :goto_2d

    :cond_2c
    move p1, v2

    :cond_2d
    :goto_2d
    const-string p0, "hookImePositionIfNeeded  newImePos="

    const-string v0, ",lastPos="

    const-string v2, ",mainHasChild="

    invoke-static {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ",sideHasChild="

    const-string v0, ",isLand="

    invoke-static {p0, v1, p2, v3, v0}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p2, ",showing="

    const-string v0, ", isFloating="

    invoke-static {p0, p3, p2, p4, v0}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SplitToggleHelper"

    invoke-static {p2, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public hookImeTargetYOffsetWhenBeyondScreen(Lcom/android/wm/shell/common/split/SplitLayout;III)Lcom/android/internal/os/SomeArgs;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    iget-object v4, v0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v4

    goto :goto_15

    :cond_14
    move v4, v5

    :goto_15
    const/4 v6, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_1e

    :cond_1d
    move-object v7, v6

    :goto_1e
    const/4 v8, 0x1

    if-eqz v7, :cond_2d

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_2d

    move v9, v8

    goto :goto_2e

    :cond_2d
    move v9, v5

    :goto_2e
    iget-object v10, v0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v10, :cond_3b

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getTargetPosTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    goto :goto_3c

    :cond_3b
    move-object v10, v6

    :goto_3c
    const/4 v11, -0x1

    if-eqz v10, :cond_48

    iget-object v12, v10, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v12

    goto :goto_49

    :cond_48
    move v12, v11

    :goto_49
    if-eqz v10, :cond_54

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_55

    :cond_54
    move-object v10, v6

    :goto_55
    iget-object v13, v0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v13, :cond_62

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getTargetPosTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    goto :goto_63

    :cond_62
    move-object v13, v6

    :goto_63
    if-eqz v13, :cond_6d

    iget-object v11, v13, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v11, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v11

    :cond_6d
    if-eqz v13, :cond_77

    iget-object v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    :cond_77
    iget-boolean v13, v0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-nez v13, :cond_93

    if-eqz v1, :cond_93

    if-eqz v4, :cond_93

    if-nez v12, :cond_93

    if-nez v11, :cond_93

    if-eqz v9, :cond_93

    if-ne v2, v8, :cond_93

    invoke-direct {v0, v10}, Lcom/oplus/splitscreen/SplitToggleHelper;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_93

    iget v13, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v1

    if-gtz v13, :cond_93

    goto :goto_c5

    :cond_93
    iget-boolean v13, v0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-nez v13, :cond_c9

    if-eqz v4, :cond_c9

    if-gez v1, :cond_c9

    if-eqz v9, :cond_c9

    if-ne v2, v8, :cond_c9

    invoke-direct {v0, v7}, Lcom/oplus/splitscreen/SplitToggleHelper;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_c9

    invoke-direct {v0, v10}, Lcom/oplus/splitscreen/SplitToggleHelper;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_c9

    invoke-direct {v0, v6}, Lcom/oplus/splitscreen/SplitToggleHelper;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_c9

    iget v13, v7, Landroid/graphics/Rect;->left:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    if-ne v13, v14, :cond_c9

    iget v14, v6, Landroid/graphics/Rect;->top:I

    if-ne v13, v14, :cond_c9

    iget v13, v7, Landroid/graphics/Rect;->right:I

    iget v14, v10, Landroid/graphics/Rect;->bottom:I

    if-ne v13, v14, :cond_c9

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    if-ne v13, v14, :cond_c9

    :goto_c5
    move v5, v8

    move/from16 v8, p3

    goto :goto_ca

    :cond_c9
    move v8, v1

    :goto_ca
    const-string v13, "hookImeTargetYOffsetWhenBeyondScreen  beyond="

    const-string v14, ",res="

    const-string v15, ",targetYOffset="

    invoke-static {v13, v5, v14, v8, v15}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",last="

    const-string v15, ",isNormal="

    move/from16 p1, v8

    move/from16 v8, p3

    invoke-static {v13, v1, v14, v8, v15}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ",layout{orient="

    const-string v8, ",isPortal="

    invoke-static {v13, v4, v1, v2, v8}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",rootBounds="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "},task{top="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bottom="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",topRect="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",bottomRect="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "},mHasLargeScreen="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitToggleHelper"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move/from16 v1, p1

    iput v1, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    return-object v3
.end method

.method public hookOffsetForScreenshotIfNeeded(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V
    .registers 9

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v2, 0x0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getDisplayController()Lcom/android/wm/shell/common/DisplayController;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    move-object p0, v2

    :goto_1b
    if-eqz p0, :cond_21

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object v2

    :cond_21
    if-eqz p5, :cond_4b

    iget p0, p5, Landroid/graphics/Rect;->top:I

    if-lez p0, :cond_2c

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    :cond_2c
    iget p0, p5, Landroid/graphics/Rect;->bottom:I

    if-lez p0, :cond_37

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p0, v1, :cond_37

    sub-int/2addr v1, p0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_37
    iget p0, p5, Landroid/graphics/Rect;->left:I

    if-lez p0, :cond_40

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    :cond_40
    iget p0, p5, Landroid/graphics/Rect;->right:I

    if-lez p0, :cond_4b

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge p0, v1, :cond_4b

    sub-int/2addr v1, p0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    :cond_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hookOffsetForScreenshotIfNeeded rootBounds="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "shotRect(new="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",old="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "),YOffset="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "),isLand="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",letterbox="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitToggleHelper"

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hookRemoteHandlerOnTransitionFinished(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)Z
    .registers 14

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hookRemoteHandlerOnTransitionFinished(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mInit:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mInit:Z

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->getInstance()Lcom/oplus/splitscreen/observer/SplitScreenObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/observer/SplitScreenObserver;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;->getInstance()Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/observer/SplitScreenFingersObserver;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/MultiUserObserver;->getInstance()Lcom/oplus/splitscreen/observer/MultiUserObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/observer/MultiUserObserver;->registerObserver(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;->getInstance()Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/observer/SplitScreenEnterpriseObserver;->registerObserver(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->getInstance()Lcom/oplus/splitscreen/SplitScreenGuideManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->init(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/observer/AppSwitchObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->register()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getInstance()Lcom/oplus/splitscreen/SplitScreenAppConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getProcessInfo()V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->splitScreenUserSwitchInfo(Landroid/content/Context;)V

    const-string p0, "SplitToggleHelper"

    const-string p1, "SplitToggleHelper is ready"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isActivityTransitionInSplit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsActivityTransitionInSplit:Z

    return p0
.end method

.method public isDragonflyDevice()Z
    .registers 3

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PGT110"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "CPH2437"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsFlipDevice:Z

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public isExitFromSafeCenter()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitFromSafeCenter:Z

    return p0
.end method

.method public isFlipDevice()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsFlipDevice:Z

    return p0
.end method

.method public isFoldDevice()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsFoldDevice:Z

    return p0
.end method

.method public isInNormalSplitScreenMode()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInNormalSplitScreenMode()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isLandScape()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isOpenAppReLaunch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsRelaunchRequest:Z

    return p0
.end method

.method public isOpeningFullApp()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsOpeningFullApp:Z

    return p0
.end method

.method public isSnappingToDismiss()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsSnappingToDismiss:Z

    return p0
.end method

.method public isSplitDecorManagerIdle()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->isSplitDecorManagerIdle(Z)Z

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v2, 0x0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->isSplitDecorManagerIdle(Z)Z

    move-result p0

    goto :goto_1e

    :cond_1d
    move p0, v1

    :goto_1e
    if-eqz v0, :cond_23

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSplitDecorManagerIdle  main="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",side="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplitToggleHelper"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isSplitScreenAvailable(ZLandroid/app/ActivityManager$RunningTaskInfo;I)Z
    .registers 9

    const-string v0, "SplitToggleHelper"

    const/4 v1, 0x0

    if-nez p2, :cond_b

    const-string p0, "runningTaskInfo is null, cannot enter split screen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasForbidScreenScreenFeature()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string p0, "split screen is disabled for enterprise order"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isEnterpriseDisableSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string p0, "split screen is disabled by enterprise development platform"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isSuperPowerSaveDisableSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string p0, "split screen is disabled by super power save"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2f
    iget-object v2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isUserSetup(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_38

    return v1

    :cond_38
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isToggleFromServiceWhenSwitchOff()Z

    move-result v2

    if-eqz v2, :cond_44

    const-string p0, "isToggleFromServiceWhenSwitchOff Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_44
    iget v2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    invoke-direct {p0, v2, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->gestureSplitDisabled(II)Z

    move-result v2

    if-eqz v2, :cond_4d

    return v1

    :cond_4d
    invoke-static {}, Lcom/oplus/zoom/OplusZoomFeature;->getInstance()Lcom/oplus/zoom/OplusZoomFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/OplusZoomFeature;->hasShellZoomFeature()Z

    move-result v2

    if-nez v2, :cond_76

    iget-boolean v2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-nez v2, :cond_76

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v2

    if-eqz v2, :cond_76

    iget-boolean v2, v2, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z

    if-eqz v2, :cond_76

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$string;->oplus_split_screen_freeform_failed_to_dock_text:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    const-string p0, "Freeform mode Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_76
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_95

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.safecenter/.privacy.view.password.AppUnlockPasswordActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$string;->recents_incompatible_app_message:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    :cond_8f
    const-string p0, "Privacy Password Activity Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_95
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const/4 v3, 0x1

    if-eqz v2, :cond_b8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.market.heydemo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    if-ne p3, v3, :cond_b8

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isWhiteSwanDevice()Z

    move-result v2

    if-eqz v2, :cond_b8

    const-string p0, "com.market.heydemo Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b8
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/16 v4, 0x73

    if-ne v2, v4, :cond_c6

    const-string p0, "bracket mode return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c6
    new-instance v2, Lcom/oplus/splitscreen/OplusRunningTaskInfo;

    invoke-direct {v2, p2}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v2}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;->getIsSupportSplitScreenMultiWindow()Z

    move-result v2

    if-nez v2, :cond_116

    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    if-eqz p1, :cond_110

    const/4 p1, 0x2

    if-ne v2, p1, :cond_100

    iget p2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    if-ne p2, v3, :cond_f6

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-eqz p1, :cond_ee

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$string;->oplus_open_splitscreen_launcher_message_largescreen:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    goto :goto_107

    :cond_ee
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$string;->oplus_open_splitscreen_launcher_message:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    goto :goto_107

    :cond_f6
    if-ne p2, p1, :cond_107

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$string;->oplus_open_splitscreen_menu_message:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    goto :goto_107

    :cond_100
    const/4 p1, 0x3

    if-ne v2, p1, :cond_104

    goto :goto_107

    :cond_104
    invoke-direct {p0, p2, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->showDismissingDockedStackToast(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    :cond_107
    :goto_107
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getCurrentTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenUndockInfo(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_110
    const-string p0, "runningtask is unDockable Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_116
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getInstance()Lcom/oplus/splitscreen/SplitScreenAppConfig;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->inForbidActivityList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_135

    if-eqz p1, :cond_12f

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$string;->oplus_split_incompatible_activity_message:I

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    :cond_12f
    const-string p0, "isForceFullScreenActivity Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_135
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isChildrenMode()Z

    move-result v2

    if-nez v2, :cond_1fa

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isStudyCenterMode()Z

    move-result v2

    if-eqz v2, :cond_143

    goto/16 :goto_1fa

    :cond_143
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isSnapshotEditing()Z

    move-result v2

    if-eqz v2, :cond_14f

    const-string p0, "isSnapshotEditing Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_14f
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isDragState()Z

    move-result v2

    if-eqz v2, :cond_16b

    iget-object p2, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wm/shell/R$style;->Theme_COUI_Green:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->setTheme(I)V

    if-eqz p1, :cond_165

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$string;->oplus_dock_from_smallscreenmode_message:I

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->showToast(Landroid/content/Context;III)V

    :cond_165
    const-string p0, "isDragState Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16b
    invoke-static {}, Lcom/oplus/miragewindow/OplusMirageWindowManager;->getInstance()Lcom/oplus/miragewindow/OplusMirageWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/miragewindow/OplusMirageWindowManager;->isMirageWindowShow()Z

    move-result p1

    if-eqz p1, :cond_17b

    const-string p0, "isMirageWindowShow Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17b
    iget p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mOpeningTaskId:I

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p3, :cond_18b

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsOpeningFullApp:Z

    if-eqz p1, :cond_18b

    const-string p0, "it\'s opening full app, toggle later."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18b
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_1b5

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isTargetStartingWindowOnTop()Z

    move-result p1

    if-eqz p1, :cond_1b5

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getTargetStartingWindowTaskId()I

    move-result p1

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p2, :cond_1b5

    const-string p0, "it\'s showing target startingWindow, toggle later."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1b5
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_1f9

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p1

    if-eqz p1, :cond_1f9

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    if-eqz p1, :cond_1f9

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitTransitionExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object p0

    if-eqz p0, :cond_1f9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->getPendingDismiss()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    move-result-object p1

    if-eqz p1, :cond_1f9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->getDismissTransitionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    move-result-object p0

    if-eqz p0, :cond_1f3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->isDirtySession()Z

    move-result p0

    if-eqz p0, :cond_1f3

    const-string p0, "it\'s dirty dismissTransition, toggle split screen."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1f3
    const-string p0, "it\'s doing dismissTransition, toggle later."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1f9
    return v3

    :cond_1fa
    :goto_1fa
    const-string p0, "Child/Study mode Return"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSplitScreenGestureSnapshotRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsSplitScreenGestureSnapshotRunning:Z

    return p0
.end method

.method public isTabletDevice()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsTabletDevice:Z

    return p0
.end method

.method public isWhiteSwanDevice()Z
    .registers 2

    const-string p0, "ro.product.model"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PGU110"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "CPH2439"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public isZoomTransferToSplitAnimating()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mZoomTransferToSplitAnimating:Z

    return p0
.end method

.method public needGoLegacy()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedGoLegacy:Z

    return p0
.end method

.method public needInterceptStartForSplitScreen(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    if-eqz p3, :cond_18

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/oplus/splitscreen/e;

    invoke-direct {p3, p0, p2}, Lcom/oplus/splitscreen/e;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_18
    sget-boolean p3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const-string v2, "SplitToggleHelper"

    if-eqz p3, :cond_6f

    if-nez v0, :cond_6f

    if-eqz p2, :cond_6f

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMinimized()Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getPkgInMinimized()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getPkgInMinimized()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "needInterceptStartForSplitScreen targetPkg = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "calledPkg = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6f
    if-eqz p3, :cond_83

    iget-object p3, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasMinimizedTransitionFinished()Z

    move-result p3

    if-nez p3, :cond_83

    const-string p0, "interceptStartForSplitScreen cause minimized wct is running."

    invoke-static {v2, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_83
    if-eqz v0, :cond_90

    if-eqz p2, :cond_90

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_90

    return v1

    :cond_90
    const/4 p0, 0x0

    return p0
.end method

.method public needNotGoLegacyForEnterFromRecent()Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedGoLegacy:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    iget p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedNotGoLegacyReason:I

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public needRestSplitImeBound(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .registers 14

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/4 v1, -0x1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getImeTargetPosition()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getYOffsetForIme()I

    move-result v0

    goto :goto_20

    :cond_1f
    move v0, v3

    :goto_20
    iget-object v4, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v5, 0x1

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLandscape()Z

    move-result v4

    if-nez v4, :cond_2d

    move v4, v5

    goto :goto_2e

    :cond_2d
    move v4, v3

    :goto_2e
    iget-object v6, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v6, :cond_37

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v6

    goto :goto_38

    :cond_37
    move v6, v3

    :goto_38
    if-eq v2, v1, :cond_53

    if-gez v0, :cond_53

    if-eqz v4, :cond_53

    if-eqz v6, :cond_53

    if-nez p5, :cond_53

    if-nez p1, :cond_53

    if-eqz p2, :cond_53

    invoke-direct {p0, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-direct {p0, p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_53

    move v3, v5

    :cond_53
    if-eq v2, v1, :cond_6e

    if-gez v0, :cond_6e

    if-eqz v4, :cond_6e

    if-eqz v6, :cond_6e

    if-nez p1, :cond_6e

    if-eqz p2, :cond_6e

    invoke-direct {p0, p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-direct {p0, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->isRectValid(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_6e

    if-eqz p5, :cond_6e

    goto :goto_6f

    :cond_6e
    move v5, v3

    :goto_6f
    const-string p0, "needRestSplitImeBound res="

    const-string v1, ",isPort="

    const-string v3, ",imePos="

    invoke-static {p0, v5, v1, v4, v3}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ",yOffsetForIme="

    const-string v3, ",isNormal"

    invoke-static {p0, v2, v1, v0, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ",visible(new="

    const-string v1, ",old="

    invoke-static {p0, v6, v0, p1, v1}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "),newFrame="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",oldFrame="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",isFloating="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitToggleHelper"

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public onDividerStartDrag()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->onDividerStartDrag()V

    :cond_b
    return-void
.end method

.method public onSplitScreenModeChanged(Z)V
    .registers 2

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->prepareEnterNormal(Z)Z

    :cond_16
    return-void
.end method

.method public peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-object p0
.end method

.method public resetEnterMinimizedType()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterMinimizedType(I)I

    return-void
.end method

.method public resetEnterNormalType()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    return-void
.end method

.method public resetExitSplitType()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitSplitType(I)I

    return-void
.end method

.method public resetIsActivityTransitionInSplit()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mResetIsActivityTransitionInSplit:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsActivityTransitionInSplit:Z

    const-string p0, "SplitToggleHelper"

    const-string v0, "resetIsActivityTransitionInSplit -> false"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetIsSnappingToDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mResetIsSnappingToDismiss:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsSnappingToDismiss:Z

    const-string p0, "SplitToggleHelper"

    const-string v0, "resetIsSnappingToDismiss -> false"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetNeedGoLegacy()V
    .registers 3

    iget v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mNeedNotGoLegacyReason:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->setNeedGoLegacy(ZI)V

    return-void
.end method

.method public resetOpeningFullApp()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsOpeningFullApp:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mOpeningTaskId:I

    return-void
.end method

.method public resetSplitScreenGestureSnapshotRunning()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsSplitScreenGestureSnapshotRunning:Z

    return-void
.end method

.method public resetStartType()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    return-void
.end method

.method public setAppReLaunchRequest(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsRelaunchRequest:Z

    return-void
.end method

.method public setEnterMinimizedType(I)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnterMinimizedType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitToggleHelper"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_22

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->setStartFromSafeControl(Z)V

    :cond_22
    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mEnterMinimizedType:I

    return p1
.end method

.method public setEnterNormalType(I)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnterNormalType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitToggleHelper"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_22

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->setStartFromSafeControl(Z)V

    :cond_22
    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mEnterNormalType:I

    return p1
.end method

.method public setExitFromSafeCenter(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitFromSafeCenter:Z

    return-void
.end method

.method public setExitSplitType(I)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExitSplitType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitToggleHelper"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitSplitType:I

    return p1
.end method

.method public setExitType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mExitType:I

    return-void
.end method

.method public setIsActivityTransitionInSplit()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mResetIsActivityTransitionInSplit:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsActivityTransitionInSplit:Z

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mResetIsActivityTransitionInSplit:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    const-string p0, "SplitToggleHelper"

    const-string v0, "setIsActivityTransitionInSplit -> true"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsOpeningFullApp(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsOpeningFullApp:Z

    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mOpeningTaskId:I

    return-void
.end method

.method public setIsSnappingToDismiss()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsSnappingToDismiss:Z

    const-string v0, "SplitToggleHelper"

    const-string v1, "setIsSnappingToDismiss -> true"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mResetIsSnappingToDismiss:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setIsSplitScreenGestureSnapshotRunning()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mIsSplitScreenGestureSnapshotRunning:Z

    return-void
.end method

.method public setNeedGoLegacy(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setNeedGoLegacy(ZI)V

    return-void
.end method

.method public setPendingEnterSplitTaskId(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mPendingEnterSplitTaskId:I

    return-void
.end method

.method public setPendingEnterSplitTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mPendingEnterSplitTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public setStartType(I)V
    .registers 4

    const-string v0, "setStartType type:"

    const-string v1, " ("

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitToggleHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    return-void
.end method

.method public setStashPositionInMinimized(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStashPositionInMinimized:I

    return-void
.end method

.method public setZoomTransferToSplitAnimating(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomTransferToSplitAnimating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitToggleHelper"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mZoomTransferToSplitAnimating:Z

    return-void
.end method

.method public showAdjustToMaxWidthWarn(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Lcom/android/internal/policy/DividerSnapAlgorithm;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    move-result-object v0

    const-string v1, "adjust_to_max_width"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v0, v1, :cond_24

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p2

    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne p1, p2, :cond_2f

    :cond_24
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/oplus/splitscreen/k;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/oplus/splitscreen/k;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2f
    return-void
.end method

.method public showAppHasOpenedWarn(Ljava/lang/CharSequence;I)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oplus/splitscreen/m;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/CharSequence;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showAppNotSupportWarn(Ljava/lang/String;I)V
    .registers 7

    const-string v0, "SplitToggleHelper"

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception p1

    const-string v1, "getApplicationInfo error:"

    invoke-static {v1, p1, v0}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNotSupportWarn for:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showNotSupportSplitWarn(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public showApplicationInZoomMode()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/j;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/oplus/splitscreen/j;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showEnterMinimizedToast()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/oplus/splitscreen/i;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showNotSupportSplitWarn(Ljava/lang/CharSequence;)V
    .registers 3

    iget v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mStartType:I

    invoke-virtual {p0, p1, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->showNotSupportSplitWarn(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public showNotSupportSplitWarn(Ljava/lang/CharSequence;I)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oplus/splitscreen/m;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/CharSequence;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showSplitToast(ILandroid/os/Bundle;)V
    .registers 3

    packed-switch p1, :pswitch_data_26

    goto :goto_24

    :pswitch_4  #0x6
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->showFlexibleTwoFingerDisabledPortraitToast()V

    goto :goto_24

    :pswitch_8  #0x5
    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->showTwoSplitTwoFingerEnterMode()V

    goto :goto_24

    :pswitch_c  #0x4
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->showTwoFingerEnterSplitToast()V

    goto :goto_24

    :pswitch_10  #0x3
    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->showCannotOpenShortcutOnFoldedDisplay()V

    goto :goto_24

    :pswitch_14  #0x2
    if-eqz p2, :cond_24

    const-string p1, "lable_name"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showAppHasOpenedWarn(Ljava/lang/CharSequence;I)V

    goto :goto_24

    :pswitch_21  #0x1
    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->showApplicationInZoomMode()V

    :cond_24
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21  #00000001
        :pswitch_14  #00000002
        :pswitch_10  #00000003
        :pswitch_c  #00000004
        :pswitch_8  #00000005
        :pswitch_4  #00000006
    .end packed-switch
.end method

.method public showTwoSplitTwoFingerEnterMode()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleSplitScreenMode(I)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const-string v1, "SplitToggleHelper"

    if-nez v0, :cond_c

    const-string p0, "toggleSplitScreenMode error, SplitToggleHelper is not ready"

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mHasLargeScreenFeature:Z

    if-eqz v0, :cond_4d

    const/high16 v2, -0x10000000

    and-int/2addr v2, p1

    const/high16 v3, 0x10000000

    const/4 v4, 0x1

    if-ne v2, v3, :cond_27

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/oplus/splitscreen/j;

    invoke-direct {v0, p0, v4}, Lcom/oplus/splitscreen/j;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_27
    const/high16 v3, 0x20000000

    if-ne v2, v3, :cond_3a

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/oplus/splitscreen/g;

    invoke-direct {v0, p0, v4}, Lcom/oplus/splitscreen/g;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3a
    const/high16 v3, 0x40000000  # 2.0f

    if-ne v2, v3, :cond_4d

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/oplus/splitscreen/h;

    invoke-direct {v0, p0, v4}, Lcom/oplus/splitscreen/h;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_58

    if-eqz v0, :cond_58

    const-string p0, "toggleSplitScreenMode from menu, ignore"

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_58
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/splitscreen/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/splitscreen/l;-><init>(Lcom/oplus/splitscreen/SplitToggleHelper;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateMinimizedVisibleSize()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitToggleHelper;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->updateMinimizedVisibleSize()V

    :cond_b
    return-void
.end method
