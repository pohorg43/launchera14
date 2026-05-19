.class public Lcom/android/wm/shell/onehanded/OneHandedController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/sysui/UserChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;,
        Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl;,
        Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/onehanded/OneHandedController;",
        ">;",
        "Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;",
        "Lcom/android/wm/shell/sysui/ConfigurationChangeListener;",
        "Lcom/android/wm/shell/sysui/KeyguardChangeListener;",
        "Lcom/android/wm/shell/sysui/UserChangeListener;"
    }
.end annotation


# static fields
.field private static final DISPLAY_AREA_READY_RETRY_MS:I = 0xa

.field private static final EVENT_SPLIT_SCREEN_MINIMIZED_CHANGED:Ljava/lang/String; = "splitScreenModeChange"

.field private static final IS_FOLD_DEVICE:Z

.field private static final KEY_IS_IN_SPLIT_SCREEN_MODE:Ljava/lang/String; = "isInSplitScreenMode"

.field private static final ONE_HANDED_MODE_OFFSET_PERCENTAGE:Ljava/lang/String; = "persist.debug.one_handed_offset_percentage"

.field public static final SUPPORT_ONE_HANDED_MODE:Ljava/lang/String; = "ro.support_one_handed_mode"

.field private static final SYSTEM_FOLDING_MODE_CLOSE:I = 0x0

.field private static final SYSTEM_FOLDING_MODE_KEYS:Ljava/lang/String; = "oplus_system_folding_mode"

.field private static final TAG:Ljava/lang/String; = "OneHandedController"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final mActivatedObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field private final mEnabledObserver:Landroid/database/ContentObserver;

.field private mEventCallback:Lcom/android/wm/shell/onehanded/OneHandedEventCallback;

.field private final mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

.field private mIsOneHandedEnabled:Z

.field private mIsShortcutEnabled:Z

.field private mIsSwipeToNotificationEnabled:Z

.field private mKeyguardShowing:Z

.field private mLockedDisabled:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOffSetFraction:F

.field private final mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

.field private final mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

.field private mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

.field private mRetryCount:I

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mShortcutEnabledObserver:Landroid/database/ContentObserver;

.field private final mState:Lcom/android/wm/shell/onehanded/OneHandedState;

.field private final mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

.field private mTaskChangeToExit:Z

.field private final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field private final mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

.field private final mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

.field private final mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

.field private final mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

.field private final mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

