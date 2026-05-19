.class public Lcom/android/launcher3/Launcher;
.super Lcom/android/launcher3/statemanager/StatefulActivity;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherExterns;
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Launcher$NonConfigInstance;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/systemui/plugins/shared/LauncherExterns;",
        "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
        "Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/LauncherOverlayPlugin;",
        ">;",
        "Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ActivityTracker<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final BACK_TO_HOME_SCENE:Ljava/lang/String; = "is_back_to_home_scene"

.field public static final BOUNCE_ANIMATION_TENSION:F = 1.3f

.field public static final CONTROL_CENTER_DRAGLAYER_ANIMATION_SCALE:F = 0.95f

.field public static final DEBUG_STRICT_MODE:Z = false

.field public static final DISPLAY_ALL_APPS_TRACE_COOKIE:I = 0x1

.field private static final DISPLAY_ALL_APPS_TRACE_METHOD_NAME:Ljava/lang/String; = "DisplayAllApps"

.field public static final DISPLAY_WORKSPACE_TRACE_COOKIE:I = 0x0

.field private static final DISPLAY_WORKSPACE_TRACE_METHOD_NAME:Ljava/lang/String; = "DisplayWorkspaceFirstFrame"

.field private static final IS_ADD_ITEM_ACTIVITY:Ljava/lang/String; = "is_add_item_activity"

.field public static final LOGD:Z = false

.field public static final LOG_BIND_ITEMS:Ljava/lang/String; = "bindItems"

.field public static final NEW_APPS_ANIMATION_DELAY:I = 0x1f4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x5

.field public static final NEW_APPS_PAGE_MOVE_DELAY:I = 0x1f4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final ON_ACTIVITY_RESULT_ANIMATION_DELAY:I = 0x1f4

.field public static final ON_CREATE_EVT:Ljava/lang/String; = "Launcher.onCreate"

.field public static final ON_NEW_INTENT_EVT:Ljava/lang/String; = "Launcher.onNewIntent"

.field public static final ON_RESUME_EVT:Ljava/lang/String; = "Launcher.onResume"

.field public static final ON_START_EVT:Ljava/lang/String; = "Launcher.onStart"

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field public static final REQUEST_BIND_PENDING_APPWIDGET:I = 0xc

.field public static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field public static final REQUEST_LAST:I = 0x64

.field private static final REQUEST_PERMISSION_CALL_PHONE:I = 0xe

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field public static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xd

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN_IDS:Ljava/lang/String; = "launcher.current_screen_ids"

.field private static final RUNTIME_STATE_PENDING_ACTIVITY_RESULT:Ljava/lang/String; = "launcher.activity_result"

.field private static final RUNTIME_STATE_PENDING_REQUEST_ARGS:Ljava/lang/String; = "launcher.request_args"

.field private static final RUNTIME_STATE_PENDING_REQUEST_CODE:Ljava/lang/String; = "launcher.request_code"

.field private static final RUNTIME_STATE_WIDGET_PANEL:Ljava/lang/String; = "launcher.widget_panel"

.field public static final TAG:Ljava/lang/String; = "Launcher"

.field private static final THEME_CROSS_FADE_ANIMATION_DURATION:I = 0x177


# instance fields
.field private final iconSurfaceManagerProxy:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

.field public isHomeKeyPress:Z

.field private isIconPaperZooming:Z

.field private mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field public mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

.field public mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

.field public mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

.field public mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field public mCardHost:Lcom/android/launcher3/card/LauncherCardHost;

.field public mCardManager:Lcom/oplus/card/manager/domain/CardManager;

.field private mDeferOverlayCallbacks:Z

.field private final mDeferredOverlayCallbacks:Ljava/lang/Runnable;

.field private mDismissState:I

.field private mDockviewPanel:Lcom/oplus/quickstep/dock/DockView;

.field public mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

.field public mDragLayer:Lcom/android/launcher3/OplusDragLayer;

.field public mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field private mEndGestureCallback:Ljava/lang/Runnable;

.field private final mExt:Lcom/android/launcher3/ILauncherExt;

.field public mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

.field public mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field public mHotseat:Lcom/android/launcher3/OplusHotseat;

.field public mIconCache:Lcom/android/launcher3/icons/IconCache;

.field public mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

.field private mIsShowingFamilySpaceUninstall:Z

.field public mLastTouchUpTime:J

.field private mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

.field public mModel:Lcom/android/launcher3/OplusLauncherModel;

.field public mModelWriter:Lcom/android/launcher3/model/OplusModelWriter;

.field public mOldConfig:Landroid/content/res/Configuration;

.field private mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

.field private mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field public mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

.field public mOverlayScrollProgress:F

.field public mOverviewPanel:Landroid/view/View;

.field public mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public mPendingActivityRequestCode:I

.field private mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

.field private mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

.field public mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mPrevLauncherState:Lcom/android/launcher3/LauncherState;

.field public mReCreated:Z

.field public mRecentFinishDeferredCallback:Ljava/lang/Runnable;

.field private mRecentsAnimFinishRequest:Z

.field private mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

.field private final mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

.field public mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field public mStateManager:Lcom/android/launcher3/statemanager/StateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field

.field private mStringCache:Lcom/android/launcher3/model/StringCache;

.field public mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

.field private final mTmpAddItemCellCoordinates:[I

.field public mTouchInProgress:Z

.field private mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

.field public mWorkspace:Lcom/android/launcher3/OplusWorkspace;

.field public mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {v0}, Lcom/android/launcher3/util/ActivityTracker;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    new-instance v1, Lcom/android/launcher3/b3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/b3;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    iput v0, p0, Lcom/android/launcher3/Launcher;->mDismissState:I

    const-class v0, Lcom/android/launcher3/ILauncherExt;

    invoke-static {v0}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ILauncherExt;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mExt:Lcom/android/launcher3/ILauncherExt;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRecentsAnimFinishRequest:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mRecentFinishDeferredCallback:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->iconSurfaceManagerProxy:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    new-instance v0, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    return-void
.end method

.method public static synthetic A(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$8(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic B(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->lambda$startBinding$12(Lcom/android/launcher3/card/IAreaWidget;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/launcher3/Launcher;Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$crossFadeWithPreviousAppearance$21(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic D(Lcom/android/launcher3/Launcher;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$onRestoreInstanceState$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/launcher3/Launcher;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mRecentsAnimFinishRequest:Z

    return p1
.end method

.method public static synthetic access$301(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private announceForAccessibility(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindAddScreens(Lcom/android/launcher3/util/IntArray;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/OplusWorkspace;->insertNewWorkspaceScreenBeforeEmptyScreen(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_33

    sget-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz v1, :cond_33

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    :cond_30
    invoke-virtual {p1, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V

    :cond_33
    return-void
.end method

.method public static cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/Launcher;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")TT;"
        }
    .end annotation

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method private checkIfOverlayStillDeferred()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    return-void

    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStarted(Landroid/app/Activity;)V

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_40

    :cond_3b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityPaused(Landroid/app/Activity;)V

    :goto_40
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStopped(Landroid/app/Activity;)V

    :cond_4b
    return-void
.end method

.method private closeOpenViews()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    return-void
.end method

.method private completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I
    .registers 13

    iget v0, p4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v1, p4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_c

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(I)I

    move-result v0

    :cond_c
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4c

    const/4 p2, 0x5

    if-eq p1, p2, :cond_47

    const/16 p2, 0xc

    const/16 v1, 0xd

    if-eq p1, p2, :cond_2f

    if-eq p1, v1, :cond_1b

    goto :goto_5f

    :cond_1b
    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RECONFIGURED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    goto :goto_5f

    :cond_2f
    const/4 p1, 0x4

    invoke-direct {p0, p3, p1}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p1

    if-eqz p1, :cond_5f

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    if-eqz p2, :cond_5f

    new-instance p3, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {p3, p2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p3, p0, p1, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)Z

    goto :goto_5f

    :cond_47
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1, p1}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_5f

    :cond_4c
    iget v3, p4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, p4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, p4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v1, p0

    move-object v2, p2

    move v4, v0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V

    const p1, 0x7f1202f6

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    :cond_5f
    :goto_5f
    return v0
.end method

.method private completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    instance-of v1, p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-nez v1, :cond_e

    goto :goto_2e

    :cond_e
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput p2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez p2, :cond_1a

    iput-object v0, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    :cond_1a
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReinflateIfNeeded()Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v1

    :cond_2e
    :goto_2e
    const-string p0, "Launcher"

    const-string p1, "Widget update called, when the widget no longer exists."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private crossFadeWithPreviousAppearance()V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher$NonConfigInstance;

    if-eqz v0, :cond_49

    iget-object v1, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->snapshot:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d

    goto :goto_49

    :cond_d
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->snapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/launcher/widget/b;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/Launcher;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_49
    :goto_49
    return-void
.end method

.method private ensurePendingDropLayoutExists(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-nez v0, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p0, -0x1

    goto :goto_24

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    :goto_24
    return p0

    :cond_25
    return p1
.end method

.method public static varargs getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/view/ViewGroup;",
            ">;[",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_20

    aget-object v2, p1, v1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, v2}, Lcom/android/launcher3/Launcher;->mapOverViewGroup(Landroid/view/ViewGroup;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    return-object v4

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic i(Lcom/android/launcher3/BubbleTextView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$10(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method private ignoreExceededTabletExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 7

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataExpandItemMaxCount()I

    move-result p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getBgDataSubscribeAndNormalAndDiverCount()I

    move-result v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x0

    const/16 v3, 0xca

    if-ne v1, v3, :cond_42

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v1, v0

    const/4 v3, 0x1

    if-le v1, p0, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindItems, ignore the item that exceeded max count of expand! item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", item.cellX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const-string v2, ", bgDataSubscribeAndNormalCount:"

    const-string v4, ", bgDataExpandItemMaxCount:"

    invoke-static {v1, p1, v2, v0, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher"

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_42
    return v2
.end method

.method public static synthetic j(Lcom/android/launcher3/OplusDeviceProfile;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->lambda$getPagesToBindSynchronously$11(Lcom/android/launcher3/OplusDeviceProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Ljava/util/ArrayList;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$onProvideKeyboardShortcuts$20(Ljava/util/ArrayList;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$5(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private synthetic lambda$bindAddScreens$14(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/OplusWorkspace;->getScreenPair(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method private synthetic lambda$crossFadeWithPreviousAppearance$21(Landroid/widget/ImageView;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$17(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    if-eqz p1, :cond_8

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$18(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    if-eqz p2, :cond_24

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_24

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$19(Ljava/util/List;Landroid/view/View;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getPagesToBindSynchronously$11(Lcom/android/launcher3/OplusDeviceProfile;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/app/NotificationManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "com.android.launcher3.Debug"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080038

    invoke-virtual {v3, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v3, "Launcher crash detected!"

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const v0, 0x1080052

    const-string v3, "Share"

    invoke-virtual {p0, v0, v3, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const-string v0, "Debug"

    invoke-virtual {p1, v0, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-interface {p0, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_5e
    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method private synthetic lambda$onInitialBindComplete$16()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    return-void
.end method

.method private synthetic lambda$onPluginConnected$2(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .registers 2

    invoke-interface {p1, p0, p0}, Lcom/android/systemui/plugins/LauncherOverlayPlugin;->createOverlayManager(Landroid/app/Activity;Lcom/android/systemui/plugins/shared/LauncherExterns;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onProvideKeyboardShortcuts$20(Ljava/util/ArrayList;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V
    .registers 5

    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    iget-object v1, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->accessibilityAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget p1, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->keyCode:I

    const/16 v2, 0x1000

    invoke-direct {v0, v1, p1, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onRestoreInstanceState$3(Ljava/lang/Integer;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    :cond_12
    return-void
.end method

.method private static synthetic lambda$preAddApps$15(Lcom/android/launcher3/AbstractFloatingView;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private static synthetic lambda$startActivitySafely$10(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForFloating()V

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method private synthetic lambda$startActivitySafely$4(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    return-void
.end method

.method private synthetic lambda$startActivitySafely$5(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 12

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_9
    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/launcher3/f0;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/f0;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$startActivitySafely$6(Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lcom/android/launcher3/Launcher$6;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->addGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    goto :goto_1a

    :cond_17
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    :goto_1a
    return-void
.end method

.method private synthetic lambda$startActivitySafely$7(Z)Ljava/lang/Boolean;
    .registers 4

    if-eqz p1, :cond_d

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    :cond_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$startActivitySafely$8(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    const-string v0, "Launcher"

    const-string/jumbo v1, "startActivitySafely: run callback delay."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->access$301(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    return-void
.end method

.method private synthetic lambda$startActivitySafely$9(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    return-void
.end method

.method private static synthetic lambda$startBinding$12(Lcom/android/launcher3/card/IAreaWidget;)V
    .registers 2

    instance-of v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->cacheCardElement()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setDrawPicForDrag(Z)V

    :cond_d
    return-void
.end method

.method private static synthetic lambda$startBinding$13(Landroid/view/View;)V
    .registers 2

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/android/launcher3/CellLayout;

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_13

    sget-object v0, Lcom/android/launcher3/n0;->b:Lcom/android/launcher3/n0;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_13
    return-void
.end method

.method private logStopAndResume(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, -0x1

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    :goto_15
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_3e

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {p1, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_51

    :cond_3e
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget p1, p1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v2, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONSTOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_51
    const/4 v3, 0x2

    if-ne v1, v3, :cond_71

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz p0, :cond_71

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {v2, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_71
    invoke-interface {v2, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public static synthetic m(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Launcher;->lambda$getFirstMatchForAppClose$18(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private static mapOverViewGroup(Landroid/view/ViewGroup;Ljava/util/function/Predicate;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic n(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$4(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/Launcher;Z)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$7(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private onIdpChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->reapplyUi()V

    :cond_f
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusDragLayer;->recreateControllers()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExt:Lcom/android/launcher3/ILauncherExt;

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lcom/android/launcher3/ILauncherExt;->onIdpChangeBeforeOnSaveInstance(Landroid/os/Bundle;)V

    :cond_20
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_29
    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$onCreate$1()V

    return-void
.end method

.method private processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    const-string v0, "Main"

    const-string/jumbo v2, "start: processShortcutFromDrop"

    invoke-static {v0, v2}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_2a

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_2a
    return-void
.end method

.method public static synthetic q(Ljava/util/List;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$getFirstMatchForAppClose$19(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$getFirstMatchForAppClose$17(ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/LauncherState;->values()[Lcom/android/launcher3/LauncherState;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher$NonConfigInstance;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    iget-object v1, v1, Lcom/android/launcher3/Launcher$NonConfigInstance;->config:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_41

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    :goto_40
    move v1, v2

    :cond_41
    if-nez v1, :cond_49

    invoke-interface {v0}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result v1

    if-nez v1, :cond_4e

    :cond_49
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_4e
    const-string v0, "launcher.request_args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_5b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    :cond_5b
    const-string v0, "launcher.request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const-string v0, "launcher.activity_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/ActivityResultInfo;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/Launcher;Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$onPluginConnected$2(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    return-object p0
.end method

.method private scheduleDeferredCheck()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private showAllAppsWorkTabFromIntent(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->switchToTab(I)V

    return-void
.end method

.method private switchOverlay(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/shared/LauncherOverlayManager;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onAttachedToWindow()V

    :cond_1e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/Launcher;Landroid/app/NotificationManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->lambda$onCreate$0(Landroid/app/NotificationManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    return-void
.end method

.method public static synthetic v(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$9(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$onInitialBindComplete$16()V

    return-void
.end method

.method public static synthetic x(Lcom/android/launcher3/AbstractFloatingView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->lambda$preAddApps$15(Lcom/android/launcher3/AbstractFloatingView;)V

    return-void
.end method

.method public static synthetic y(Lcom/android/launcher3/Launcher;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$6(Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic z(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->lambda$startBinding$13(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addAppCardImpl(Lcom/android/launcher3/PendingAddItemInfo;Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 3
    .param p2  # Lcom/android/launcher3/card/LauncherCardInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 8

    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v3

    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    iput-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_4c

    :cond_1a
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, 0x63

    if-ne v0, v3, :cond_2f

    sget-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    iget-object v3, p1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetIdForCustomProvider(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_37

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    :goto_37
    iget-object v3, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v0, v5, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    goto :goto_4c

    :cond_47
    const/16 v2, 0xb

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)V

    :goto_4c
    return-void
.end method

.method public addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    return-void
.end method

.method public addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .registers 7

    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 p1, 0x0

    invoke-virtual {p0, p5, p1, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public addFolder(Lcom/android/launcher3/CellLayout;IIII)Lcom/android/launcher3/folder/FolderIcon;
    .registers 13

    new-instance v6, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v6}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    const p2, 0x7f0d0129

    invoke-static {p2, p0, p1, v6}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p2, p1, v6}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    return-object p1
.end method

.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[IIILcom/android/launcher3/card/LauncherCardInfo;)V

    return-void
.end method

.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[IIILcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 8
    .param p7  # Lcom/android/launcher3/card/LauncherCardInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 p2, 0x1

    if-eqz p4, :cond_10

    const/4 p3, 0x0

    aget p3, p4, p3

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget p3, p4, p2

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :cond_10
    iput p5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq p3, p2, :cond_51

    const/4 p2, 0x5

    if-eq p3, p2, :cond_45

    const/4 p2, 0x6

    if-eq p3, p2, :cond_3f

    const/16 p2, 0x63

    if-eq p3, p2, :cond_45

    const/16 p2, 0x64

    if-ne p3, p2, :cond_2a

    invoke-virtual {p0, p1, p7}, Lcom/android/launcher3/Launcher;->addAppCardImpl(Lcom/android/launcher3/PendingAddItemInfo;Lcom/android/launcher3/card/LauncherCardInfo;)V

    goto :goto_58

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown item type: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    check-cast p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V

    goto :goto_58

    :cond_45
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->onDragWidgetAdd(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/PendingAddItemInfo;)V

    goto :goto_58

    :cond_51
    const-string p0, "Launcher"

    const-string p1, "addPendingItem,item type = ITEM_TYPE_DEEP_SHORTCUT"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return-void
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    const-string p1, "DisplayAllApps"

    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_16
    return-void
.end method

.method public bindAllWidgets(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setAllWidgets(Ljava/util/List;)V

    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->isHandingIconFallenState()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusWorkspace;->setAppWidgetFallenState(Landroid/view/View;)V

    :cond_1d
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {v1, v0, p1}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_29
    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
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

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntArray;->removeAllValues(Lcom/android/launcher3/util/IntArray;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Lcom/android/launcher3/util/IntArray;)V

    :cond_c
    const/4 p1, 0x0

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    :cond_18
    if-eqz p3, :cond_24

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_24

    const/4 p2, 0x1

    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    :cond_24
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    return-void
.end method

.method public bindItems(Ljava/util/List;ZZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->canAnimatePageChange()Z

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "Launcher"

    if-nez v5, :cond_2f

    const-string v0, "bindItems, workspace.getChildAt(0) == null! items = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v9, v8

    move v8, v7

    move v7, v4

    :goto_38
    const/4 v10, 0x1

    if-ge v4, v5, :cond_295

    move-object/from16 v11, p1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v13

    if-eqz v13, :cond_4e

    const-string v13, "bindItems, item = "

    invoke-static {v13, v12, v6}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_4e
    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v14, -0x65

    if-ne v13, v14, :cond_6e

    iget-object v13, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    if-nez v13, :cond_6e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindItems, mHotseat is null! item = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d5

    :cond_6e
    invoke-virtual {v0, v12}, Lcom/android/launcher3/Launcher;->ignoreBindItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v13

    if-eqz v13, :cond_8a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindItems, ignoreBindItem(item),item:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d5

    :cond_8a
    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const v14, 0x7fffffff

    if-eqz v13, :cond_147

    if-eq v13, v10, :cond_147

    const/4 v10, 0x3

    if-eq v13, v10, :cond_132

    if-eq v13, v14, :cond_ff

    const/4 v7, 0x5

    if-eq v13, v7, :cond_e0

    const/4 v7, 0x6

    if-eq v13, v7, :cond_147

    const/16 v7, 0x63

    if-eq v13, v7, :cond_e0

    const/16 v7, 0x64

    if-eq v13, v7, :cond_d3

    packed-switch v13, :pswitch_data_2f0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Item Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b1  #0xcb
    new-instance v7, Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/android/launcher3/hotseat/HotseatDividerView;-><init>(Landroid/content/Context;)V

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_17b

    :pswitch_c2  #0xc9
    new-instance v7, Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/android/launcher3/hotseat/HotseatDividerView;-><init>(Landroid/content/Context;)V

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_17b

    :cond_d3
    move-object v7, v12

    check-cast v7, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v7

    goto/16 :goto_17b

    :cond_e0
    move-object v7, v12

    check-cast v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_17b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindItems, inflateAppWidget view is null! item = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d5

    :cond_ff
    const v10, 0x7f0d028b

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object v15, v12

    check-cast v15, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v10, v0, v13, v15}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v13

    if-eqz v13, :cond_123

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v13

    const v15, 0x7f0a02bb

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    goto :goto_124

    :cond_123
    const/4 v13, 0x0

    :goto_124
    if-eqz v13, :cond_129

    invoke-virtual {v13, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_129
    invoke-static/range {p0 .. p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->setVirtualFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    move-object v7, v10

    goto :goto_17b

    :cond_132
    const v7, 0x7f0d0129

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object v13, v12

    check-cast v13, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v7, v0, v10, v13}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object v7

    goto :goto_17b

    :cond_147
    :pswitch_147  #0xca, 0xcc, 0xcd, 0xce
    invoke-virtual {v12}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_174

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeIconBannedInLauncher(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_174

    const-string v10, "bindItems, company customize icon banned in launcher package:"

    invoke-static {v10}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "! item = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d5

    :cond_174
    move-object v7, v12

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v7

    :cond_17b
    :goto_17b
    iget v10, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v13, -0x64

    if-ne v10, v13, :cond_26d

    iget v10, v12, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v10, v14, :cond_26d

    iget-object v10, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v10, v13}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v10

    if-eqz v10, :cond_26d

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v10, v13, v14}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v13

    if-eqz v13, :cond_26d

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v10, v13, v14}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1b7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bindItems failed when removing colliding item="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b7
    const-string v14, "Collision while binding workspace item: "

    if-eqz v13, :cond_21f

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    if-ne v12, v15, :cond_1db

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collision while binding workspace item, but is same instance! item = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d5
    move/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_28c

    :cond_1db
    move/from16 v16, v5

    instance-of v5, v15, Lcom/android/launcher3/model/data/ItemInfo;

    move-object/from16 v17, v6

    const-string v6, ". Collides with "

    if-eqz v5, :cond_209

    sget-object v5, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    move-object v11, v15

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5, v12, v11}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isMarketIconCanReplaceByShortcut(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_209

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collision while binding workspace market shortcut item: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_238

    :cond_209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_237

    :cond_21f
    move/from16 v16, v5

    move-object/from16 v17, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Collides view is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_237
    const/4 v6, 0x0

    :goto_238
    if-eqz v6, :cond_24b

    invoke-virtual {v10, v13}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v6

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v6, v10, v5}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    goto :goto_271

    :cond_24b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v6

    invoke-virtual {v6, v12, v5}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v5, :cond_28c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LauncherbindItems failed for item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "b/202985412"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28c

    :cond_26d
    move/from16 v16, v5

    move-object/from16 v17, v6

    :goto_271
    invoke-interface {v3, v7, v12}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz p2, :cond_289

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v7, v4}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v12, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :cond_289
    if-nez v9, :cond_28c

    move-object v9, v7

    :cond_28c
    :goto_28c
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    move/from16 v5, v16

    move-object/from16 v6, v17

    goto/16 :goto_38

    :cond_295
    if-eqz p2, :cond_2e3

    const/4 v4, -0x1

    if-le v8, v4, :cond_2e3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-eqz p3, :cond_2ae

    if-eqz v9, :cond_2ae

    new-instance v1, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v1, v0, v9}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2ae
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v5

    new-instance v6, Lcom/android/launcher3/c3;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcom/android/launcher3/c3;-><init>(Landroid/animation/AnimatorSet;I)V

    new-instance v7, Lcom/android/launcher3/Launcher$8;

    invoke-direct {v7, v0}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0x1f4

    if-eqz v2, :cond_2dd

    if-eq v8, v1, :cond_2dd

    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance v2, Lcom/android/launcher3/Launcher$9;

    invoke-direct {v2, v0, v5, v6}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2, v9, v10}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2ec

    :cond_2dd
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, v6, v9, v10}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2ec

    :cond_2e3
    if-eqz p3, :cond_2ec

    if-eqz v9, :cond_2ec

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2ec
    :goto_2ec
    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->requestLayout()V

    return-void

    :pswitch_data_2f0
    .packed-switch 0xc9
        :pswitch_c2  #000000c9
        :pswitch_147  #000000ca
        :pswitch_b1  #000000cb
        :pswitch_147  #000000cc
        :pswitch_147  #000000cd
        :pswitch_147  #000000ce
    .end packed-switch
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

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/OplusWorkspace;->updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public bindScreens(Lcom/android/launcher3/util/IntArray;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Launcher"

    const-string v1, "bindScreens empty ids"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Lcom/android/launcher3/util/IntArray;)V

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_25

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_2a

    :cond_25
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->unlockWallpaperFromDefaultPageOnNextLayout()V

    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

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

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusWorkspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Ljava/util/function/Predicate;)V

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {v0, p1, p0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    :cond_e
    return-void
.end method

.method public canAnimatePageChange()Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long p0, v2, v4

    if-lez p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public clearPendingBinds()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdatesSilently(I)V

    :cond_14
    return-void
.end method

.method public clearPendingExecutor(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    :cond_7
    return-void
.end method

.method public closeOpenViews(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    return-void
.end method

.method public collectStateHandlers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/statemanager/StateManager$StateHandler;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public completeAddAppCard(Lcom/android/launcher3/PendingAddItemInfo;ZLcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 4
    .param p3  # Lcom/android/launcher3/card/LauncherCardInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 12

    if-nez p4, :cond_8

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p4, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    :cond_8
    if-nez p4, :cond_29

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "completeAddAppWidget: appWidgetInfo is null. id = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    if-nez p3, :cond_31

    iget-object p3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p3, p0, p1, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    :cond_31
    new-instance v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v6, p1, v0, p4, p3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    instance-of p1, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz p1, :cond_5a

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget p1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->sourceContainer:I

    iput p1, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    goto :goto_67

    :cond_5a
    instance-of p1, p2, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz p1, :cond_67

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {p1}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetSourceContainer()I

    move-result p1

    iput p1, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    invoke-virtual {p0, p3, v6}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p1, p3, v6}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    const p1, 0x7f1202f6

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    instance-of p1, p3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p1, :cond_af

    check-cast p3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget p2, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    sget-object p4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p2, p4, :cond_a5

    invoke-static {p3, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    goto :goto_af

    :cond_a5
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance p4, Lcom/android/launcher3/Launcher$4;

    invoke-direct {p4, p0, p3, p1}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p2, p4}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_af
    :goto_af
    return-void
.end method

.method public completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v1, p6

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_14a

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1b

    goto/16 :goto_14a

    :cond_1b
    iget-object v15, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v14

    const-string v2, "Launcher"

    if-nez v14, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeAddShortcut: layout is null! screenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", container = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/android/launcher3/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    const/4 v13, 0x0

    const/4 v12, 0x0

    if-nez v3, :cond_9a

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-static/range {p0 .. p1}, Lcom/android/launcher3/model/ModelUtils;->fromLegacyShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    goto :goto_62

    :cond_61
    move-object v3, v13

    :goto_62
    if-nez v3, :cond_6a

    const-string v0, "Unable to parse a valid custom shortcut result"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6a
    new-instance v4, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v4, v0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v5, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9a

    const-string v0, "Ignoring malicious intent "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9a
    move-object v8, v3

    if-gez v9, :cond_11d

    invoke-virtual {v0, v8}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v7

    if-ltz p4, :cond_eb

    if-ltz p5, :cond_eb

    aput p4, v15, v12

    aput p5, v15, v11

    new-instance v6, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v8, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v2, v7

    move/from16 v3, p2

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v18, v6

    move/from16 v6, v16

    move-object/from16 p1, v7

    move/from16 v7, v17

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_d2

    return-void

    :cond_d2
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/16 v16, 0x0

    const/4 v2, 0x1

    move v3, v12

    move-object v12, v1

    move-object v1, v13

    move-object/from16 v13, p1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v17, v18

    move/from16 v18, v2

    invoke-virtual/range {v12 .. v18}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v2

    if-eqz v2, :cond_e9

    return-void

    :cond_e9
    move v2, v11

    goto :goto_f7

    :cond_eb
    move-object/from16 p1, v7

    move-object/from16 v19, v8

    move v3, v12

    move-object v1, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual {v4, v5, v11, v11}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v2

    :goto_f7
    if-nez v2, :cond_101

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    move-object/from16 v7, v19

    invoke-virtual {v0, v4, v7, v1}, Lcom/android/launcher3/OplusWorkspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    return-void

    :cond_101
    move-object/from16 v7, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    aget v6, v5, v3

    aget v8, v5, v11

    move-object v2, v7

    move/from16 v3, p2

    move/from16 v4, p3

    move v5, v6

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    goto :goto_14a

    :cond_11d
    move-object v7, v8

    move v3, v12

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Launcher;->findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_131

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v0, v7, v1, v3}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    goto :goto_14a

    :cond_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find folder with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to add shortcut."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14a
    :goto_14a
    return-void
.end method

.method public completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_25

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {v1, p0, p2, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/Launcher$3;

    invoke-direct {v2, p0, p2, p3, v1}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    move v7, p1

    move-object v8, v1

    move-object v6, v2

    goto :goto_32

    :cond_25
    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const/4 p1, 0x4

    move v7, p1

    goto :goto_30

    :cond_2f
    move v7, v0

    :goto_30
    move-object v6, v1

    move-object v8, v6

    :goto_32
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/launcher3/dragndrop/DragView;

    const/4 v9, 0x1

    move-object v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_69

    :cond_4b
    if-eqz v6, :cond_69

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p2, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v4, p1, p2, v1, p3}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_69

    :cond_5f
    const p1, 0x7f12046a

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_69
    :goto_69
    return-void
.end method

.method public createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .registers 2

    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public createAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    .registers 2

    new-instance v0, Lcom/android/launcher3/OplusLauncherAppWidgetHost;

    invoke-direct {v0, p0}, Lcom/android/launcher3/OplusLauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .registers 5

    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1c2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    mul-int/lit8 p2, p2, 0x55

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const p2, 0x3fa66666  # 1.3f

    invoke-direct {p1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    sget-object p2, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object p1
.end method

.method public createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public createTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher3/touch/AllAppsSwipeController;

    invoke-direct {v1, p0}, Lcom/android/launcher3/touch/AllAppsSwipeController;-><init>(Lcom/android/launcher3/Launcher;)V

    const/4 p0, 0x1

    aput-object v1, v0, p0

    return-object v0
.end method

.method public deferOverlayCallbacksUntilNextResumeOrStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    return-void
.end method

.method public dispatchDeviceProfileChanged()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->dispatchDeviceProfileChanged()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onDeviceProvideChanged()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const-string v0, "Main"

    const-string v1, "Key event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordKeyEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_19

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Launcher"

    const-string v2, "dispatchKeyEvent : "

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-nez v1, :cond_17

    const v1, 0x7f1202cc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object p0

    :goto_23
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    goto :goto_2a

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->ensureOrientationUnlock(Lcom/android/launcher3/LauncherState;)V

    goto :goto_2a

    :cond_28
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    :cond_2a
    :goto_2a
    const-string v0, "Main"

    const-string v1, "Touch event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    if-nez p3, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    const-string v1, "catch ConcurrentModificationException："

    const-string v2, "Launcher"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_f
    array-length v0, p4

    if-lez v0, :cond_a9

    const/4 v0, 0x0

    aget-object v1, p4, v0

    const-string v2, "--all"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a9

    const-string v1, "Workspace Items"

    invoke-static {p1, v1, p3}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    move v1, v0

    :goto_23
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    const-string v3, "    "

    if-ge v1, v2, :cond_79

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Homescreen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    move v4, v0

    :goto_51
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_76

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_73

    invoke-static {p1, v3}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_79
    const-string v1, "  Hotseat"

    invoke-static {p1, v1, p3}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    :goto_84
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_a9

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a6

    invoke-static {p1, v3}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Misc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/BaseActivity;->dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    const-string v2, "\tmPendingRequestArgs="

    invoke-static {v0, v1, p3, p1, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPendingActivityResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmRotationHelper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmAppWidgetHost.isListening: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->isListening()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/statemanager/StateManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/popup/PopupDataProvider;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/DeviceProfile;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_14d

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_14d
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public endOverlayScrollSpring()V
    .registers 1

    return-void
.end method

.method public findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    return-object p0
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .registers 7

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "finishBindingItems"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v2, :cond_1c

    iget v3, v2, Lcom/android/launcher3/util/ActivityResultInfo;->requestCode:I

    iget v4, v2, Lcom/android/launcher3/util/ActivityResultInfo;->resultCode:I

    iget-object v2, v2, Lcom/android/launcher3/util/ActivityResultInfo;->data:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    :cond_1c
    const/4 v2, -0x1

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v3

    goto :goto_35

    :cond_34
    move v3, v2

    :goto_35
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_4e

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p1

    if-eq p1, v2, :cond_4e

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lcom/android/launcher3/OplusWorkspace;->setCurrentPage(II)V

    :cond_4e
    new-instance p1, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p1

    const v1, 0x7f0d0128

    iget-object v2, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p0

    const p1, 0x7f0d012a

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public finishRecentRequested()V
    .registers 3

    const-string v0, "MultiAppLaunchInterrupt"

    const-string v1, "finishRecentRequested"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRecentsAnimFinishRequest:Z

    new-instance v0, Lcom/android/launcher3/Launcher$10;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->addGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    return-void
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object p0
.end method

.method public getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    return-object p0
.end method

.method public getAllAppsEntryEvent()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_d

    :cond_b
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_d
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAllAppsExitEvent()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_EXIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    return-object p0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method public getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCellLayout(II)Lcom/android/launcher3/CellLayout;
    .registers 4

    const/16 v0, -0x65

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    goto :goto_d

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .registers 2

    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;
    .registers 1

    new-instance p0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    return-object p0
.end method

.method public getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDevicePrefs()Landroid/content/SharedPreferences;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getDismissState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/Launcher;->mDismissState:I

    return p0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    return-object p0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    return-object p0
.end method

.method public getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/OplusDragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    return-object p0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetBar()Lcom/android/launcher3/DropTargetBar;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    return-object p0
.end method

.method public getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;
    .registers 8

    new-instance v0, Lcom/android/launcher/m;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/m;-><init>(II)V

    new-instance p1, Lcom/android/launcher/o;

    invoke-direct {p1, p3, p2}, Lcom/android/launcher/o;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eqz p4, :cond_2c

    sget-object p4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-eqz p4, :cond_2c

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-array p2, p2, [Ljava/util/function/Predicate;

    aput-object v0, p2, p3

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2c
    new-instance p4, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance v2, Lcom/android/launcher3/k0;

    invoke-direct {v2, p4, p3}, Lcom/android/launcher3/k0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/util/function/Predicate;

    aput-object v0, p0, p3

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p3

    aput-object p3, p0, v1

    aput-object p1, p0, p2

    const/4 p2, 0x3

    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    aput-object p1, p0, p2

    invoke-static {p4, p0}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    return-object p0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageAreaRelativeToDragLayer()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getHotseat()Lcom/android/launcher3/OplusHotseat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    return-object p0
.end method

.method public getModel()Lcom/android/launcher3/OplusLauncherModel;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    return-object p0
.end method

.method public getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/OplusModelWriter;

    return-object p0
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .registers 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_8

    return-object p0

    nop

    :array_8
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public getOldConfig()Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    return-object p0
.end method

.method public getOptionsPopup()Lcom/android/launcher3/popup/ArrowPopup;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/popup/ArrowPopup<",
            "*>;"
        }
    .end annotation

    const v0, 0x7f0a048b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/popup/ArrowPopup;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    return-object p0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    return-object p0
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    goto :goto_18

    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    goto :goto_18

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    :goto_18
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v3

    const-string v4, "b/200572078"

    if-eqz v3, :cond_43

    sget-boolean p0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_42

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPagesToBindSynchronously (1): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-object v2

    :cond_43
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_4a
    if-ge v7, v5, :cond_54

    aget v8, v3, v7

    invoke-virtual {v1, v8}, Lcom/android/launcher3/util/IntArray;->add(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_54
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/launcher3/util/OplusTwoPanelUtils;->getScreenPair(ILcom/android/launcher3/util/IntArray;)I

    move-result p1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_94

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_94

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_94

    :cond_79
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/c0;->a:Lcom/android/launcher3/c0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_94

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_94

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_94
    :goto_94
    sget-boolean p0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_ac

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPagesToBindSynchronously (2): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    return-object v2
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object p0
.end method

.method public getPopupTarget(FF)Landroid/graphics/RectF;
    .registers 6

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c53

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_17

    cmpg-float v1, p2, v1

    if-gez v1, :cond_29

    :cond_17
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p2, p0

    :cond_29
    new-instance p0, Landroid/graphics/RectF;

    sub-float v1, p1, v0

    sub-float v2, p2, v0

    add-float/2addr p1, v0

    add-float/2addr p2, v0

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public getRotationHelper()Lcom/android/launcher3/states/RotationHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    return-object p0
.end method

.method public getScrimView()Lcom/android/launcher3/views/ScrimView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    return-object p0
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager;->withDefaultInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    return-object p0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-object p0
.end method

.method public getSupportedShortcuts()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public getWorkspace()Lcom/android/launcher3/OplusWorkspace;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    return-object p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    return-void

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    if-nez v5, :cond_19

    return-void

    :cond_19
    invoke-virtual {v5}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetId()I

    move-result v1

    const/16 v2, 0xb

    const-string v3, "Launcher"

    const-string v4, "appWidgetId"

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    const/4 v6, -0x1

    if-ne p1, v2, :cond_59

    if-eqz p3, :cond_31

    invoke-static {p3, v4, v6}, Lcom/android/common/util/IntentUtils;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    move v2, p1

    goto :goto_32

    :cond_31
    move v2, v6

    :goto_32
    if-nez p2, :cond_3d

    invoke-virtual {p0, v8, v2, v5}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, v7, v8, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_58

    :cond_3d
    if-ne p2, v6, :cond_58

    invoke-virtual {v5}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object p1

    if-nez p1, :cond_4b

    const-string p0, "handleActivityResult: handler is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4b
    const/4 v4, 0x0

    invoke-virtual {v5}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object p1

    const/16 v6, 0x1f4

    move-object v1, p0

    move-object v3, v5

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    :cond_58
    :goto_58
    return-void

    :cond_59
    const/16 v2, 0x9

    const/4 v9, 0x1

    if-eq p1, v2, :cond_64

    const/4 v2, 0x5

    if-ne p1, v2, :cond_62

    goto :goto_64

    :cond_62
    move v2, v8

    goto :goto_65

    :cond_64
    :goto_64
    move v2, v9

    :goto_65
    if-eqz v2, :cond_b8

    if-eqz p3, :cond_6d

    invoke-static {p3, v4, v6}, Lcom/android/common/util/IntentUtils;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v6

    :cond_6d
    if-gez v6, :cond_71

    move v4, v1

    goto :goto_72

    :cond_71
    move v4, v6

    :goto_72
    if-ltz v4, :cond_aa

    if-nez p2, :cond_77

    goto :goto_aa

    :cond_77
    iget p1, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p3, -0x64

    if-ne p1, p3, :cond_85

    iget p1, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(I)I

    move-result p1

    iput p1, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :cond_85
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget p3, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p3}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    new-instance p1, Lcom/android/launcher3/Launcher$2;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_a6

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, v7, v8, p1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_b7

    :cond_a6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_b7

    :cond_aa
    :goto_aa
    const-string p1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8, v4, v5}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, v7, v8, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    :goto_b7
    return-void

    :cond_b8
    const/16 v2, 0xd

    if-eq p1, v2, :cond_e8

    const/16 v2, 0xc

    if-ne p1, v2, :cond_c1

    goto :goto_e8

    :cond_c1
    if-ne p1, v9, :cond_d9

    if-ne p2, v6, :cond_d2

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v1, v6, :cond_d2

    invoke-direct {p0, p1, p3, v6, v5}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_d9

    :cond_d2
    if-nez p2, :cond_d9

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, v7, v8, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    :cond_d9
    :goto_d9
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e2

    invoke-static {p0, p2, p3, v5}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->handleActivityResult(Landroid/content/Context;ILandroid/content/Intent;Lcom/android/launcher3/util/PendingRequestArgs;)V

    iput-boolean v9, p0, Lcom/android/launcher3/Launcher;->mIsShowingFamilySpaceUninstall:Z

    :cond_e2
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    return-void

    :cond_e8
    :goto_e8
    if-ne p2, v6, :cond_ed

    invoke-direct {p0, p1, p3, v1, v5}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I

    :cond_ed
    return-void
.end method

.method public handleGestureContract(Landroid/content/Intent;)V
    .registers 4

    invoke-static {p1}, Lcom/android/launcher3/GestureNavContract;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/GestureNavContract;

    move-result-object p1

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-static {p0, p1}, Lcom/android/launcher3/views/FloatingSurfaceView;->show(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/GestureNavContract;)V

    :cond_f
    return-void
.end method

.method public hideKeyboard()V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    :cond_17
    return-void
.end method

.method public iconPaperZoom(F)V
    .registers 6

    move-object v0, p0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/high16 v2, 0x3f800000  # 1.0f

    if-ne v0, v1, :cond_5c

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v1

    sget-object v3, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v1, v3, :cond_38

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne v0, v1, :cond_5c

    :cond_38
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->isIconPaperZooming:Z

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const v1, 0x3f733333  # 0.95f

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_98

    :cond_5c
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz p1, :cond_98

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_98

    const-string p1, "mDragLayer.getScaleX() = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",getScaleY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    :goto_98
    return-void
.end method

.method public ignoreBindItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    iget-boolean v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mDeleted:Z

    const-string v1, "Launcher"

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindItems, skip the item that marked as deleted! item = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1c
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-static {p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/launcher3/OplusAppFilter;->shouldShowAppByItemType(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result v3

    if-nez v3, :cond_a0

    const-string v3, "bindItems, hide pkg, name = "

    const-string v4, ", user = "

    invoke-static {v3, v0, v4}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    const-string v1, "Removing ignoreBindItem: id="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", title="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v4, ", because hide pkg="

    const-string v5, ", user="

    invoke-static {v1, v3, v4, v0, v5}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return v2

    :cond_a0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->ignoreExceededTabletExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_a7

    return v2

    :cond_a7
    const/4 p0, 0x0

    return p0
.end method

.method public inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;
    .registers 16

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasOptionFlag(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    const-string/jumbo v0, "search widget removed because search component cannot be found"

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return-object v2

    :cond_1b
    iget-boolean v1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    const-string v3, "; "

    const/4 v4, 0x7

    const-string v5, "Launcher"

    if-eqz v1, :cond_4f

    new-instance v1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inflateAppWidget: mIsSafeModeEnabled, PendingAppWidgetHostView! ,item.appWidgetId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4f
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v6, "BIND_WIDGET_id="

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_64
    const-string v6, ""

    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v8
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_2ca

    const-string v9, "Widget"

    if-eqz v8, :cond_74

    :try_start_6f
    const-string/jumbo v6, "the provider isn\'t ready."

    move-object v8, v2

    goto :goto_e2

    :cond_74
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v8

    if-eqz v8, :cond_89

    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v11, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v8

    if-nez v8, :cond_e2

    const-string v6, "WidgetManagerHelper cannot find a provider from provider info."

    goto :goto_e2

    :cond_89
    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v8, v10}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v8

    if-nez v8, :cond_9e

    iget v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v10, -0x64

    if-gt v6, v10, :cond_9c

    const-string v6, "CustomWidgetManager cannot find provider from that widget id."

    goto :goto_9e

    :cond_9c
    const-string v6, "AppWidgetManager cannot find provider for that widget id. It could be because AppWidgetService is not available, or the appWidgetId has not been bound to a the provider yet, or you don\'t have access to that appWidgetId."

    :cond_9e
    :goto_9e
    if-nez v8, :cond_b5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Launcher#inflateAppWidget, widget info is null!, item = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    :cond_b5
    iget-object v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launcher#inflateAppWidget, widget info mismatch!, item = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v11, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v8

    iget v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v10, v0

    iput v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    :cond_e2
    :goto_e2
    invoke-virtual {p1, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    const/4 v10, 0x0

    if-nez v7, :cond_1d2

    iget v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v7, :cond_1d2

    if-nez v8, :cond_12b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing restored widget: id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " belongs to component "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", as the provider is null and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_6f .. :try_end_125} :catchall_2ca

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object v2

    :cond_12b
    :try_start_12b
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_1a1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v11

    if-nez v11, :cond_1d2

    iget-object v11, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v11}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    iput v11, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iget v11, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v0, v11

    iput v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    new-instance v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v11, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    invoke-direct {v0, v8, v11}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    iget v11, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v11, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v11, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v11, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v11, 0x20

    invoke-virtual {p1, v11}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v11

    if-eqz v11, :cond_17e

    iget-object v12, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v12, :cond_17e

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v0, :cond_178

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_17d

    :cond_178
    const-string v0, "inflateAppWidget: newOptions is null!"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17d
    move-object v0, v12

    :cond_17e
    iget-object v12, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v13, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v12, v13, v8, v0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    iput-object v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    iget v12, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v12, v12, -0x21

    iput v12, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v0, :cond_199

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_196

    if-eqz v11, :cond_197

    :cond_196
    move v7, v10

    :cond_197
    iput v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    :cond_199
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->updateWidgetItemInDatabaseFaster(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    goto :goto_1d2

    :cond_1a1
    invoke-virtual {p1, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1b5

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v0, :cond_1b5

    iput v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_1d2

    :cond_1b5
    invoke-virtual {p1, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1d2

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->isAppWidgetRestored(I)Z

    move-result v0

    if-eqz v0, :cond_1d2

    iput v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_1d2
    :goto_1d2
    iget v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_1d4
    .catchall {:try_start_12b .. :try_end_1d4} :catchall_2ca

    const-string v7, ", mAppWidgetHost.createView; "

    if-nez v0, :cond_252

    if-nez v8, :cond_221

    :try_start_1da
    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLayoutRestore()Z

    move-result v0

    if-eqz v0, :cond_1fa

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launcher#inflateAppWidget, ignore delete invalid widget when layoutRestore! item = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f4
    .catchall {:try_start_1da .. :try_end_1f4} :catchall_2ca

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object v2

    :cond_1fa
    :try_start_1fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing invalid widget: id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object p0

    invoke-virtual {v0, p1, p0, v6}, Lcom/android/launcher3/model/OplusModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;)V
    :try_end_21b
    .catchall {:try_start_1fa .. :try_end_21b} :catchall_2ca

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object v2

    :cond_221
    :try_start_221
    iget v0, v8, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v0, v8, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateAppWidget: item.restoreStatus, item.appWidgetId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p0, v2, v8}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    goto :goto_2c1

    :cond_252
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_284

    if-eqz v8, :cond_284

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateAppWidget: item.appWidgetId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p0, v2, v8}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    goto :goto_2c1

    :cond_284
    if-nez v8, :cond_29a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create PendingAppWidgetHostView when appWidgetInfo is null, item = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateAppWidget: PendingAppWidgetHostView! ,item.appWidgetId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v0, p0, p1, v2, v10}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V

    :goto_2c1
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    :try_end_2c4
    .catchall {:try_start_221 .. :try_end_2c4} :catchall_2ca

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object v0

    :catchall_2ca
    move-exception p0

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    throw p0
.end method

.method public initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 4

    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const-string p1, "initDeviceProfile, dp = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getMultiWindowDisplaySize()Lcom/android/launcher3/util/WindowBounds;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    :cond_2c
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDeviceProfileInitiated()V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/OplusModelWriter;

    return-void
.end method

.method public invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_3a

    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result p0

    if-eqz p0, :cond_3a

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3a
    return-void
.end method

.method public isAllAppsViewInSelectState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isBindingItems()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return p0
.end method

.method public isDraggingEnabled()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isHoldFolderOpen()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isHotseatLayout(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    if-eqz p0, :cond_8

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOverlayScrolling()Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOverlayScrollProgress:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_15

    iget p0, p0, Lcom/android/launcher3/Launcher;->mOverlayScrollProgress:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public isTouchInProgress()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    return p0
.end method

.method public isWorkspaceLoading()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return p0
.end method

.method public isWorkspaceLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAllAppsTransition(F)V
    .registers 2

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    return-void

    :cond_15
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    const-string v2, "Launcher"

    if-eqz v0, :cond_34

    const/4 v3, 0x3

    if-ne v1, v3, :cond_34

    const-string/jumbo v0, "topView != null && statsLogOrdinal == LAUNCHER_STATE_OVERVIEW"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onStateBack()V

    return-void

    :cond_34
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_45

    :cond_3c
    const-string/jumbo v0, "topView == null || !topView.onBackPressed();"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onStateBack()V

    :cond_45
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x1480

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string v0, "DisplayWorkspaceFirstFrame"

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    const/4 v0, 0x1

    const-string v2, "DisplayAllApps"

    invoke-static {v2, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :cond_10
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v2, 0x5

    const-string v3, "Launcher.onCreate"

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    sget-boolean v2, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v2, :cond_46

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->NOTIFY_CRASHES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_46

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    const-string v5, "com.android.launcher3.Debug"

    const-string v6, "Debug"

    invoke-direct {v3, v5, v6, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/h0;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/h0;-><init>(Lcom/android/launcher3/Launcher;Landroid/app/NotificationManager;)V

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_46
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    new-instance v3, Lcom/android/launcher3/states/RotationHelper;

    invoke-direct {v3, p0}, Lcom/android/launcher3/states/RotationHelper;-><init>(Lcom/android/launcher3/BaseActivity;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->clearIconDbIfThemeChanged(Landroid/content/Context;Lcom/android/launcher3/icons/IconCache;Z)Z

    move-result v3

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->resetLoadedFlag()V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v3

    if-eqz v3, :cond_88

    sget-object v3, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->clearIconCache()V

    goto :goto_88

    :cond_81
    const-string v3, "Launcher"

    const-string v4, "do not need load data"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    :goto_88
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v3, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    new-instance v2, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    new-instance v2, Lcom/android/launcher3/statemanager/OplusStateManager;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/statemanager/OplusStateManager;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    new-instance v2, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-static {}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getInstance()Lcom/android/launcher/widget/AppWidgetListenHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->setLauncher(Lcom/android/launcher3/Launcher;)V

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    if-nez v2, :cond_d9

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startListening()V

    :cond_d9
    const v2, 0x7f0d015b

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->inflateRootView(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->crossFadeWithPreviousAppearance()V

    new-instance v2, Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance v3, Lcom/android/launcher/guide/side/e;

    invoke-direct {v3, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {v2, v3}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    sget-object v2, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleCreate(Lcom/android/launcher3/BaseActivity;)Z

    move-result v2

    if-eqz v2, :cond_106

    if-eqz p1, :cond_106

    const-string v3, "launcher.state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_106
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    if-eqz v3, :cond_11a

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_11a

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    invoke-virtual {v3}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetNormalState()V

    :cond_11a
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    move-result v3

    if-nez v3, :cond_130

    if-nez v2, :cond_130

    const-string v2, "b/223498680"

    const-string v3, "Launcher onCreate not binding sync, prevent drawing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_130
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusBaseActivity;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_14c

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_14c
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    sget-object v2, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/ScreenOnTracker;->addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v2

    const v3, 0x7f040559

    invoke-static {p0, v3}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v2, :cond_175

    invoke-interface {v2, p1}, Lcom/android/launcher3/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    :cond_175
    sget-object p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v2, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {p1, p0, v2, v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/states/RotationHelper;->initialize()V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pm/UserCache;

    new-instance v0, Lcom/android/launcher3/a3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/a3;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pm/UserCache;->addUserChangeListener(Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method

.method public onDeferredActivityLaunch()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mEndGestureCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mEndGestureCallback:Ljava/lang/Runnable;

    :cond_13
    return-void
.end method

.method public onDeferredResumed()V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->logStopAndResume(Z)V

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->validateModelDataOnResume()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setActivityResumed(Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->iconSurfaceManagerProxy:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface()V

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V

    sget-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ScreenOnTracker;->removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->destroy()V

    :try_start_34
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->stopListening()V
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_43

    :catch_3a
    move-exception v0

    const-string v1, "Launcher"

    const-string/jumbo v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->removeOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityDestroyed(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {p0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public onDragLayerHierarchyChanged()V
    .registers 1

    return-void
.end method

.method public onEnterAnimationComplete()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setCurrentTransitionRequest(I)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-nez v0, :cond_12

    const/16 v0, 0x2000

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_12
    return-void
.end method

.method public onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v1, 0xe

    invoke-static {v1, p1, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->onIdpChanged(I)V

    return-void
.end method

.method public onIdpChanged(Z)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V

    return-void
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    new-instance p1, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    new-instance p1, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-direct {p1, p2}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    new-instance v0, Lcom/android/launcher3/b0;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/b0;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    :cond_2e
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz p2, :cond_42

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_42
    invoke-virtual {p1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;)V

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_51

    const-string p0, "DisplayWorkspaceFirstFrame"

    invoke-static {p0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_51
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExt:Lcom/android/launcher3/ILauncherExt;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/android/launcher3/ILauncherExt;->skipOnKeyShortcut()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_f
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_63

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_51

    const/16 v0, 0x33

    if-eq p1, v0, :cond_45

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    iget v2, v1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->keyCode:I

    if-ne v2, p1, :cond_2c

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->invokeFromKeyboard(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_45
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->openWidgets(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    return v1

    :cond_51
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return v1

    :cond_63
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result p1

    if-nez p1, :cond_2f

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->closeOpenViews()V

    sget-boolean p1, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz p1, :cond_2a

    const-string p1, "TaplTarget"

    const-string p2, "Opening options popup on key up"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/high16 p1, -0x40800000  # -1.0f

    invoke-virtual {p0, p1, p1}, Lcom/android/launcher3/Launcher;->showDefaultOptions(FF)V

    :cond_2f
    const/4 p0, 0x1

    return p0

    :cond_31
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 12

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher.onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaplTarget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onNewIntent"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x400000

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_38

    move v1, v2

    goto :goto_39

    :cond_38
    move v1, v3

    :goto_39
    if-eqz v1, :cond_53

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v4

    if-nez v4, :cond_53

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_53

    move v4, v2

    goto :goto_54

    :cond_53
    move v4, v3

    :goto_54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v6, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v6, p0, p1}, Lcom/android/launcher3/util/ActivityTracker;->handleNewIntent(Lcom/android/launcher3/BaseActivity;Landroid/content/Intent;)Z

    move-result v6

    const-string v7, "is_add_item_activity"

    invoke-virtual {p1, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    if-eqz v5, :cond_189

    if-nez v6, :cond_15b

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v5

    const/16 v8, 0x100

    if-eqz v5, :cond_a4

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-nez v5, :cond_8c

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_8a

    goto :goto_8c

    :cond_8a
    move v5, v3

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v5, v2

    :goto_8d
    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v9

    if-eqz v9, :cond_a4

    if-nez v5, :cond_a1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-static {p0, v8}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v5

    if-eqz v5, :cond_a4

    :cond_a1
    invoke-virtual {v9, v3}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_a4
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    invoke-static {p0, v5, v8}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->closeFileManagerWithCheckIfNeed(Z)V

    const-string v5, "is_back_to_home_scene"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-nez v8, :cond_c4

    if-eqz v9, :cond_c4

    invoke-virtual {v9, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    :cond_c4
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v9

    if-nez v9, :cond_122

    if-nez v7, :cond_122

    sget-object v9, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v9}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v9

    if-eqz v9, :cond_dc

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    invoke-virtual {v9}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetFallenIcons()V

    goto :goto_122

    :cond_dc
    sget-object v9, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v9}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v9

    if-eqz v9, :cond_fa

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v9

    if-ne v9, v5, :cond_fa

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v9

    if-eqz v9, :cond_fa

    move v9, v2

    goto :goto_fb

    :cond_fa
    move v9, v3

    :goto_fb
    if-nez v9, :cond_122

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/OplusWorkspace;->isSpringLoadedForPendingSearchAddItemInfo()Z

    move-result v9

    if-nez v9, :cond_122

    sget-object v9, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v9}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v9

    if-nez v9, :cond_122

    if-nez v8, :cond_122

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v9}, Lcom/android/launcher3/OplusWorkspace;->resetFinalScroll()V

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/android/launcher3/states/OPlusBaseState;->addActionFlag(I)V

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v9, v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    invoke-virtual {v5}, Lcom/android/launcher3/states/OPlusBaseState;->resetActionFlag()V

    :cond_122
    :goto_122
    invoke-virtual {p0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_137

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    if-eqz v5, :cond_137

    invoke-virtual {v5}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isInFalling()Z

    move-result v5

    if-eqz v5, :cond_137

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    invoke-virtual {v5}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetFallenIcons()V

    :cond_137
    if-nez v1, :cond_144

    if-nez v8, :cond_144

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    :cond_144
    if-eqz v4, :cond_15b

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v1

    if-nez v1, :cond_15b

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/g0;

    invoke-direct {v5, v1, v3}, Lcom/android/launcher3/g0;-><init>(Lcom/android/launcher3/OplusWorkspace;I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_15b
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v1, :cond_162

    invoke-interface {v1, v6}, Lcom/android/launcher3/LauncherCallbacks;->onHomeIntent(Z)V

    :cond_162
    if-nez v4, :cond_172

    if-nez v7, :cond_172

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v1

    if-nez v1, :cond_172

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRealmeHiAssistant()Z

    move-result v1

    if-eqz v1, :cond_185

    :cond_172
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_181

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v4

    if-nez v4, :cond_181

    goto :goto_182

    :cond_181
    move v2, v3

    :goto_182
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    :cond_185
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->handleGestureContract(Landroid/content/Intent;)V

    goto :goto_1a8

    :cond_189
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ALL_APPS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    goto :goto_1a8

    :cond_199
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.SHOW_WORK_APPS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a8

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->showAllAppsWorkTabFromIntent(Z)V

    :cond_1a8
    :goto_1a8
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onOneHandedStateChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->onOneHandedModeStateChanged(Z)V

    return-void
.end method

.method public onOverlayVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPageEndTransition()V
    .registers 1

    return-void
.end method

.method public onPause()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->isIconPaperZooming:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_26

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->isHomeKeyPress:Z

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->stopPaperZoom()V

    :cond_26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->isHomeKeyPress:Z

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_3f

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->tryMarkIsInPreDrag()V

    :cond_3f
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v1

    if-eqz v1, :cond_6b

    move-object v1, p0

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getAnimateState()I

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getIsMoveComplete()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-virtual {v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->goBackAnimation()V

    :cond_6b
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v1, :cond_74

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityPaused(Landroid/app/Activity;)V

    :cond_74
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setActivityResumed(Z)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;Landroid/content/Context;)V
    .registers 3

    new-instance p2, Lcom/android/launcher3/d0;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/d0;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->switchOverlay(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .registers 3

    check-cast p1, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onPluginConnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V
    .registers 2

    new-instance p1, Lcom/android/launcher/layout/f;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/f;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->switchOverlay(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onPluginDisconnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f1200c9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    const/16 v4, 0x1000

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f1206b0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/g;

    invoke-direct {v2, v0}, Lcom/android/launcher3/g;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExt:Lcom/android/launcher3/ILauncherExt;

    if-eqz v1, :cond_4e

    invoke-interface {v1, p1, p0, v0}, Lcom/android/launcher3/ILauncherExt;->addKeyboardShortcut(Ljava/util/List;Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_4e
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    const/16 v0, 0xe

    if-ne p1, v0, :cond_50

    if-eqz p2, :cond_50

    invoke-virtual {p2}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result p1

    if-ne p1, v0, :cond_50

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_25

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_26

    :cond_25
    move-object v0, p1

    :goto_26
    invoke-virtual {p2}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object p2

    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_36

    aget p3, p3, v2

    if-nez p3, :cond_36

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    goto :goto_50

    :cond_36
    const p1, 0x7f1203a6

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const p3, 0x7f120211

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_50
    :goto_50
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "Launcher"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onRestoreInstanceState(), stateClassLoader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    if-eqz p1, :cond_3b

    new-instance v1, Lcom/android/common/util/m;

    invoke-direct {v1, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception p0

    const-string p1, " onRestoreInstanceState = "

    invoke-static {p1, p0, v0}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onResume()V
    .registers 6

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onResume"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onResume()V

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v1, :cond_14

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->scheduleDeferredCheck()V

    goto :goto_19

    :cond_14
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityResumed(Landroid/app/Activity;)V

    :goto_19
    const v1, 0x4da274

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    check-cast v2, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getShortcutType()I

    move-result v2

    if-ne v2, v4, :cond_31

    const v1, 0x4da276

    :cond_31
    or-int/2addr v1, v4

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x100

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mIsShowingFamilySpaceUninstall:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_41

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mIsShowingFamilySpaceUninstall:Z

    :cond_41
    invoke-static {p0, v3, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragView;->removeAllViews(Lcom/android/launcher3/views/ActivityContext;)V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDevelopersOptionsEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "development_mode_flag"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/android/launcher3/Launcher$NonConfigInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher$NonConfigInstance;-><init>(Lcom/android/launcher3/Launcher$1;)V

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->config:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LAUNCHER_ACTIVITY_THEME_CROSSFADE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_37

    if-lez v1, :cond_37

    if-lez v2, :cond_37

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v3, p0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher3/OplusDragLayer;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->snapshot:Landroid/graphics/Bitmap;

    :cond_37
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    const-string v1, "launcher.current_screen_ids"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExt:Lcom/android/launcher3/ILauncherExt;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAllAppsViewInSelectState()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/android/launcher3/ILauncherExt;->closeOpenViewsInonSaveInstanceState(Lcom/android/launcher3/views/ActivityContext;ZZLandroid/os/Bundle;)V

    :cond_31
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_3d

    const-string v1, "launcher.request_args"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3d
    iget v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const-string v1, "launcher.request_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_4d

    const-string v1, "launcher.activity_result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4d
    invoke-super {p0, p1}, Lcom/android/launcher3/OplusBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenOff()V
    .registers 4

    const-string/jumbo v0, "onReceive(), screen off, start "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/MemoryWatchDog;->monitorMemory(Landroid/content/Context;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo p0, "onReceive(), screen off, in allapps, return."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/keyguardservice/FastUnlockManager;->onScreenOffReceiver()V

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-nez v0, :cond_66

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onUiChangedWhileSleeping()V

    :cond_42
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_61

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    check-cast v2, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/OplusStateManager;->maybeRestStateInScreenOff()Z

    move-result v2

    if-nez v2, :cond_61

    const-string/jumbo p0, "onReceive(), screen off, is Started in BACKGROUND_APP not reset, return."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_61
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_66
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->immediatelyUpdateFolder(Lcom/android/launcher3/OplusWorkspace;)V

    sget-object p0, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/ReportController;->notifyLauncherFolderHide()V

    :cond_7a
    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/DrawerGuideManager;->cancelAllAnim()V

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSupport()Z

    move-result p0

    if-eqz p0, :cond_8a

    invoke-static {}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->dismissStashedHandleGuidTip()V

    :cond_8a
    const-string/jumbo p0, "onReceive(), screen off, invoke finish."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScreenOn()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->immediatelyUpdateFolder(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_b
    return-void
.end method

.method public onScreenOnChangedLauncher(Z)V
    .registers 2

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onScreenOff()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->backgroundResetWallpaper(Z)V

    goto :goto_11

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onScreenOn()V

    :goto_11
    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    return-void
.end method

.method public onScrollChanged(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusWorkspace;->onOverlayScrollChanged(F)V

    :cond_7
    iput p1, p0, Lcom/android/launcher3/Launcher;->mOverlayScrollProgress:F

    return-void
.end method

.method public onStart()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onStart"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onStart()V

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStarted(Landroid/app/Activity;)V

    :cond_15
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    if-eqz p0, :cond_1d

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setActivityStarted(Z)V

    :cond_1d
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onStateBack()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_18

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p1, v4, :cond_18

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v4, :cond_16

    goto :goto_18

    :cond_16
    move v4, v3

    goto :goto_19

    :cond_18
    :goto_18
    move v4, v2

    :goto_19
    invoke-virtual {v0, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setStateIsNormal(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    sget v4, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v4}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget v0, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {p0, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    if-ne p1, v1, :cond_59

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    :cond_59
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz p1, :cond_8e

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsExitEvent()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/i0;

    invoke-direct {v1, v0, v3}, Lcom/android/launcher3/i0;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    :cond_8e
    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateSetStart(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->scheduleDeferredCheck()V

    :cond_a
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_CLOSE_POPUPS:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExt:Lcom/android/launcher3/ILauncherExt;

    if-eqz v0, :cond_2a

    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAllAppsViewInSelectState()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/launcher3/ILauncherExt;->closeAllOpenViewsOnStateSetStart(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/LauncherState;ZZ)V

    :cond_2a
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_4d

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_4d
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setShouldAutoHide(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    if-eq v0, p1, :cond_c4

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-nez p1, :cond_c4

    new-instance p1, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {p1}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsEntryEvent()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_c4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsEntryEvent()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_c4
    return-void
.end method

.method public bridge synthetic onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStop()V

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    goto :goto_10

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStopped(Landroid/app/Activity;)V

    :goto_10
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->logStopAndResume(Z)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setActivityStarted(Z)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 p0, 0x14

    if-lt p1, p0, :cond_a

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    :cond_a
    return-void
.end method

.method public onWidgetsTransition(F)V
    .registers 2

    return-void
.end method

.method public pauseExpensiveViewUpdates()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->pauseAnimations()V

    return-void
.end method

.method public preAddApps()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-virtual {v0}, Lcom/android/launcher3/model/OplusModelWriter;->commitDelete()V

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_15

    new-instance v0, Lcom/android/launcher3/a3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/a3;-><init>(Lcom/android/launcher3/AbstractFloatingView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    if-eqz p1, :cond_11

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_11
    invoke-static {p2}, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->loadShortcutsFromMetaData(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 2
    .param p1  # Lcom/android/launcher3/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .registers 5

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z
    .registers 8
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_23

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    :goto_23
    if-eqz p3, :cond_82

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    goto :goto_82

    :cond_2d
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_4d

    check-cast p2, Lcom/android/launcher3/model/data/FolderInfo;

    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_3d

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_82

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p4, p1}, Lcom/android/launcher3/model/OplusModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    :cond_4d
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_66

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_82

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object p0

    invoke-virtual {p1, p2, p0, p4}, Lcom/android/launcher3/model/OplusModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;)V

    goto :goto_82

    :cond_66
    instance-of v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_83

    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_74

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->markUnsubscribedOnDetach()V

    :cond_74
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_82

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_82
    :goto_82
    return v1

    :cond_83
    const/4 p0, 0x0

    return p0
.end method

.method public resumeExpensiveViewUpdates()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->skipAnimationsToEnd()V

    return-void
.end method

.method public returnToHomescreen()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->returnToHomescreen()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public runOnOverlayHidden(Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->runOnOverlayHidden(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDismissState(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/Launcher;->mDismissState:I

    return-void
.end method

.method public setEndGestureCallback(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mEndGestureCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    const/4 p0, 0x1

    return p0
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->setOverlayCallbacks(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    return-void
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V
    .registers 2
    .param p1  # Lcom/android/launcher3/util/IntSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    return-void
.end method

.method public setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    return-void
.end method

.method public setWorkspaceLoading(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return-void
.end method

.method public setupViews()V
    .registers 4

    const v0, 0x7f0a0255

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusDragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const v1, 0x7f0a06e9

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusWorkspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->initParentViews(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v0}, Lcom/oplus/launcher/util/LauncherStateSharer;->isWorkspaceInZoom(Lcom/android/launcher3/Workspace;)V

    const v0, 0x7f0a045a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    const v0, 0x7f0a031c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusHotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setWorkspace(Lcom/android/launcher3/Workspace;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/OplusDragLayer;->setup(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/Workspace;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->lockWallpaperToDefaultPage()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const v1, 0x7f0a025a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const v0, 0x7f0a04fd

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ScrimView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

.method public shouldUseColorExtractionForPopup()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public showAllAppsFromIntent(Z)V
    .registers 3

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method

.method public showDefaultOptions(FF)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getPopupTarget(FF)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->iconSurfaceManagerProxy:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->setLastClickedViewId(Landroid/view/View;)V

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    const-string v1, "Launcher"

    const/4 v2, 0x1

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "startActivitySafely and not resumed"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    const-string/jumbo v3, "onDeferredLauncher"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/f0;

    const/4 v9, 0x1

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/f0;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onDeferredActivityLaunch()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :cond_35
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_59

    move-object v7, p0

    check-cast v7, Lcom/android/launcher/Launcher;

    invoke-static {v7}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/l0;

    move-object v5, v1

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/l0;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    return v2

    :cond_59
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setOpeningRemoteAnimWidgetId(I)V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_70

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_71

    :cond_70
    const/4 v3, 0x0

    :goto_71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    :cond_7b
    instance-of v4, p0, Lcom/android/launcher/Launcher;

    const/4 v5, 0x0

    if-eqz v4, :cond_94

    move-object v6, p0

    check-cast v6, Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v6

    iget-object v7, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v3, v7, v5}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isClosingAppSameAsPendingOpenApp(Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_94

    goto :goto_95

    :cond_94
    move v2, v5

    :goto_95
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/e0;

    invoke-direct {v5, p0, v2}, Lcom/android/launcher3/e0;-><init>(Lcom/android/launcher3/Launcher;Z)V

    new-instance v2, Lcom/android/launcher3/f0;

    const/4 v11, 0x2

    move-object v6, v2

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/f0;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-virtual {v3, p0, p2, v5, v2}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_e6

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->needFinishByTwoApp()Z

    move-result v0

    if-eqz v0, :cond_e6

    move-object v0, p0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_e6

    const-string v3, "MultiAppLaunchInterrupt"

    const-string v5, "Finish recent first for double apps interrupt"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-interface {v3, v5}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurfaceSafely(Landroid/view/View;)V

    if-eqz v4, :cond_e6

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/j0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/launcher3/j0;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    const/4 v2, 0x1

    :cond_e6
    if-nez v2, :cond_10b

    sget-object v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    sget-object v4, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->CLOSE_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->isInterruptAnimation([Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;)Z

    move-result v0

    const-string v3, "anim_not_finish"

    if-eqz v0, :cond_104

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_107

    :cond_104
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_107
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    :cond_10b
    const-string/jumbo p2, "startActivitySafely -- success = "

    invoke-static {p2, v2, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v2, :cond_121

    instance-of p2, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p2, :cond_121

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    new-instance p2, Lcom/android/launcher3/t1;

    invoke-direct {p2, p1}, Lcom/android/launcher3/t1;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    :cond_121
    return v2
.end method

.method public startBinding()V
    .registers 5

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string/jumbo v1, "startBinding"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExt:Lcom/android/launcher3/ILauncherExt;

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAllAppsViewInSelectState()Z

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/launcher3/ILauncherExt;->closeOpenViewsInStartBinding(Lcom/android/launcher3/views/ActivityContext;ZZ)V

    :cond_18
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->clearDropTargets()V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    sget-object v2, Lcom/android/launcher3/m0;->b:Lcom/android/launcher3/m0;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    :cond_33
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->removeAllWorkspaceScreens()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->clearViews()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/OplusHotseat;->resetLayout(Z)V

    :cond_4c
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 9

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    :cond_5
    :try_start_5
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    new-instance p0, Landroid/content/ActivityNotFoundException;

    invoke-direct {p0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 6

    if-nez p3, :cond_f

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p4, "source"

    const-string v0, "launcher-search"

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p4, :cond_19

    invoke-interface {p4, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result p4

    if-nez p4, :cond_1d

    :cond_19
    const/4 p4, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :cond_1d
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public stopPaperZoom()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->isIconPaperZooming:Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2d

    const-string v0, "Launcher"

    const-string/jumbo v2, "reset mDragLayer"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_2d
    return-void
.end method

.method public supportsAdaptiveIconAnimation(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateNotificationDots(Ljava/util/function/Predicate;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public updateOpenFolderPosition([ILandroid/graphics/Rect;II)V
    .registers 12

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    iget-boolean v5, v4, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v5, :cond_22

    iget v5, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int v6, v5, p3

    mul-int/lit8 p0, p0, 0x4

    if-ge v6, p0, :cond_22

    sub-int/2addr v5, p3

    div-int/lit8 v1, v5, 0x2

    goto :goto_32

    :cond_22
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lt p3, p0, :cond_32

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    :cond_32
    :goto_32
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lt p4, p0, :cond_43

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    goto :goto_61

    :cond_43
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_61
    aput v1, p1, v0

    aput p2, p1, v2

    return-void
.end method

.method public useFadeOutAnimationForLauncherStart(Landroid/os/CancellationSignal;)V
    .registers 2

    return-void
.end method