.field private mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string/jumbo v1, "oplus.hardware.type.fold"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/onehanded/OneHandedController;->IS_FOLD_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedState;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .registers 27
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedController$1;)V

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mRetryCount:I

    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedController$1;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v5, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedController$2;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v5, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedController$3;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedController$4;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$4;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    move-object v6, p1

    iput-object v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    move-object v7, p3

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v7, p4

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iput-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/wm/shell/R$fraction;->config_one_handed_offset:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    const/high16 v8, 0x42c80000  # 100.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const-string/jumbo v8, "persist.debug.one_handed_offset_percentage"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    iput v7, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {p5, v5}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget v5, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->setUserId(I)V

    iget-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->setMainExecutor(Lcom/android/wm/shell/common/ShellExecutor;)V

    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    new-instance v1, Lcom/android/wm/shell/onehanded/j;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/j;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mActivatedObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/wm/shell/common/c;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShortcutEnabledObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/wm/shell/onehanded/c;

    invoke-direct {v1, p0, v4}, Lcom/android/wm/shell/onehanded/c;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    move-object v2, p2

    invoke-virtual {p2, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$notifyExpandNotification$1()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/onehanded/OneHandedController;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->isInZoomMode(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/onehanded/OneHandedController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/onehanded/OneHandedController;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/onehanded/OneHandedController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    return p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/wm/shell/onehanded/OneHandedController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$setupTimeoutListener$2(I)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Landroid/view/WindowManager;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/onehanded/OneHandedController;
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v8, p4

    move-object/from16 v7, p10

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v22, p7

    move-object/from16 v23, p10

    move-object/from16 v24, p11

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    move-object/from16 v17, v3

    invoke-direct {v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;-><init>()V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    move-object/from16 v18, v0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    move-object/from16 v19, v0

    invoke-direct {v0, v7}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedState;

    move-object/from16 v20, v2

    invoke-direct {v2}, Lcom/android/wm/shell/onehanded/OneHandedState;-><init>()V

    new-instance v2, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    move-object/from16 v16, v5

    invoke-direct {v5, v1, v3, v8, v2}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Landroid/view/WindowManager;Lcom/android/wm/shell/onehanded/BackgroundWindowManager;)V

    new-instance v4, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    invoke-direct {v4, v1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    move-object v15, v2

    invoke-direct {v2, v0, v7}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    move-object v14, v0

    move-object/from16 v2, p6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAnimationController;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    move-object/from16 v21, v0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController;

    move-object v1, v8

    move-object v8, v0

    invoke-direct/range {v8 .. v24}, Lcom/android/wm/shell/onehanded/OneHandedController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedState;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    invoke-static {}, Lcom/oplus/onehanded/OneHandedHelper;->getInstance()Lcom/oplus/onehanded/OneHandedHelper;

    move-result-object v2

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/oplus/onehanded/OneHandedHelper;->init(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/view/WindowManager;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerStateCallback()V

    return-object v0
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$setupCallback$0()V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onInit()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->lambda$updateOneHandedEnabled$3()V

    return-void
.end method

.method private getObserver(Ljava/lang/Runnable;)Landroid/database/ContentObserver;
    .registers 4

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$6;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$6;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private isInZoomMode(I)Z
    .registers 6

    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object p0

    const-string v0, "OneHandedController"

    const/4 v1, 0x0

    if-nez p0, :cond_f

    const-string p0, "atms init fail"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {p0}, Landroid/app/OplusActivityTaskManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_19
    if-nez v2, :cond_22

    const-string/jumbo p0, "topAppInfos is null!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_22
    move p0, v1

    :goto_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_44

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/app/OplusAppInfo;

    iget v0, v0, Lcom/oplus/app/OplusAppInfo;->taskId:I

    if-ne v0, p1, :cond_41

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/app/OplusAppInfo;

    iget v0, v0, Lcom/oplus/app/OplusAppInfo;->windowingMode:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_41

    const/4 p0, 0x1

    return p0

    :cond_41
    add-int/lit8 p0, p0, 0x1

    goto :goto_23

    :cond_44
    return v1
.end method

.method private isInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const-string p0, "OneHandedController"

    const-string v0, "Components may not initialized yet!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$notifyExpandNotification$1()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEventCallback:Lcom/android/wm/shell/onehanded/OneHandedEventCallback;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHandedEventCallback;->notifyExpandNotification()V

    return-void
.end method

.method private synthetic lambda$setupCallback$0()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method private synthetic lambda$setupTimeoutListener$2(I)V
    .registers 2

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method private synthetic lambda$updateOneHandedEnabled$3()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void
.end method

.method private onInit()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/launcher/badge/l;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/l;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupCallback()V

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerSettingObservers(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setupTimeoutListener()V

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateSettings()V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateDisplayLayout(I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedState;->addSListeners(Lcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addUserChangeListener(Lcom/android/wm/shell/sysui/UserChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/launcher3/q1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/q1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    const-string v2, "extra_shell_one_handed"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$SplitScreenStateObserver;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedController$1;)V

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    return-void
.end method

.method private registerSettingObservers(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mActivatedObserver:Landroid/database/ContentObserver;

    const-string/jumbo v3, "one_handed_mode_activated"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Landroid/database/ContentObserver;

    const-string/jumbo v3, "one_handed_mode_enabled"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

    const-string/jumbo v3, "swipe_bottom_to_notification_enabled"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShortcutEnabledObserver:Landroid/database/ContentObserver;

    const-string v3, "accessibility_button_targets"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShortcutEnabledObserver:Landroid/database/ContentObserver;

    const-string v2, "accessibility_shortcut_target_service"

    invoke-virtual {v0, v2, v1, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)Landroid/net/Uri;

    return-void
.end method

.method private setupCallback()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->registerTouchEventListener(Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$OneHandedTouchEventCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeToExit:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    :cond_2a
    return-void
.end method

.method private setupTimeoutListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    new-instance v1, Lcom/android/wm/shell/onehanded/b;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/b;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->registerTimeoutListener(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$TimeoutListener;)V

    return-void
.end method

.method private stopOneHanded(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_30

    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedState;->setState(I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->getOneHandedStopDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->announcementForScreenReader(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(II)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->removeTimer()V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_30
    :goto_30
    return-void
.end method

.method private unregisterSettingObservers()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShortcutEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->unregisterSettingsKeyObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateOneHandedEnabled()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/onehanded/e;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/onehanded/e;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    invoke-interface {v0, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    const-string v0, "mIsOneHandedEnabled = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandedController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isOneHandedEnabled()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isSwipeToNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->notifyShortcutStateChanged(I)V

    :cond_45
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    iget-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->onOneHandedEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    if-nez v0, :cond_56

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->unregisterOrganizer()V

    return-void

    :cond_56
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayAreaTokenMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    :cond_68
    return-void
.end method

.method private updateSettings()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setOneHandedEnabled(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->setTimeout(I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsTapsAppToExit(Landroid/content/ContentResolver;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setTaskChangeToExit(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setSwipeToNotificationEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onShortcutEnabledChanged()V

    return-void
.end method


# virtual methods
.method public asOneHanded()Lcom/android/wm/shell/onehanded/OneHanded;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "OneHandedController"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mOffSetFraction="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(F)V

    const-string p2, "  mLockedDisabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mUserId="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  isShortcutEnabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isShortcutEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mIsSwipeToNotificationEnabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz p2, :cond_43

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->dump(Ljava/io/PrintWriter;)V

    :cond_43
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    if-eqz p2, :cond_4a

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->dump(Ljava/io/PrintWriter;)V

    :cond_4a
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    if-eqz p2, :cond_51

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->dump(Ljava/io/PrintWriter;)V

    :cond_51
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    if-eqz p2, :cond_58

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedState;->dump(Ljava/io/PrintWriter;)V

    :cond_58
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    if-eqz p2, :cond_5f

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->dump(Ljava/io/PrintWriter;)V

    :cond_5f
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    if-eqz p2, :cond_66

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->dump(Ljava/io/PrintWriter;)V

    :cond_66
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    const-string v1, "  "

    invoke-virtual {p2, p1, v1, v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public isLockedDisabled()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    return p0
.end method

.method public isOneHandedEnabled()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    return p0
.end method

.method public isShortcutEnabled()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsShortcutEnabled:Z

    return p0
.end method

.method public isSwipeToNotificationEnabled()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public notifyExpandNotification()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEventCallback:Lcom/android/wm/shell/onehanded/OneHandedEventCallback;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/onehanded/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/onehanded/c;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method public notifyShortcutStateChanged(I)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->setOneHandedModeActivated(Landroid/content/ContentResolver;II)Z

    return-void
.end method

.method public onActivatedActionChanged()V
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isShortcutEnabled()Z

    move-result v0

    const-string v1, "OneHandedController"

    if-nez v0, :cond_e

    const-string p0, "Shortcut not enabled, skip onActivatedActionChanged()"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isOneHandedEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->setOneHandedModeEnabled(Landroid/content/ContentResolver;II)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto enabled One-handed mode by shortcut trigger, success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isSwipeToNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->notifyExpandNotification()V

    return-void

    :cond_41
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getOneHandedModeActivated(Landroid/content/ContentResolver;I)Z

    move-result v0

    xor-int/2addr v2, v0

    if-eqz v2, :cond_72

    if-eqz v0, :cond_69

    const-string/jumbo v0, "onActivatedActionChanged startOneHanded"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    goto :goto_72

    :cond_69
    const-string/jumbo v0, "onActivatedActionChanged stopOneHanded"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    :cond_72
    :goto_72
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    const-string v0, "OneHandedController"

    const-string/jumbo v2, "remove one Hand Layer when orientation changed!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->removeBackgroundSurface()V

    :cond_17
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    if-eqz v0, :cond_25

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_20

    goto :goto_25

    :cond_20
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->onConfigurationChanged()V

    :cond_25
    :goto_25
    return-void
.end method

.method public onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget p4, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {p1, p2, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget p4, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {p1, p2, p4}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_43

    :cond_28
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result p1

    const/4 p2, 0x2

    const/4 p4, 0x4

    if-ne p1, p2, :cond_37

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p1, p4}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_37
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p3, p5}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->onRotateDisplay(Landroid/content/Context;ILandroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_43
    :goto_43
    return-void
.end method

.method public onEnabledSettingChanged()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    if-eqz v0, :cond_15

    const/16 v2, 0x8

    goto :goto_17

    :cond_15
    const/16 v2, 0x9

    :goto_17
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnabledSettingChanged mUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneHandedController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setOneHandedEnabled(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mKeyguardShowing:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void
.end method

.method public onShortcutEnabledChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getShortcutEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsShortcutEnabled:Z

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    if-eqz v0, :cond_17

    const/16 v0, 0x14

    goto :goto_19

    :cond_17
    const/16 v0, 0x15

    :goto_19
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    return-void
.end method

.method public onSwipeToNotificationEnabledChanged()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->setSwipeToNotificationEnabled(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v1}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->notifyShortcutStateChanged(I)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    if-eqz v0, :cond_21

    const/16 v0, 0x12

    goto :goto_23

    :cond_21
    const/16 v0, 0x13

    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    return-void
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .registers 5
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->unregisterSettingObservers()V

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    const-string/jumbo p2, "onUserChanged mUserId = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    const-string v1, "OneHandedController"

    invoke-static {p2, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->setUserId(I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerSettingObservers(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateSettings()V

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method public registerEventCallback(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEventCallback:Lcom/android/wm/shell/onehanded/OneHandedEventCallback;

    return-void
.end method

.method public registerStateCallback()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "OneHandedController"

    const-string/jumbo v1, "registerStateCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    const-string v1, "device_state"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    return-void
.end method

.method public setLockedDisabled(ZZ)V
    .registers 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    :goto_e
    const-string/jumbo v3, "setLockedDisabled locked = "

    const-string v4, ", enabled = "

    const-string v5, " ,FeatureEnabled = "

    invoke-static {v3, p1, v4, p2, v5}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OneHandedController"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v0, :cond_28

    return-void

    :cond_28
    if-eqz p1, :cond_2d

    if-nez p2, :cond_2d

    move v1, v2

    :cond_2d
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    return-void
.end method

.method public setOneHandedEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method public setSwipeToNotificationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    return-void
.end method

.method public setTaskChangeToExit(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    goto :goto_11

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->removeListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    :goto_11
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeToExit:Z

    return-void
.end method

.method public startOneHanded()V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isLockedDisabled()Z

    move-result v0

    const-string v1, "OneHandedController"

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mKeyguardShowing:Z

    if-eqz v0, :cond_e

    goto/16 :goto_b2

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->isReady()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_39

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mRetryCount:I

    const/4 v4, 0x3

    if-le v0, v4, :cond_1e

    return-void

    :cond_1e
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mRetryCount:I

    const-string v0, "DisplayAreaOrganizer is not ready execute delay for 10 mRetryCount = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mRetryCount:I

    invoke-static {v0, v2, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/onehanded/e;

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/onehanded/e;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    const-wide/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_39
    iput v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mRetryCount:I

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->isInOneHanded()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_b1

    :cond_4c
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string p0, "One handed mode only support portrait mode"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5e
    sget-boolean v0, Lcom/android/wm/shell/onehanded/OneHandedController;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_82

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFlipDevice()Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, -0x1

    const-string/jumbo v5, "oplus_system_folding_mode"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_82

    const-string p0, "One handed mode is disabled on fold device if it is unfold"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_82
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/onehanded/OneHandedState;->setState(I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    invoke-virtual {v1}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->getOneHandedStartDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->announcementForScreenReader(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v1, v3, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(II)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->resetTimer()V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_b1
    :goto_b1
    return-void

    :cond_b2
    :goto_b2
    const-string p0, "Temporary lock disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopOneHanded()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method public unregisterStateCallback()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "OneHandedController"

    const-string/jumbo v1, "unregisterStateCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    const-string v1, "device_state"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public updateDisplayLayout(I)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    if-nez p1, :cond_10

    const-string p0, "OneHandedController"

    const-string p1, "Failed to get new DisplayLayout."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method
