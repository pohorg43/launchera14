.class public Lcom/android/launcher/Launcher;
.super Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.source ""

# interfaces
.implements Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;
.implements Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;
.implements Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;
.implements Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;
    }
.end annotation


# static fields
.field private static final CLEAN_UP_FANCY_ICONS:I = 0x3

.field private static final FADE_IN_SCREEN_ANIM_DURATION:I = 0x87

.field private static final FADE_OUT_SCREEN_ANIM_DURATION:I = 0x50

.field private static final INTENT_EXTRA_BACK_ACTION:Ljava/lang/String; = "back_action"

.field private static final INTENT_EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final METHOD_REQUEST_LOCATE_ITEM_INFO:Ljava/lang/String; = "request_locate_item_info"

.field private static final MIME_TYPE_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final PAK_NAME_GOOGLE_PACK_INSTALLER:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final PAK_NAME_PACK_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PAUSE_FANCY_ICONS:I = 0x2

.field private static final PROFILE_ACTIVITY_CREATE:Z = false

.field private static final REMOVE_GHOST_WIDGETS_DELAY:I = 0x1f4

.field private static final RESUME_FANCY_ICONS:I = 0x1

.field private static final RUNTIME_STATE_ALL_APPS_PRE_QUERY:Ljava/lang/String; = "launcher.all_apps.pre_query"

.field private static final RUNTIME_STATE_ALL_APPS_SEARCH_FOCUS:Ljava/lang/String; = "launcher.all_apps.search_focus"

.field private static final SETTINGS_KEY_HAS_HIDE_DRAGLAYER:Ljava/lang/String; = "has_hide_draglayer"

.field private static final SNAP_TO_PAGE_ON_WIDGET_ADDED_DELAY:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "OLauncher"

.field private static final TRACE_SETUP_VIEWS:Ljava/lang/String; = "setupViews"

.field private static final UPDATE_PREDICTED_TIME_WHEN_UPDATE:J = 0x320L


# instance fields
.field private hasCheckWorkspacePadding:Z

.field private isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isRemoveAppwidgetSuccesful:Z

.field private mAppCounts:I

.field private mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

.field private mAppUpdateDotChangeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

.field private mAreaWidgetTransformViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

.field private mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

.field public mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

.field private mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

.field private mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

.field public mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/android/launcher3/OplusBubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mDockviewPanel:Landroid/view/View;

.field private mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

.field private mExitChildrenModeView:Landroid/widget/TextView;

.field private mFindLocateIconFunction:Lcom/android/launcher/locateaction/FindLocateIconFunction;

.field private mFindView:Landroid/view/View;

.field private mFloatingIconContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

.field private mFloatingIconSurfaceContainerView:Landroid/view/SurfaceView;

.field private mFromApp:Z

.field public mGuidePageManager:Lcom/android/launcher/guide/GuidePageManager;

.field private mHasBindFirstPage:Z

.field private mHoldFolderOpen:Z

.field private mHoldFolderOpenForWorkEdu:Z

.field private mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

.field private mIsDrawerLocation:Z

.field private mIsFirstLocateAndDrag:Z

.field private mIsHandlingConfigurationChanged:Z

.field private mIsMultiWindowModeChanged:Z

.field private mIsSwitchingLayout:Z

.field public mIsUserUnlocked:Z

.field private mIsWidgetTouchResizeEnable:Z

.field private mKeyEventDownInOverviewTablet:Z

.field private mLastActivityConfiguration:Landroid/content/res/Configuration;

.field private mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

.field private mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

.field private mLoadingView:Landroid/view/View;

.field private mLocationMessage:Ljava/lang/String;

.field private mNewIntentTask:Ljava/lang/Runnable;

.field private final mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOplusCleanStorageLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

.field private final mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOplusOnResumeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayAvailableTask:Ljava/lang/Runnable;

.field private mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

.field private mPendingTaskOnStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPullDownDetectController:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

.field private mReInflateWidgetsTask:Ljava/lang/Runnable;

.field private mRecentContainer:Lcom/android/launcher3/RecentContainerView;

.field private mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

.field private mState:I

.field private mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

.field private mSwitchChildrenModeLoading:Z

.field private mTaskViewContainer:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

.field private mTaskViewManager:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

.field private mToast:Landroid/widget/Toast;

.field private mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

.field private mTouchInProgress:Z

.field private mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

.field private mUncaughtExceptionHandler:Lcom/android/launcher/MyUncaughtExceptionHandler;

.field private mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private mVerifyIconChanged:Z

.field private mVisible:Z

.field private mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

.field private mWorkspaceScrim:Lcom/android/launcher3/views/WorkSpaceScrimView;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHasBindFirstPage:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsMultiWindowModeChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->isRemoveAppwidgetSuccesful:Z

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/Launcher;->mLastActivityConfiguration:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpenForWorkEdu:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsWidgetTouchResizeEnable:Z

    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/launcher/Launcher;->mAppCounts:I

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mSwitchChildrenModeLoading:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/launcher/Launcher;->isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsSwitchingLayout:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mToast:Landroid/widget/Toast;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mOplusOnResumeCallbacks:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->hasCheckWorkspacePadding:Z

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsDrawerLocation:Z

    iput-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsFirstLocateAndDrag:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mFromApp:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/Launcher;->mState:I

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mVerifyIconChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsHandlingConfigurationChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mKeyEventDownInOverviewTablet:Z

    new-instance v0, Lcom/android/launcher/z;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/Launcher;I)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayAvailableTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/common/util/j0;-><init>(Lcom/android/launcher/Launcher;I)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mReInflateWidgetsTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-void
.end method

.method public static synthetic A0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$45(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$disbandFolder$27()V

    return-void
.end method

.method public static synthetic C0(ILjava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$40(ILjava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic D0(Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$createSecurityHintDialog$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic E0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$bindAppWidgetRemove$22(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic F0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$new$33()V

    return-void
.end method

.method public static synthetic G0(ZLjava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$executeAllOplusOnFocusCallbacks$48(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic H0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onChildrenModeChanged$15()V

    return-void
.end method

.method public static synthetic I0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onUserUnlocked$19()V

    return-void
.end method

.method public static synthetic J0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$initSimpleModeObserver$36()V

    return-void
.end method

.method public static synthetic K0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic L(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$dump$17(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic L0()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/Launcher;->lambda$onConfigurationChanged$5()V

    return-void
.end method

.method public static synthetic M(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItemsInner$7()V

    return-void
.end method

.method public static synthetic N(Lcom/android/launcher/Launcher;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$resumeFancyIcons$11(I)V

    return-void
.end method

.method public static synthetic O(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic P(Lcom/android/launcher/Launcher;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$grantBindAppWidgetPermission$35(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic R(Lcom/android/launcher/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$notifyUninstallEndAction$28(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic S(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onAllActivityListUpdate$51()V

    return-void
.end method

.method public static synthetic T(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$46(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/android/launcher/model/ChildrenModeManager;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$bindExitChildrenModeIcon$13(Lcom/android/launcher/model/ChildrenModeManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$41(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic W(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$42(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic X(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$43(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Y(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$setDragListener$34()V

    return-void
.end method

.method public static synthetic Z(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$disbandFolder$24(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic a0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onWorkspaceHighTemperatureProtectionStateChange$38()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/statemanager/StateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/Launcher;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/BaseActivity;->mIsPaused:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/android/launcher/Launcher;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->isHomeKeyPress:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/ILauncherLifecycleObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->showUninstallPanel()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->dismissEncryptedHintDialog()V

    return-void
.end method

.method public static synthetic access$701(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/dragndrop/IDragEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

    return-object p0
.end method

.method public static synthetic access$901(Lcom/android/launcher/Launcher;F)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onScrollChanged(F)V

    return-void
.end method

.method private addStaticBlurView()V
    .registers 5

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "OLauncher"

    const-string v1, "addStaticBlurView"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/views/OplusStaticBlurView;

    invoke-direct {v0, p0}, Lcom/android/launcher/views/OplusStaticBlurView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setStaticBlurView(Lcom/android/launcher/views/OplusStaticBlurView;)V

    :cond_30
    return-void
.end method

.method public static synthetic b0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Landroid/util/Pair;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->lambda$disbandFolder$26(Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Landroid/util/Pair;Landroid/view/View;)V

    return-void
.end method

.method private bindExitChildrenModeIcon()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    invoke-virtual {v1, v2}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    :cond_12
    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    invoke-direct {p0, v1}, Lcom/android/launcher/Launcher;->inflateExitChildrenModeView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    new-instance v0, Lcom/android/launcher/u;

    invoke-direct {v0, v2}, Lcom/android/launcher/u;-><init>(Lcom/android/launcher/model/ChildrenModeManager;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4f

    :cond_3d
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public static synthetic c0(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->lambda$removeWidgetWithAnimate$30(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private checkInputConsumerAbnormal(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_f

    invoke-static {}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->checkInputConsumerAbnormal(Landroid/view/MotionEvent;)V

    :cond_f
    return-void
.end method

.method private containsAppWidget(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_22

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_e

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    const/4 p0, 0x1

    :cond_22
    :goto_22
    return p0
.end method

.method private createSecurityHintDialog()Landroidx/appcompat/app/AlertDialog;
    .registers 12

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/support/appcompat/R$style;->COUIAlertDialog_BottomWarning:I

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b()V

    const v1, 0x7f120532

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_b9

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "app_lock_path_resid"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f12052a

    if-eqz v1, :cond_b5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "settingsLock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OLauncher"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_4c
    array-length v8, v1

    if-ge v7, v8, :cond_75

    const-string/jumbo v8, "settingsLockId:"

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v7

    invoke-static {v8, v9, v5}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v8, v1, v7

    const-string/jumbo v9, "string"

    const-string v10, "com.android.settings"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher/Launcher;->querySecurityDialogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    sub-int/2addr v8, v2

    if-ge v7, v8, :cond_72

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_75
    const-string/jumbo v1, "settingsRoute:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12052d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->h(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    goto :goto_bf

    :cond_b1
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    goto :goto_bf

    :cond_b5
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    goto :goto_bf

    :cond_b9
    const v1, 0x7f12052b

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->g(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :goto_bf
    const v1, 0x7f120531

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/launcher/Launcher$6;

    invoke-direct {v3, p0}, Lcom/android/launcher/Launcher$6;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v1, 0x7f120193

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/launcher/n;

    invoke-direct {v3, p0}, Lcom/android/launcher/n;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItemsInner$10()V

    return-void
.end method

.method private dismissEncryptedHintDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_a
    return-void
.end method

.method private dumpImportantInfo(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    const-string v3, "="

    if-ge v2, v0, :cond_17

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "CUSTOM"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_28
    if-ge v1, v0, :cond_30

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_30
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/Launcher;->dumpLauncherStatus(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/Launcher;->dumpLauncherConfiguration(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/Launcher;->dumpViewVisibility(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/Launcher;->dumpLauncherAnimationLevelInfo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {p1, p3}, Lcom/android/common/config/ScreenInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/util/DisplayController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dumpLauncherAnimationLevelInfo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LauncherAnimationLevelInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tAnimationLevelInfo = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getPlatformLevelInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpLauncherConfiguration(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LauncherConfiguration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tconfiguration = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpLauncherStatus(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Launcher Status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tLauncher requested orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tLauncher Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/common/config/VersionInfo;->getLauncherVersionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tCurrent state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v1}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tCurrent page count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tActivity configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tApplication configuration: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppConfig()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpTimeConsumingInfo(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    const-string v0, "\n\n"

    invoke-static {v0, p1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    const-string v6, "="

    if-ge v5, v3, :cond_19

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SUPER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v5, v4

    :goto_2b
    if-ge v5, v3, :cond_33

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->access$701(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v4

    :goto_4e
    if-ge v2, v3, :cond_56

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_67
    if-ge v4, v3, :cond_6f

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    :cond_6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mRecentContainer:Lcom/android/launcher3/RecentContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/RecentContainerView;->getMRecentView()Lcom/android/quickstep/views/LauncherRecentsView;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {p4}, Lcom/android/common/debug/LogUtils;->onLauncherDump([Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/DumpLogHelper;->INSTANCE:Lcom/android/launcher3/DumpLogHelper;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/DumpLogHelper;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v0, p1, p3}, Lcom/oplus/launcher/overlay/RROverlayManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher/download/DownloadAppsManager;->dumpDownloadAppInfo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-static {p1, p3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->dumpFolderRecommendInfo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_a6
    invoke-static {p1, p3}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {p1, p3}, Lcom/android/launcher/backup/util/ShortcutUtils;->dumpShortcuts(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/OplusLauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/android/common/util/OplusLauncherDbUtils;->dumpDataBase(Ljava/lang/String;Ljava/io/PrintWriter;)V

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0, p3}, Lcom/oplus/quickstep/navigation/NavigationController;->dump(Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/TouchInteractionService;

    if-eqz p1, :cond_cd

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/quickstep/TouchInteractionService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_cd
    return-void
.end method

.method private dumpViewVisibility(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "View Display Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tLauncherRootView Alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tDragLayer Alpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tWorkspace Alpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_9d
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    const/16 v2, -0x64

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_f4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tCellLayout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Alpha="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9d .. :try_end_dc} :catch_dd

    goto :goto_f4

    :catch_dd
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch IndexOutOfBoundsException："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OLauncher"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f4
    :goto_f4
    const/16 v0, -0x65

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_11b

    const-string v0, "\tHotseat Alpha="

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11b
    return-void
.end method

.method public static synthetic e0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItems$6()V

    return-void
.end method

.method private executeTaskRelyOnStarted(Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void
.end method

.method public static synthetic f0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onUserUnlocked$20()V

    return-void
.end method

.method private finishBindingItemsInner(Lcom/android/launcher3/util/IntSet;)V
    .registers 12

    const-string v0, "finishBindingItems -- isLandscape = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v1}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    invoke-static {p0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->initFolderContentRecommendEnable(Landroid/content/Context;)V

    sget-object p1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {p1}, Lcom/oplus/launcher/overlay/RROverlayManager;->checkOverlayStatus()V

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLauncherFinishBindFlag(Z)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string v2, "Hotseat_expand"

    const-string v3, "finishBindingItems setEnableUpdateExpandFlag:true"

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateAppConnectExpandDataIfNeeded(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->restoreSimpleModeChangeState(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->refreshCardsResumeStateIfNeed()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/OplusWorkspace;->refreshIndicatorForExposure(I)V

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_79

    iget-object v4, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    invoke-virtual {v4}, Lcom/android/launcher/pagepreview/PagePreviewManager;->updatePagePreviewItems()V

    :cond_79
    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_8e

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v4

    if-nez v4, :cond_8e

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/launcher3/OplusWorkspace;->setAlpha(F)V

    :cond_8e
    iget-object v4, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/common/util/o0;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lcom/android/common/util/o0;-><init>(Lcom/android/launcher/Launcher;I)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v4

    if-eqz v4, :cond_c6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->isExitSimpleMode()Z

    move-result v5

    if-nez v5, :cond_c6

    const-string/jumbo v5, "update hotseat data and state"

    invoke-static {v1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-static {v4}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->updateAllChildLayoutParams(Lcom/android/launcher3/OplusHotseat;)V

    :cond_c3
    invoke-virtual {v4}, Lcom/android/launcher3/OplusHotseat;->updateHotseatDataState()V

    :cond_c6
    iput-boolean v3, p0, Lcom/android/launcher/Launcher;->mSwitchChildrenModeLoading:Z

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v5

    if-nez v5, :cond_e1

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v5

    if-nez v5, :cond_e1

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    :cond_e1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/AppLimitedStartUpManager;->forceBindLimitedApp()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->initWallpaper()V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher3/OplusWorkspace;->checkCurrentPageVisibility()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/OplusDragLayer;->setRecreateControllersFromFinishBindingItems()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/OplusDragLayer;->recreateControllers()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->recreateStateHandlers()V

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v8

    if-nez v8, :cond_120

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v8

    if-nez v8, :cond_120

    sget-object v8, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showStatusBar(Landroid/view/Window;)V

    :cond_120
    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher/download/DownloadAppsManager;->finishBindingItems()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v8, :cond_142

    invoke-virtual {p0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v8

    if-nez v8, :cond_13b

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_142

    :cond_13b
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v8, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_142
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v8, v2, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v8, :cond_14f

    check-cast v2, Lcom/android/launcher/LauncherCallbacksImp;

    const-string v8, "finishBindingItems"

    invoke-virtual {v2, v8}, Lcom/android/launcher/LauncherCallbacksImp;->connectAssist(Ljava/lang/String;)V

    :cond_14f
    invoke-static {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/pkg/PackageDeleteManager;->init()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/guide/GuidePageManager;->showAppGuideViewIfNeeded()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object v2

    if-eqz v2, :cond_16a

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->onLauncherFinishBinding(Lcom/android/launcher/Launcher;)V

    :cond_16a
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v2

    if-eqz v2, :cond_186

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v8, "launcher.apps_view_shown"

    invoke-interface {v2, v8, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_186

    const-string p0, "enter drawer mode for the first time, do not perform GC collection operation for animation"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_186
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initFirstLauncherBitmap()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    if-eqz v2, :cond_19a

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    if-eqz v2, :cond_19a

    instance-of v2, v2, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v2, :cond_19a

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->updateDragLayerTranslationX()V

    :cond_19a
    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v2, :cond_1a7

    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/android/launcher/shimmer/IconShimmerManager;->checkToShimmer(I)V

    :cond_1a7
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    if-ne v2, v5, :cond_1b8

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    sget-object v5, Lcom/android/launcher/k;->b:Lcom/android/launcher/k;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    :cond_1b8
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {v2, p0, v3}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/launcher3/ota/AddCardManager;->shouldAddSimpleGuidCard(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherModel;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/ota/AddCardManager;->buildSimpleGuidCardInfo()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/launcher3/ota/AddCardManager;->markAddSimpleGuidCardDone(Landroid/content/Context;)V

    :cond_1d9
    sget-object v2, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->sendUpdateShortcutBroadcast()V

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v2, :cond_1ef

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->getEnableAddShortcutByGameCenter()Z

    move-result v2

    if-eqz v2, :cond_1ef

    sget-object v2, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomManagerInjector;

    invoke-virtual {v2, v0, p0}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->requestAddShortcut(ZLandroid/content/Context;)V

    :cond_1ef
    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager;->getCreateWithEmptyConfig()Z

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_20b

    const-string v2, "finishBindingItems, CreateWithEmptyConfig, checkInvalidAndNoPermissionCard."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v8, Lcom/android/exceptionmonitor/util/a;

    invoke-direct {v8, p0, v5}, Lcom/android/exceptionmonitor/util/a;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20b
    sget-object v2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    const-string v6, "finishBindingItems: isUserUnlocked = "

    invoke-static {v6, v2, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v2, :cond_22c

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher/a0;

    invoke-direct {v2, p0, v5}, Lcom/android/launcher/a0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_22c
    if-eqz v4, :cond_231

    invoke-virtual {v4, v0}, Lcom/android/launcher3/OplusHotseat;->setVisibleForTaskbarIconAlign(Z)V

    :cond_231
    invoke-virtual {p1, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLauncherOnBinding(Z)V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result p1

    if-eqz p1, :cond_246

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->checkNewsPageIsExit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_246
    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_255

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    if-eqz p1, :cond_255

    invoke-virtual {p1}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetFallenIcons()V

    :cond_255
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_262

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_262
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/model/LoaderStateHelper;->setFinishWorkspaceBind(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_288

    sget-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p1}, Lcom/android/launcher/guide/DrawerGuideManager;->getMSwitchDrawer()Z

    move-result v0

    if-eqz v0, :cond_288

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/guide/DrawerGuideManager;->showDrawerGuide(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    :cond_288
    return-void
.end method

.method public static synthetic g0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItemsInner$9()V

    return-void
.end method

.method private getAppInfoInList(Ljava/util/Map;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")",
            "Lcom/android/launcher3/model/data/AppInfo;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, p0

    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz p2, :cond_26

    new-instance p0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    :cond_26
    return-object p0
.end method

.method private varargs getFirstMatchForAllAppsView([Ljava/util/function/Predicate;)Landroid/view/View;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    const-string v1, "OLauncher"

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "Get null parent view while match for all apps view"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_27

    move v4, v5

    goto :goto_2b

    :cond_27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    :goto_2b
    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v6, v3

    move v3, v5

    :goto_37
    array-length v7, p1

    if-ge v3, v7, :cond_b1

    aget-object v7, p1, v3

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v8

    const-class v9, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/appprediction/PredictionRowView;

    if-eqz v8, :cond_7f

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_7f

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_7f

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    move v10, v5

    :goto_69
    if-ge v10, v9, :cond_7f

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v7, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7c

    goto :goto_80

    :cond_7c
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    :cond_7f
    move-object v11, v2

    :goto_80
    if-eqz v11, :cond_89

    invoke-direct {p0, v11, v4, v6}, Lcom/android/launcher/Launcher;->isMatchViewVisible(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_ae

    return-object v11

    :cond_89
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v9, v5

    :goto_8e
    if-ge v9, v8, :cond_a5

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v7, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a2

    move-object v11, v10

    goto :goto_a5

    :cond_a2
    add-int/lit8 v9, v9, 0x1

    goto :goto_8e

    :cond_a5
    :goto_a5
    if-eqz v11, :cond_ae

    invoke-direct {p0, v11, v4, v6}, Lcom/android/launcher/Launcher;->isMatchViewVisible(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_ae

    return-object v11

    :cond_ae
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_b1
    const-string p0, "Get null not found view for all apps"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static getLauncher(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher/Launcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher/Launcher;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")TT;"
        }
    .end annotation

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;
    .registers 4
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLauncherOrNull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " catch "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OLauncher"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic h0(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$rebindWidgetsWhenUserUnlocked$21(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private hideDragLayerIfNeeded()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "has_hide_draglayer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const-string v0, "OLauncher"

    const-string v1, "hide draglayer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusDragLayer;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method public static synthetic i0(Lcom/android/launcher/Launcher;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$onSplitModeChanged$50(Z)V

    return-void
.end method

.method private inflateExitChildrenModeView(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->updateExitChildrenModeIconStyle(Landroid/widget/TextView;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    :goto_22
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-object p1
.end method

.method private initFirstLauncherBitmap()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->createLauncherBitmap(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private initOverLayScrollSpring()V
    .registers 4

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/launcher/Launcher$10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/Launcher$10;-><init>(Lcom/android/launcher/Launcher;F)V

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43fa0000  # 500.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v0, 0x3c23d70a  # 0.01f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method private initSimpleModeObserver()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "OLauncher"

    const-string/jumbo v0, "not support SimpleMode"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initViewPool()V
    .registers 8

    const-string v0, "OLauncher"

    const-string v1, "initViewPool"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewPool;->cancel()V

    :cond_e
    new-instance v0, Lcom/android/launcher3/util/ViewPool;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const v4, 0x7f0d0044

    const/16 v5, 0x1f4

    iget v6, p0, Lcom/android/launcher/Launcher;->mAppCounts:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;

    return-void
.end method

.method private isAccessibilityServiceEnable()Z
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private isDeviceOwnerOrActiveAdmins(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    const-string p1, "isDeviceOwnerOrActiveAdmins ---> flag = "

    const-string v0, "OLauncher"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private isLastStartFromWidget()Z
    .registers 2

    sget-object p0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    invoke-virtual {p0}, Lcom/android/common/util/StartActivityCookieHelper;->getMStartItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/common/util/StartActivityCookieHelper;->getMStartItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    const/16 v0, 0x63

    if-ne p0, v0, :cond_17

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private isMatchViewVisible(Landroid/view/View;II)Z
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    add-int/2addr v0, v2

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "view is obscured"

    const-string v6, "OLauncher"

    if-eqz v3, :cond_42

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/appprediction/PredictionRowView;

    if-eqz v3, :cond_42

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    aget p1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p1

    if-ge v2, p0, :cond_52

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_52

    if-lt v2, p2, :cond_4e

    if-le v0, p3, :cond_52

    :cond_4e
    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_52
    return v1
.end method

.method private isSameItemId(I)Z
    .registers 4

    sget-object p0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    invoke-virtual {p0}, Lcom/android/common/util/StartActivityCookieHelper;->getMStartItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/common/util/StartActivityCookieHelper;->getMStartItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne p1, p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static synthetic j0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onCreate$3()V

    return-void
.end method

.method public static synthetic k0(Lcom/android/launcher/Launcher;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$addWidgetFromToggleItemOps$16(I)V

    return-void
.end method

.method public static synthetic l0(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$disbandFolder$25(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private synthetic lambda$addWidgetFromToggleItemOps$16(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private synthetic lambda$bindAppWidgetAdd$23(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    goto :goto_30

    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusWorkspace;->setUpdateAlphaValueAfterAddWidget(Z)V

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->setCurrentPage(I)V

    :goto_30
    return-void
.end method

.method private synthetic lambda$bindAppWidgetRemove$22(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 14

    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_32

    iget-object p1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "Widget"

    const-string v0, "OLauncher"

    const-string v1, "bindAppWidgetRemove remove widget"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZLjava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->isRemoveAppwidgetSuccesful:Z

    return p1

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$bindExitChildrenModeIcon$13(Lcom/android/launcher/model/ChildrenModeManager;Landroid/view/View;)V
    .registers 3

    const-string p1, "OLauncher"

    const-string v0, "Start to quit children mode."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {p1}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher/model/ChildrenModeManager;->exitChildrenMode()V

    return-void
.end method

.method private synthetic lambda$createSecurityHintDialog$14(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->dismissEncryptedHintDialog()V

    return-void
.end method

.method private static synthetic lambda$disbandFolder$24(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$disbandFolder$25(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 5

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p2

    if-eqz p2, :cond_2c

    instance-of p2, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p2, :cond_2c

    const-string p2, "Folder"

    const-string v0, "OLauncher"

    const-string v1, "disbandFolder: fillUpEmptyCell"

    invoke-static {p2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    const/4 v1, 0x0

    aput v0, p2, v1

    iget p0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x1

    aput p0, p2, v0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    :cond_2c
    return-void
.end method

.method private synthetic lambda$disbandFolder$26(Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Landroid/util/Pair;Landroid/view/View;)V
    .registers 5

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/folder/DisbandFolderHelper;->batchBindItemToEmptyPoint(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Ljava/util/List;)V

    if-eqz p4, :cond_17

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p0

    if-eqz p0, :cond_17

    instance-of p0, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusCellLayout;->fillEmptyAfterCreateOrAddToFolder(Z)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$disbandFolder$27()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->setReorderAnimating(Z)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$dump$17(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getDumpPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher/Launcher;->dumpTimeConsumingInfo(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->flushDump()V

    return-void
.end method

.method private static synthetic lambda$executeAllOplusOnFocusCallbacks$48(ZLjava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$finishBindingItems$6()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher/ILauncherLifecycleObserver;->onLauncherItemsFinishBinding()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$finishBindingItemsInner$10()V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher/widget/GlobalSearchWidgetHelper;->checkAndAddGlobalSearch(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$finishBindingItemsInner$7()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/OplusModelWriter;->removeGhostWidgets()V

    return-void
.end method

.method private static synthetic lambda$finishBindingItemsInner$8(Landroid/view/View;)V
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishBindingItems in toggle bar. set alpha with 1 to current page. cellLayout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    :cond_25
    return-void
.end method

.method private synthetic lambda$finishBindingItemsInner$9()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->checkInvalidAndNoPermissionCard()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/card/manager/domain/CardManager;->setCreateWithEmptyConfig(Z)V

    :cond_17
    return-void
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$39(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    if-eqz p1, :cond_11

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v0, p0, :cond_11

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_f

    const/16 p1, 0x63

    if-ne p0, p1, :cond_11

    :cond_f
    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$40(ILjava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p3, :cond_2e

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v1, p0, :cond_2e

    iget p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p0, :cond_11

    if-eq p0, v0, :cond_11

    const/16 v1, 0xca

    if-ne p0, v1, :cond_2e

    :cond_11
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2e

    iget-object p0, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$41(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$42(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p0, :cond_f

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$43(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    instance-of v0, p3, Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    check-cast p3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result p0

    if-eqz p0, :cond_33

    aget-object p0, p1, v1

    if-nez p0, :cond_33

    aput-object v2, p1, v1

    iget-object p0, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    aput p0, p2, v1

    :cond_33
    const/4 p0, 0x1

    return p0

    :cond_35
    return v1
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$44(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    instance-of v0, p3, Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    check-cast p3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result p0

    if-eqz p0, :cond_33

    aget-object p0, p1, v1

    if-nez p0, :cond_33

    aput-object v2, p1, v1

    iget-object p0, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    aput p0, p2, v1

    :cond_33
    const/4 p0, 0x1

    return p0

    :cond_35
    return v1
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$45(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_28

    :cond_a
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    if-ne v1, v2, :cond_28

    :cond_11
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    move v0, v2

    :cond_28
    :goto_28
    return v0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$46(Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private synthetic lambda$grantBindAppWidgetPermission$35(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getInnerManager()Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    const-string p1, "grantBindAppWidgetPermission, exception = "

    const-string v0, "OLauncher"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$initSimpleModeObserver$36()V
    .registers 7

    const-string v0, "OLauncher"

    iget-object v1, p0, Lcom/android/launcher/Launcher;->isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    :try_start_d
    new-instance v3, Lcom/android/launcher/LauncherSimpleModeObserver;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher/LauncherSimpleModeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "simple_mode_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "refreshLauncherMode"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/common/util/LauncherModeUtil;->INSTANCE:Lcom/android/common/util/LauncherModeUtil;

    invoke-static {p0}, Lcom/android/common/util/LauncherModeUtil;->refreshLauncherMode(Landroid/content/Context;)V

    const-string/jumbo v3, "refreshLauncherMode end"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_35} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_35} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_35} :catch_36

    goto :goto_52

    :catch_36
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSimpleModeObserver error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    iget-object p0, p0, Lcom/android/launcher/Launcher;->isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_52
    :goto_52
    return-void
.end method

.method private synthetic lambda$new$32()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/common/util/DisplayUtils;->updateIdpAndRefreshLauncher(Lcom/android/launcher/Launcher;Z)Z

    return-void
.end method

.method private synthetic lambda$new$33()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    check-cast p0, Lcom/android/launcher3/OplusLauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherAppWidgetHost;->reInflateAllHostView()V

    return-void
.end method

.method private synthetic lambda$notifyUninstallEndAction$28(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updateSelectedViewListAfterPackageDeleted(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_27

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isAllAppsViewInSelectState()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->updateSelectedViewListAfterPackageDeleted(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_27
    :goto_27
    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    :cond_32
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v0, :cond_4d

    invoke-virtual {p0, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_4d

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManager;->refreshBranchSuggestedLinksAndHints(Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method private synthetic lambda$onAllActivityListUpdate$51()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initViewPool()V

    return-void
.end method

.method private synthetic lambda$onAppsLimitedStateChange$18(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->updateAppLimitedState(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onBusEvent$37()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-nez v0, :cond_e

    return-void

    :cond_e
    check-cast p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->clickItem()V

    return-void
.end method

.method private synthetic lambda$onChildrenModeChanged$15()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->recreateControllers()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    const-string v1, "childrenMode"

    invoke-virtual {v0, v1}, Lcom/android/launcher/LauncherCallbacksImp;->connectAssist(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->startBinding()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateInsetForChildrenMode()V

    return-void
.end method

.method private static synthetic lambda$onConfigurationChanged$4(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 3

    const-string/jumbo v0, "onLauncherPageConfigChange"

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->onLauncherConfigChange(Landroid/content/res/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onConfigurationChanged$5()V
    .registers 1

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper;->onConfigurationChange()V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->updateGlobalSearchSwitchValue(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/search/SearchEntry;->updatePageIndicatorSearchSwitchValue(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setGlobleSearchName(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/MemoryWatchDog;->pushStatistics(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$3()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->resetWallpaperSize()V

    return-void
.end method

.method private synthetic lambda$onHotSeatFinishBinding$31()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher/ILauncherLifecycleObserver;->onHotSeatFinishBinding()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onSplitMinimizeModeChanged$49()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->finishIconAlignmentAnimation()V

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_49

    sget-object p0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_49

    const-string/jumbo p0, "onSplitMinimizeModeChanged(), minimize, reset BACKGROUND_APP to "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OLauncher"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    if-eqz p0, :cond_46

    check-cast v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/OplusStateManager;->forceMoveToRestState()V

    goto :goto_49

    :cond_46
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :cond_49
    :goto_49
    return-void
.end method

.method private synthetic lambda$onSplitModeChanged$50(Z)V
    .registers 7

    if-eqz p1, :cond_7

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_32

    instance-of v2, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_32

    const-string v2, "Common"

    const-string v3, "OLauncher"

    const-string/jumbo v4, "reload shortcut icon because of the split screen mode changed"

    invoke-static {v2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon()V

    :cond_32
    if-eqz p1, :cond_44

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-eq v1, p1, :cond_3c

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, p1, :cond_44

    :cond_3c
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_44
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->updatePageIndicatorForSplit()V

    return-void
.end method

.method private synthetic lambda$onUserUnlocked$19()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v0, p0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    const-string/jumbo v0, "userUnlock"

    invoke-virtual {p0, v0}, Lcom/android/launcher/LauncherCallbacksImp;->connectAssist(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$onUserUnlocked$20()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->checkLimitedAppOnUserUnlocked()V

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->checkHiddenAppsOnUserUnlocked()V

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->checkHiddenGameAppsOnUserUnlocked()V

    invoke-static {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setGlobleSearchName(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p0

    if-eqz p0, :cond_2d

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->updateGlobalSearchState()V

    :cond_2d
    return-void
.end method

.method private synthetic lambda$onWorkspaceHighTemperatureProtectionStateChange$38()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->updateHighTemperatureProtectionState()V

    return-void
.end method

.method private synthetic lambda$pauseFancyIcons$12()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->updateFancyIcons(I)V

    return-void
.end method

.method private static synthetic lambda$rebindWidgetsWhenUserUnlocked$21(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 7

    instance-of v0, p3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rebindWidgetsWhenUserUnlocked, view :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Widget"

    const-string v2, "OLauncher"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    check-cast p3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$removeItem$29(ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-eqz p1, :cond_8

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    goto :goto_e

    :cond_8
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->markUnsubscribedOnDetach()V

    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->removeWorkspaceItem(Landroid/view/View;Z)V

    if-eqz p4, :cond_31

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p2

    move-object p3, p5

    check-cast p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p6, p7}, Lcom/android/launcher3/model/OplusModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p2

    invoke-static {p5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3, p6, p7}, Lcom/android/launcher3/model/OplusModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_31
    iget-object p2, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p2, p5}, Lcom/android/launcher/togglebar/ToggleBarManager;->onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_48

    iget-object p2, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    invoke-virtual {p2}, Lcom/android/launcher/pagepreview/PagePreviewManager;->updatePagePreviewItems()V

    :cond_48
    if-eqz p1, :cond_4f

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p0}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_4f
    return-void
.end method

.method private static synthetic lambda$removeWidgetWithAnimate$30(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$resumeFancyIcons$11(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_11

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    :cond_11
    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->updateFancyIcons(I)V

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void
.end method

.method private synthetic lambda$setDragListener$34()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-interface {v1, p0}, Lcom/android/launcher3/dragndrop/IDragCallback;->sendCardInfoList(Ljava/util/List;)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1b

    sget-object p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->initOneHandedMode()V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private synthetic lambda$showAllAppsFromIntent$47(ZLjava/lang/Boolean;)Lh4/z;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showAllAppsFromIntent switch to drawer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->showAllAppsFromIntent(Z)V

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private listenHomeKey()V
    .registers 3

    new-instance v0, Lcom/android/launcher/HomeKeyObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher/HomeKeyObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    new-instance v1, Lcom/android/launcher/Launcher$4;

    invoke-direct {v1, p0}, Lcom/android/launcher/Launcher$4;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/HomeKeyObserver;->setHomeKeyListener(Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    invoke-virtual {p0}, Lcom/android/launcher/HomeKeyObserver;->startListen()V

    return-void
.end method

.method public static synthetic m0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$new$32()V

    return-void
.end method

.method private mapOverCellLayout(Ljava/util/Map;Lcom/android/launcher3/CellLayout;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Lcom/android/launcher3/CellLayout;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_6a

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v5, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v5, :cond_4e

    instance-of v5, v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v5, :cond_4e

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v5, :cond_67

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_32
    if-ge v6, v5, :cond_48

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, p1, v8}, Lcom/android/launcher/Launcher;->getAppInfoInList(Ljava/util/Map;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v9

    if-eqz v9, :cond_45

    iget-boolean v7, v9, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    iput-boolean v7, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    const/4 v7, 0x1

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_48
    if-eqz v7, :cond_67

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->updatePreview()V

    goto :goto_67

    :cond_4e
    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v5, :cond_67

    instance-of v5, v3, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v5, :cond_67

    invoke-direct {p0, p1, v4}, Lcom/android/launcher/Launcher;->getAppInfoInList(Ljava/util/Map;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v5

    if-eqz v5, :cond_67

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-boolean v5, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    iput-boolean v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusBubbleTextView;->applyLimitedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_6a
    return-void
.end method

.method private mapOverItems(Ljava/util/Map;[Lcom/android/launcher3/CellLayout;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;[",
            "Lcom/android/launcher3/CellLayout;",
            ")V"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p2, v1

    if-eqz v2, :cond_b

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/Launcher;->mapOverCellLayout(Ljava/util/Map;Lcom/android/launcher3/CellLayout;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method private mapOverItems([Lcom/android/launcher3/CellLayout;)V
    .registers 12

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_63

    aget-object v2, p1, v1

    if-eqz v2, :cond_60

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_12
    if-ge v4, v3, :cond_60

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v7, v6, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v7, :cond_4c

    instance-of v7, v5, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v7, :cond_4c

    check-cast v5, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v7, :cond_5d

    iget-object v6, v6, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v0

    move v9, v8

    :goto_3a
    if-ge v8, v7, :cond_46

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_3a

    :cond_46
    if-eqz v9, :cond_5d

    invoke-virtual {v5}, Lcom/android/launcher3/folder/OplusFolderIcon;->updatePreview()V

    goto :goto_5d

    :cond_4c
    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v7, :cond_5d

    instance-of v7, v5, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v7, :cond_5d

    check-cast v5, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v5, v5, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-interface {v5, v6}, Lcom/android/launcher3/IBubbleTextViewExt;->applyHighTempProtectedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_63
    return-void
.end method

.method public static synthetic n0(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$44(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o0(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$onAppsLimitedStateChange$18(Ljava/util/ArrayList;)V

    return-void
.end method

.method private onAppUpdateDotChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->onAppUpdateDotSwitchChange()V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->onAppUpdateDotSwitchChange()V

    :cond_12
    return-void
.end method

.method private onLauncherStarted()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.action.LAUNCHER_VISIBLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/common/config/Constants$Packages;->PACKAGE_CLOCK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_34

    :catch_1c
    move-exception v0

    const-string/jumbo v1, "onLauncherStarted -- Exception:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->onLauncherStarted(Lcom/android/launcher/Launcher;)V

    :cond_3f
    return-void
.end method

.method public static synthetic p0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$pauseFancyIcons$12()V

    return-void
.end method

.method private pauseFancyIcons()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/a0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/a0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic q0(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$onConfigurationChanged$4(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    return-void
.end method

.method private querySecurityDialogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "OLauncher"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_13} :catch_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_13} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    const-string p1, "Exception:"

    invoke-static {p1, p0, v0}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v1

    :catch_1b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NotFoundException:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_31
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NameNotFoundException:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic r0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onSplitMinimizeModeChanged$49()V

    return-void
.end method

.method private refreshScreenShotForGroupCard(Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->setDrawPicForDrag(Z)V

    :cond_11
    return-void
.end method

.method private releaseObj()V
    .registers 2

    invoke-static {p0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatisticsHelper;->release()V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/android/launcher3/ota/OpOtaManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/ota/OpOtaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/ota/OpOtaManager;->release()V

    :cond_12
    return-void
.end method

.method private removeWidgetWithAnimate(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 10

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v0, 0x440001ec

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v1, 0x3f170a3d  # 0.59f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v3, p1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    const v2, 0x3a83126f  # 0.001f

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Lcom/android/launcher/v;

    invoke-direct {v5, p2}, Lcom/android/launcher/v;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x3f4ccccd  # 0.8f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, p1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v5, p1, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v5, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private resetRecentsVisibility()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p0

    const-string/jumbo v0, "resetRecentsVisibility error, "

    const-string v1, "OLauncher"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method private resumeFancyIcons()V
    .registers 5

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    sget-object v2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    :cond_19
    new-instance v2, Lcom/android/launcher/b0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/launcher/b0;-><init>(Lcom/android/launcher/Launcher;II)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic s0(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->lambda$getFirstMatchForAppClose$39(ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private showDragLayer()V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    const-string v0, "OLauncher"

    const-string/jumbo v1, "show draglayer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->startFadeInAnim()V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "has_hide_draglayer"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_30
    return-void
.end method

.method private showLoadingViewIfNeed()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/android/common/util/UserUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "OLauncher"

    if-nez v0, :cond_1b

    const-string/jumbo p0, "showLoadingViewIfNeed: dragLayer is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    const-string/jumbo v2, "showLoadingViewIfNeed -- show loading view in guest user!"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0162

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method private showUninstallPanel()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-nez v0, :cond_d

    const-string p0, "OLauncher"

    const-string/jumbo v0, "onPrepareDialog --->DIALOG_UNINSTALL_APP ---> appInfo null. "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isSupportWorkProfile:Z

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->isDeviceOwnerOrActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->startActivityForUninstall(Ljava/lang/String;)V

    return-void

    :cond_29
    new-instance v0, Lcom/android/launcher/UninstallRemoveAppPanel;

    invoke-direct {v0, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-void
.end method

.method private startActivityForUninstall(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p1, :cond_27

    const-string p1, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2c

    :cond_27
    const-string p1, "com.android.packageinstaller"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2c
    const/high16 p1, 0x10800000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startWidgetViewAddAnimation(Landroid/view/View;Z)V
    .registers 9

    if-nez p2, :cond_80

    if-nez p1, :cond_5

    goto :goto_80

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v0, 0x440001ec

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v0, 0x3f170a3d  # 0.59f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const v1, 0x3a83126f  # 0.001f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const v3, 0x3f4ccccd  # 0.8f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v4, p1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_80
    :goto_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startWidgetViewAddAnimation, fromDrop: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", hostView:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OLauncher"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t0(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/Launcher;->lambda$finishBindingItemsInner$8(Landroid/view/View;)V

    return-void
.end method

.method private toMap(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v2, :cond_9

    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v3, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_32
    return-object p0
.end method

.method private tryStartChildrenspace()V
    .registers 5

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string v1, "OLauncher"

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "boot_wizard_childrenspace"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate getChildModeState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_53

    const-string v0, "Click the Start button to turn on Kids Mode."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.coloros.childrenspace"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "oplus.intent.action.SWITCH_CHILDREN_MODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "boot_wizard"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_47
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2e .. :try_end_47} :catch_48

    goto :goto_53

    :catch_48
    const-string p0, " startChildrenspace, activity not found exception!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_4e
    const-string p0, "The current device is not an export model."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public static synthetic u0(Lcom/android/launcher/Launcher;ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/launcher/Launcher;->lambda$removeItem$29(ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private udpateWorkspacePaddingIfNeeded()V
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->hasCheckWorkspacePadding:Z

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->hasCheckWorkspacePadding:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getDisplayInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsAdaptiveLayoutSupport()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->getDesiredWorkspaceHorizontalMarginPx(Landroid/content/Context;)I

    move-result v0

    :cond_35
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    if-eq v1, v0, :cond_57

    const-string v0, "OLauncher"

    const-string/jumbo v1, "workspace padding changed, recreate device profile"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->initTargetIdpGrid()V

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/Launcher;->onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    :cond_57
    return-void
.end method

.method private updateAppLimitedState(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/Launcher;->mapOverItems(Ljava/util/Map;[Lcom/android/launcher3/CellLayout;)V

    :cond_b
    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-array v2, v1, [Lcom/android/launcher3/CellLayout;

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_2b

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2b
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/Launcher;->mapOverItems(Ljava/util/Map;[Lcom/android/launcher3/CellLayout;)V

    :cond_2e
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_39

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateAppLimitedState(Ljava/util/Map;)V

    :cond_39
    return-void
.end method

.method private updateDragLayerTranslationX()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenShown()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-eqz v0, :cond_61

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDraglayer.TranslationX()："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OLauncher"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    return-void
.end method

.method private updateExitChildrenModeIconStyle(Landroid/widget/TextView;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isChildrenModeWpBright()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    const v2, 0x7f0806dd

    const v3, 0x7f0604a7

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz v0, :cond_23

    const v2, 0x7f0806de

    const v3, 0x7f0604a8

    :cond_23
    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_46

    :cond_32
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result v0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3f
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_46
    return-void
.end method

.method private updateFancyIcons(I)V
    .registers 6

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    if-eqz p0, :cond_65

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {p0}, Lcom/android/launcher3/icons/IIconCacheExt;->getFancyIconCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFancyIcons: op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v3, :cond_35

    check-cast v1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_51

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResume()V

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResumeThread()V

    :cond_51
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5a

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onPause()V

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onPauseThread()V

    :cond_5a
    if-ne p1, v2, :cond_35

    invoke-interface {v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onCleanUp()V

    goto :goto_35

    :cond_60
    if-ne p1, v2, :cond_65

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_65
    return-void
.end method

.method private updateHighTemperatureProtectionState()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_15

    const-string v0, "OLauncher"

    const-string/jumbo v1, "updateHighTemperatureProtectionState in workspace "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->mapOverItems([Lcom/android/launcher3/CellLayout;)V

    :cond_15
    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-array v2, v1, [Lcom/android/launcher3/CellLayout;

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v1, :cond_35

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_35
    invoke-direct {p0, v2}, Lcom/android/launcher/Launcher;->mapOverItems([Lcom/android/launcher3/CellLayout;)V

    :cond_38
    return-void
.end method

.method private updatePageIndicatorForSplit()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_34

    :cond_b
    const-string/jumbo v0, "update indicator for split "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "OLauncher"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusWorkspace;->updateAssistScreenPoint(Z)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->updatePageIndicatorCount()V

    :cond_34
    :goto_34
    return-void
.end method

.method public static synthetic v0(Lcom/android/launcher/Launcher;ZLjava/lang/Boolean;)Lh4/z;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->lambda$showAllAppsFromIntent$47(ZLjava/lang/Boolean;)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->onLauncherStarted()V

    return-void
.end method

.method public static synthetic x0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->lambda$bindAppWidgetAdd$23(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic y0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onHotSeatFinishBinding$31()V

    return-void
.end method

.method public static synthetic z0(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->lambda$onBusEvent$37()V

    return-void
.end method


# virtual methods
.method public addAppCardImpl(Lcom/android/launcher3/PendingAddItemInfo;Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 4
    .param p2  # Lcom/android/launcher3/card/LauncherCardInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/card/PendingAddCardInfo;->mFromDrop:Z

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher/Launcher;->completeAddAppCard(Lcom/android/launcher3/PendingAddItemInfo;ZLcom/android/launcher3/card/LauncherCardInfo;)V

    return-void
.end method

.method public addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 3

    if-nez p1, :cond_c

    const-string p0, "Widget"

    const-string p1, "OLauncher"

    const-string v0, "addAppWidgetFromDrop, info == null!"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    return-void
.end method

.method public addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .registers 6

    const/4 p5, 0x5

    invoke-virtual {p4, p0, p1, p2, p5}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p5

    if-nez p5, :cond_e

    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    :cond_e
    return-void
.end method

.method public addConvertedFolder(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/OplusFolderIcon;Z)Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 6

    if-eqz p4, :cond_a

    invoke-virtual {p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    :cond_a
    invoke-virtual {p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getOppositeView()Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p4

    if-nez p4, :cond_27

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result p4

    if-eqz p4, :cond_20

    sget-object p4, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    const v0, 0x7f0d0051

    invoke-virtual {p4, v0, p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p4

    goto :goto_27

    :cond_20
    const p4, 0x7f0d0129

    invoke-static {p4, p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/OplusFolderIcon;

    move-result-object p4

    :cond_27
    :goto_27
    sget-object p1, Lcom/android/launcher3/folder/big/FolderManager;->INSTANCE:Lcom/android/launcher3/folder/big/FolderManager;

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/folder/big/FolderManager;->updateFolderName(Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p4}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p3

    if-eqz p3, :cond_38

    move-object p3, p4

    check-cast p3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/folder/big/FolderManager;->updateIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_38
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p1, p4, p2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    return-object p4
.end method

.method public addFolder(Lcom/android/launcher3/CellLayout;IIIILjava/lang/String;)Lcom/android/launcher3/folder/FolderIcon;
    .registers 14

    new-instance v6, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v6}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p6, ""

    iput-object p6, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_3d

    :cond_10
    iput-object p6, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p6}, Lcom/android/common/util/FolderNameHelper;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3d

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->onNewGameFolderCreated()V

    sget-object p6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p6

    if-eqz p6, :cond_3d

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object p6

    invoke-virtual {p6, p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->sendGameFolderCreatedBroadcastIfNeed(Landroid/content/Context;)V

    :cond_3d
    :goto_3d
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

    if-nez p0, :cond_5e

    return-object p1

    :cond_5e
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    return-object p1
.end method

.method public addOplusOnFocusChangeCallback(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "addOplusOnFocusChangeCallback"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOplusOnResumeCallback(Ljava/lang/Runnable;)V
    .registers 5

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "addOplusOnResumeCallback"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOplusOnResumeCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZLcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result p0

    return p0
.end method

.method public addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZLcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 11
    .param p4  # Lcom/android/launcher3/card/LauncherCardInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    const/16 v0, -0x64

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    instance-of v0, p1, Lcom/android/launcher3/card/PendingAddCardInfo;

    const-string v1, "OLauncher"

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    const v3, 0xd3ecf26

    if-ne v0, v3, :cond_33

    invoke-static {p0, v0}, Lcom/android/common/util/LauncherUtil;->checkCardAddEnable(Lcom/android/launcher3/Launcher;I)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1206da

    invoke-static {p0, p1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_2d
    const-string p0, "There is already a universal_service card on the desktop, and repeated additions are not allowed"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3, p4}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ILcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return v4

    :cond_55
    if-eqz p2, :cond_6a

    const-string p0, "addWidgetFromDrop can not find cell for widget! widget info = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_71
    sget-object v3, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_82

    add-int/lit8 v0, v0, -0x1

    goto :goto_71

    :cond_82
    :goto_82
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_a5

    invoke-virtual {p0, p1, v0, p4}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ILcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result v3

    if-eqz v3, :cond_a2

    const-string p1, "Success to find cell at page "

    invoke-static {p1, v0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher/b0;

    invoke-direct {p2, p0, v0, v4}, Lcom/android/launcher/b0;-><init>(Lcom/android/launcher/Launcher;II)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4

    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_a5
    if-eqz p3, :cond_b3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZLcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result p0

    return p0

    :cond_b3
    const p1, 0x7f12046b

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->showOutOfSpaceMessage(I)V

    return v2
.end method

.method public addWorkspaceLoadedCallback(Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateFadeScreen(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const-string v1, "OLauncher"

    if-nez v0, :cond_c

    const-string p0, "animateFadeScreen() mWorkspace is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsSwitchingLayout:Z

    if-nez p0, :cond_16

    const-string p0, "animateFadeScreen() mIsSwitchingLayout is false."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const/high16 p0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    move v2, p0

    goto :goto_1e

    :cond_1d
    move v2, v1

    :goto_1e
    if-eqz p1, :cond_21

    move p0, v1

    :cond_21
    if-eqz p1, :cond_26

    const/16 p1, 0x87

    goto :goto_28

    :cond_26
    const/16 p1, 0x50

    :goto_28
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput p0, v1, v3

    const/4 p0, 0x1

    aput v2, v1, p0

    const-string p0, "alpha"

    invoke-static {v0, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_40

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_40
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public beforeStartActivity(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->beforeStartActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_35

    :cond_c
    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/quickstep/ITopTaskTrackerExt;->setForceUpdateOrderedTaskList(Z)V

    :cond_2a
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearCacheForCamera(Landroid/content/Context;Ljava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;I)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "OLauncher"

    if-eqz v0, :cond_1c

    const-string v0, "bindAllApplications all APP"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    goto :goto_32

    :cond_1c
    const-string v0, "bindAllApplications state = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    :cond_45
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

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->bindAppRemove(Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->appRemove(Ljava/util/ArrayList;)V

    :cond_16
    return-void
.end method

.method public bindAppWidgetAdd(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)Z
    .registers 6

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/Launcher;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz p3, :cond_1d

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance p3, Landroidx/core/content/res/d;

    invoke-direct {p3, p0, p2}, Landroidx/core/content/res/d;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public bindAppWidgetRemove(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v2, "OLauncher"

    const-string v3, "Widget"

    if-nez v0, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindAppWidgetRemove -- provider is null! name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_27
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_3e

    sget-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {p1, v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->removeBottomWidget(Landroid/content/ComponentName;Lcom/android/launcher/Launcher;)Z

    move-result p0

    return p0

    :cond_3e
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusLauncherModel;->findWidgetInfoInWorkHandler(Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    instance-of v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v4, :cond_4e

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    goto :goto_4f

    :cond_4e
    const/4 v4, 0x0

    :goto_4f
    if-nez v4, :cond_66

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindAppWidgetRemove -- can not find widget,  item = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_66
    iput-boolean v1, p0, Lcom/android/launcher/Launcher;->isRemoveAppwidgetSuccesful:Z

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance v2, Lcom/android/launcher/w;

    invoke-direct {v2, p0, v4}, Lcom/android/launcher/w;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->isRemoveAppwidgetSuccesful:Z

    if-nez v1, :cond_b0

    const-string v1, "BindAppWidgetRemove: just remove data id="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " belongs to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", because has not found this widget from container"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_b0
    const/4 p0, 0x1

    return p0
.end method

.method public bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->addOrUpdateApps(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->bindAppAddOrUpdate(Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->addOrUpdateApps(Ljava/util/ArrayList;)V

    :cond_24
    return-void
.end method

.method public bindAppsAddedToWorkspace(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isAddAppToWorkspace()Z

    move-result v0

    const-string v1, "addAppOnWorkspace: "

    const-string v2, ", mode: "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OLauncher"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher/operators/Customizer;->onAddApp(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isOnlyPlaceAPPInDrawer()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v1

    if-nez v1, :cond_48

    :cond_45
    invoke-static {p0, p1}, Lcom/android/launcher/model/FindSpaceHelper;->placeTargetAppsOnScreenIfNeeded(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    :cond_48
    if-eqz v0, :cond_99

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->installReason:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_83

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v3

    if-eqz v3, :cond_83

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do not addAndBindAddedWorkspaceItems when google backup and restore in drawer! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_83
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_8c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_99

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    :cond_99
    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_16
    return-void
.end method

.method public bindItems(Ljava/util/List;ZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    :goto_9
    if-ge v0, p2, :cond_19

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/dragndrop/OplusSnapTargetShortCutHelper;->snapToTargetShortcutPage(Lcom/android/launcher3/OplusWorkspace;Landroid/os/Handler;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_47

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_47

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_47

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 p3, 0x63

    if-eq p2, p3, :cond_42

    const/4 p3, 0x5

    if-ne p2, p3, :cond_47

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget p2, p2, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne p2, p1, :cond_47

    :cond_42
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p0}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_47
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

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Ljava/util/function/Predicate;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public canAnimatePageChange()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public cleanFancyIconAndEngine()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->cleanUpFancyIcons()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/IIconCacheExt;->clearFancyDrawable()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/IIconCacheExt;->cleanFancyIconEngine()V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getCache()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_26
    return-void
.end method

.method public cleanUpFancyIcons()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->updateFancyIcons(I)V

    return-void
.end method

.method public clearCardStateByPackageName(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->clearLastStartByPackageName(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public clearOplusOnFocusCallback()V
    .registers 4

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "clearOplusOnFocusCallback"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public clearOplusOnResumeCallback()V
    .registers 4

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "clearOplusOnResumeCallback"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOplusOnResumeCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public completeAddAppCard(Lcom/android/launcher3/PendingAddItemInfo;ZLcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 16
    .param p3  # Lcom/android/launcher3/card/LauncherCardInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/card/PendingAddCardInfo;->getCardConfigInfo()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    iget v2, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    const v3, 0xd3ecf26

    const-string v4, "OLauncher"

    const-string v5, "Card"

    if-ne v2, v3, :cond_29

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string p0, "completeAddAppCard SeedlingContainerCardDisabled."

    invoke-static {v5, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    new-instance v2, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v2}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    if-eqz p3, :cond_3d

    iget-boolean v3, p3, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    if-eqz v3, :cond_3d

    iget v3, p3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iput v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget-boolean v3, p3, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    iput-boolean v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    goto :goto_47

    :cond_3d
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    iget v6, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    invoke-virtual {v3, v6}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    :goto_47
    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v3, p2, Lcom/android/launcher3/card/PendingAddCardInfo;->minWidth:I

    iput v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iget v3, p2, Lcom/android/launcher3/card/PendingAddCardInfo;->minHeight:I

    iput v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iget v3, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    iput v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget-object v3, p2, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/launcher3/card/PendingAddCardInfo;->mServiceId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iget p2, p2, Lcom/android/launcher3/card/PendingAddCardInfo;->mCategory:I

    iput p2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    iput-object v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getIdentification()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "theme_card"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bb

    const/4 p2, 0x1

    iput-boolean p2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    if-nez p3, :cond_b5

    iget-object p2, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    if-eqz p2, :cond_b5

    invoke-virtual {p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->getThemeCardMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iget v0, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b5

    iget-object p2, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    invoke-virtual {p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->getThemeCardMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iget v0, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_bb

    :cond_b5
    if-eqz p3, :cond_bb

    iget-object p2, p3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p2

    if-nez p2, :cond_ed

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "completeAddAppCard view is null, launcherCardInfo:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v2, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    if-eqz p1, :cond_ec

    iget-object v6, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    if-eqz v6, :cond_ec

    if-nez p3, :cond_ec

    const/4 v8, 0x0

    iget v10, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v11, -0x4

    move-object v7, v2

    move-object v9, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->addCardResultToThemeStore(Lcom/android/launcher3/card/LauncherCardInfo;ZLcom/android/launcher/Launcher;II)V

    :cond_ec
    return-void

    :cond_ed
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v6

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v10, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v11, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p1, p2, v2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeAddAppCard--cardInf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_153

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    const-string v0, "Removing completeAddAppCard failed item: id="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    iget-boolean p1, v2, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    if-eqz p1, :cond_166

    iget-object v6, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    if-eqz v6, :cond_166

    if-nez p3, :cond_166

    const/4 v8, 0x0

    iget v10, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v11, -0x5

    move-object v7, v2

    move-object v9, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->addCardResultToThemeStore(Lcom/android/launcher3/card/LauncherCardInfo;ZLcom/android/launcher/Launcher;II)V

    goto :goto_166

    :cond_153
    iget-boolean p1, v2, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    if-eqz p1, :cond_166

    iget-object v6, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    if-eqz v6, :cond_166

    if-nez p3, :cond_166

    const/4 v8, 0x1

    iget v10, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v11, 0x0

    move-object v7, v2

    move-object v9, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->addCardResultToThemeStore(Lcom/android/launcher3/card/LauncherCardInfo;ZLcom/android/launcher/Launcher;II)V

    :cond_166
    :goto_166
    invoke-interface {p2}, Lcom/oplus/card/manager/domain/ICardView;->showLoadingIfNeed()V

    return-void
.end method

.method public completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-nez p4, :cond_f

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p4, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    :cond_f
    if-nez p4, :cond_32

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

    const-string p1, "Widget"

    const-string p2, "OLauncher"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_32
    new-instance v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v3, p4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v9, p1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p4, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    instance-of v3, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_5c

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v3, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    iput v3, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    :cond_5c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v3

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    if-nez p3, :cond_74

    iget-object p3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p3, p0, p1, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    :cond_74
    iget p1, v9, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-lez p1, :cond_85

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result p1

    if-eqz p1, :cond_85

    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    goto :goto_88

    :cond_85
    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    :goto_88
    invoke-virtual {p0, p3, v9}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p1, p3, v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_b1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    const-string v1, "Removing completeAddAppWidget failed item: id="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", item="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v9, v1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_b1
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_c1

    instance-of p1, p3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz p1, :cond_c1

    move-object p1, p3

    check-cast p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setIsFirstAddToScreen(Z)V

    :cond_c1
    iget-object p1, p4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    invoke-static {p0, p1, p4}, Lcom/android/common/util/PackageUtils;->unFreezePackageIfNeeded(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_dd

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p1}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_dd
    invoke-direct {p0, p3, v2}, Lcom/android/launcher/Launcher;->startWidgetViewAddAnimation(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p0, p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object p2

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconShimmer:Z

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/launcher/Launcher$9;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/Launcher$9;-><init>(Lcom/android/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_10
    return-object p2
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .registers 9

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, -0x65

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz v0, :cond_37

    invoke-static {p2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0048

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    goto :goto_88

    :cond_25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0151

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    goto :goto_88

    :cond_37
    instance-of v3, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {v3}, Lcom/android/launcher3/util/ViewPool;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_88

    invoke-static {v3}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    iget-object v4, v3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    if-eqz v4, :cond_59

    sget-object v5, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/common/util/FontManager;

    iget v5, v5, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-interface {v4, v5, v2}, Lcom/android/launcher3/IBubbleTextViewExt;->updateTextSize(FZ)V

    :cond_59
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_88

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_88

    const-string v4, "OLauncher"

    const-string v5, "get view from ViewPool, reset iconsize"

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v4, v3, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    goto :goto_88

    :cond_77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0044

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    :cond_88
    :goto_88
    invoke-virtual {v3, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    sget-object v4, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result p1

    instance-of v4, v3, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    if-eqz v4, :cond_ad

    if-nez p1, :cond_ad

    move-object p1, v3

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    new-instance v4, Lcom/android/launcher/Launcher$7;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher/Launcher$7;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {p1, v4}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setOnCheckedChangeListener(Lcom/android/launcher3/OplusBubbleTextViewSubscribe$OnCheckedChangeListener;)V

    :cond_ad
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    instance-of p1, v3, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    if-eqz p1, :cond_dd

    move-object p1, v3

    check-cast p1, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-interface {p1, p2}, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;->setDragSource(Lcom/android/launcher3/DragSource;)V

    if-nez v0, :cond_dd

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p2, v3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    instance-of v0, p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    if-eqz v0, :cond_d9

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->supportIconSelected(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_d9

    goto :goto_da

    :cond_d9
    move v1, v2

    :goto_da
    invoke-interface {p2, v1, v2, v2}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->applySelectedState(ZIZ)V

    :cond_dd
    return-object v3
.end method

.method public disbandFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 20

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v2, "OLauncher"

    const-string v3, "Folder"

    const/4 v4, 0x3

    if-eq v1, v4, :cond_15

    const-string v0, "disbandFolder: the item to disband is not a folder, ignore !"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    const/4 v7, 0x1

    if-lez v4, :cond_29

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-static {v1, v6, v7}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItems(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/Launcher;Z)V

    invoke-static {v6, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->stopAppStoreContentRecommend(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_29
    iget-object v4, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v0, "disbandFolder: folderInfo.contents to disband is empty, ignore !"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v8, -0x65

    if-ne v4, v8, :cond_40

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupBlurHelper;->executePopupDeferredImmediately(Lcom/android/launcher3/Launcher;)V

    :cond_40
    move-object v4, v5

    check-cast v4, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v9

    iget v10, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v10, v8, :cond_56

    invoke-virtual {v9}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_5e

    :cond_56
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v9, v0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    :goto_5e
    move-object v8, v0

    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {v8, v5}, Lcom/android/launcher3/OplusCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v11, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v13, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_7c
    invoke-static {v1, v8}, Lcom/android/launcher/folder/DisbandFolderHelper;->getEmptyCellsAndFolderPointFromCellLayout(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)Landroid/util/Pair;

    move-result-object v0

    iget-object v11, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    const/4 v12, 0x0

    if-nez v0, :cond_8d

    move v13, v7

    goto :goto_8e

    :cond_8d
    move v13, v12

    :goto_8e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-le v14, v15, :cond_d5

    const-string v0, "disbandFolder: batchAndBindAddedWorkspaceItems"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v1, v4, v12, v7}, Lcom/android/launcher/folder/DisbandFolderHelper;->removeFolderContent(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/FolderIcon;ZZ)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    mul-int/2addr v2, v1

    if-ne v0, v2, :cond_b2

    invoke-virtual {v9}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    :cond_b2
    new-array v0, v7, [I

    invoke-virtual {v9}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v7

    aput v1, v0, v12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/launcher/h;

    invoke-direct {v2, v1, v12}, Lcom/android/launcher/h;-><init>(Ljava/util/List;I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/launcher/w;

    invoke-direct {v2, v5, v8}, Lcom/android/launcher/w;-><init>(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/launcher3/LauncherModel;->batchAndBindAddedWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/LauncherModel$CallbackTask;[I)V

    goto :goto_12d

    :cond_d5
    if-eqz v13, :cond_fd

    invoke-virtual {v8}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v0

    const/16 v5, -0xc9

    if-eq v0, v5, :cond_e7

    invoke-virtual {v8}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v0

    const/16 v5, -0xc8

    if-ne v0, v5, :cond_f1

    :cond_e7
    const-string v0, "disbandFolder: currentPage is EMPTY_SCREEN, commitExtraEmptyScreens."

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    :cond_f1
    const-string v0, "disbandFolder: isFolderIconInDocker = true"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v1, v4, v7, v12}, Lcom/android/launcher/folder/DisbandFolderHelper;->removeFolderContent(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/FolderIcon;ZZ)V

    invoke-static {v6, v8, v10, v11}, Lcom/android/launcher/folder/DisbandFolderHelper;->batchBindItemToEmptyPoint(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Ljava/util/List;)V

    goto :goto_12d

    :cond_fd
    const-string v13, "disbandFolder: isFolderIconInDocker = false"

    invoke-static {v3, v2, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/launcher3/OplusCellLayout;->getItemInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3, v11, v2}, Lcom/android/launcher/folder/DisbandFolderHelper;->computeEmptyCellsAndItemCells(Landroid/graphics/Point;ILjava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v6, v1, v4, v7, v12}, Lcom/android/launcher/folder/DisbandFolderHelper;->removeFolderContent(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/FolderIcon;ZZ)V

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v8, v0}, Lcom/android/launcher/folder/DisbandFolderHelper;->animateExistItemsToPosition(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;)V

    new-instance v12, Lcom/android/exceptionmonitor/util/e;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/exceptionmonitor/util/e;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Landroid/util/Pair;Landroid/view/View;)V

    const-wide/16 v0, 0x1c2

    invoke-virtual {v9, v12, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_12d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v0

    if-eqz v0, :cond_13a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->setReorderAnimating(Z)V

    :cond_13a
    new-instance v0, Lcom/android/common/util/o0;

    const/4 v1, 0x4

    invoke-direct {v0, v6, v1}, Lcom/android/common/util/o0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x55

    add-int/lit16 v1, v1, 0x578

    int-to-long v1, v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_9e

    :cond_12
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    instance-of v0, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_99

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x800

    const-string v2, "OLauncher"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_53

    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mKeyEventDownInOverviewTablet:Z

    xor-int/2addr v0, v3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher/Launcher;->mKeyEventDownInOverviewTablet:Z

    if-eqz v0, :cond_53

    const-string/jumbo v0, "single ACTION_UP without ACTION_DOWN event."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    if-eqz v0, :cond_4a

    iget-boolean v1, v0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v1, :cond_4a

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_4a
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in overview, dispatch="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_99

    iput-boolean v3, p0, Lcom/android/launcher/Launcher;->mKeyEventDownInOverviewTablet:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_7f

    packed-switch v0, :pswitch_data_a4

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_7f
    :pswitch_7f  #0x13, 0x14, 0x15, 0x16
    invoke-static {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    if-eqz v0, :cond_90

    iget-boolean v1, v0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v1, :cond_90

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_90
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_99
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_9e
    :goto_9e
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_a4
    .packed-switch 0x13
        :pswitch_7f  #00000013
        :pswitch_7f  #00000014
        :pswitch_7f  #00000015
        :pswitch_7f  #00000016
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->checkInputConsumerAbnormal(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->dumpImportantInfo(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getDumpPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_23

    :cond_16
    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/common/debug/c;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26

    :cond_23
    :goto_23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->dumpTimeConsumingInfo(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public endOverlayScrollSpring()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_17
    return-void
.end method

.method public executeAllOplusOnFocusCallbacks(Z)V
    .registers 5

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "executeAllOplusOnFocusCallbacks"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOplusOnFocusCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/launcher/i;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->clearOplusOnFocusCallback()V

    return-void
.end method

.method public executeAllOplusOnResumeCallbacks()V
    .registers 4

    const-string v0, "Common"

    const-string v1, "OLauncher"

    const-string v2, "executeAllOplusOnResumeCallbacks"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOplusOnResumeCallbacks:Ljava/util/List;

    sget-object v1, Lcom/android/launcher/l;->b:Lcom/android/launcher/l;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->clearOplusOnResumeCallback()V

    return-void
.end method

.method public findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ILcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result p0

    return p0
.end method

.method public findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ILcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 21
    .param p3  # Lcom/android/launcher3/card/LauncherCardInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    const-string v4, "Widget"

    const-string v5, "OLauncher"

    const/4 v6, 0x0

    if-nez v3, :cond_2e

    const-string v1, "addWidgetFromToggleItemClick, cl is null!, screen = "

    const-string v3, ", count = "

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2e
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    const/16 v7, -0xc9

    if-ne v2, v7, :cond_53

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4d

    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    goto :goto_53

    :cond_4d
    const-string v2, "IntArray is empty !, screenId = -1"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    :cond_53
    :goto_53
    move v7, v2

    const/4 v2, 0x2

    new-array v8, v2, [I

    fill-array-data v8, :array_1a0

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v9, 0x64

    if-ne v2, v9, :cond_82

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v9, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    :goto_68
    invoke-virtual {v3, v8, v2, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v10

    if-nez v10, :cond_73

    if-le v2, v5, :cond_73

    add-int/lit8 v2, v2, -0x1

    goto :goto_68

    :cond_73
    :goto_73
    invoke-virtual {v3, v8, v2, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v5

    if-nez v5, :cond_7e

    if-le v4, v9, :cond_7e

    add-int/lit8 v4, v4, -0x1

    goto :goto_73

    :cond_7e
    move v5, v2

    move v10, v4

    goto/16 :goto_180

    :cond_82
    iget-object v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget v9, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v10, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget v11, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget v12, v2, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-static {v2}, Lcom/android/common/util/WidgetUtils;->checkMinResizeWidthHeightIsValid(Landroid/appwidget/AppWidgetProviderInfo;)V

    iget v13, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iget v14, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    if-eqz v14, :cond_97

    const/4 v14, 0x1

    goto :goto_98

    :cond_97
    move v14, v6

    :goto_98
    iget v15, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    if-eqz v15, :cond_9d

    const/4 v6, 0x1

    :cond_9d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v15

    if-eqz v15, :cond_12e

    const/16 v15, 0x13

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    const-string v5, "findCellToAddWidget:resizeMode:"

    const/16 v16, 0x1

    aput-object v5, v15, v16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x2

    aput-object v5, v15, v16

    const-string v5, ",minResizeWidth:"

    const/16 v16, 0x3

    aput-object v5, v15, v16

    const/4 v5, 0x4

    iget v0, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v5

    const/4 v0, 0x5

    const-string v5, ",minResizeHeight:"

    aput-object v5, v15, v0

    const/4 v0, 0x6

    iget v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v0

    const/4 v0, 0x7

    const-string v5, ",minWidth:"

    aput-object v5, v15, v0

    const/16 v0, 0x8

    iget v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v0

    const/16 v0, 0x9

    const-string v5, ",minHeight:"

    aput-object v5, v15, v0

    const/16 v0, 0xa

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v0

    const/16 v0, 0xb

    const-string v2, ",spanX-Y:"

    aput-object v2, v15, v0

    const/16 v0, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v0

    const/16 v0, 0xd

    const-string v2, "-"

    aput-object v2, v15, v0

    const/16 v0, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v0

    const/16 v0, 0xf

    const-string v5, ",minSpanX-Y:"

    aput-object v5, v15, v0

    const/16 v0, 0x10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v0

    const/16 v0, 0x11

    aput-object v2, v15, v0

    const/16 v0, 0x12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v0

    invoke-static {v4, v15}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12e
    const/4 v0, 0x1

    if-eq v13, v0, :cond_16e

    const/4 v0, 0x2

    if-eq v13, v0, :cond_15d

    const/4 v0, 0x3

    if-eq v13, v0, :cond_13b

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    goto :goto_17e

    :cond_13b
    if-eqz v14, :cond_148

    :goto_13d
    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_148

    if-le v9, v11, :cond_148

    add-int/lit8 v9, v9, -0x1

    goto :goto_13d

    :cond_148
    if-eqz v6, :cond_155

    :goto_14a
    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_155

    if-le v10, v12, :cond_155

    add-int/lit8 v10, v10, -0x1

    goto :goto_14a

    :cond_155
    if-nez v6, :cond_17e

    if-nez v14, :cond_17e

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    goto :goto_17e

    :cond_15d
    if-eqz v6, :cond_16a

    :goto_15f
    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_17e

    if-le v10, v12, :cond_17e

    add-int/lit8 v10, v10, -0x1

    goto :goto_15f

    :cond_16a
    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    goto :goto_17e

    :cond_16e
    if-eqz v14, :cond_17b

    :goto_170
    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_17e

    if-le v9, v11, :cond_17e

    add-int/lit8 v9, v9, -0x1

    goto :goto_170

    :cond_17b
    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    :cond_17e
    :goto_17e
    const/4 v6, 0x0

    move v5, v9

    :goto_180
    aget v0, v8, v6

    if-ltz v0, :cond_18b

    const/4 v0, 0x1

    aget v0, v8, v0

    if-ltz v0, :cond_18b

    const/4 v0, 0x1

    goto :goto_18c

    :cond_18b
    const/4 v0, 0x0

    :goto_18c
    if-eqz v0, :cond_19e

    const/16 v2, -0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v7

    move-object v4, v8

    move v6, v10

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[IIILcom/android/launcher3/card/LauncherCardInfo;)V

    const/4 v0, 0x1

    return v0

    :cond_19e
    const/4 v0, 0x0

    return v0

    :array_1a0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public finishBindCurrentScreen()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->showDragLayer()V

    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .registers 5

    const/4 v0, 0x3

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->finishBindingItemsInner(Lcom/android/launcher3/util/IntSet;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/exceptionmonitor/util/a;

    invoke-direct {v1, p0, v0}, Lcom/android/exceptionmonitor/util/a;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void

    :catchall_f
    move-exception p1

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher/a0;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/a0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    throw p1
.end method

.method public getAreaWidgetEditViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    return-object p0
.end method

.method public getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mAreaWidgetTransformViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    return-object p0
.end method

.method public getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-object p0
.end method

.method public getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    return-object p0
.end method

.method public getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    return-object p0
.end method

.method public getCardHost()Lcom/android/launcher3/card/LauncherCardHost;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mCardHost:Lcom/android/launcher3/card/LauncherCardHost;

    return-object p0
.end method

.method public getCardManager()Lcom/oplus/card/manager/domain/CardManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    return-object p0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .registers 2

    new-instance v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-direct {v0, p0}, Lcom/android/launcher/LauncherCallbacksImp;-><init>(Lcom/android/launcher/Launcher;)V

    return-object v0
.end method

.method public getDockviewPanel()Landroid/view/View;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mDockviewPanel:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-eqz p0, :cond_13

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfoForShortCutItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

    return-object p0
.end method

.method public getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstMatchForAppClose start, preferredItemId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OLauncher"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oplus/card/helper/StartCardActivityHelper;->getLastStartCard(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    goto :goto_37

    :cond_36
    move-object v4, v6

    :goto_37
    if-eqz v4, :cond_54

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/Launcher;->isLastStartFromWidget()Z

    move-result v7

    if-nez v7, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFirstMatchForAppClose card:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_54
    new-instance v4, Lcom/android/launcher/m;

    const/4 v7, 0x0

    invoke-direct {v4, v1, v7}, Lcom/android/launcher/m;-><init>(II)V

    new-instance v8, Lcom/android/launcher/s;

    invoke-direct {v8, v1, v2, v3}, Lcom/android/launcher/s;-><init>(ILjava/lang/String;Landroid/os/UserHandle;)V

    new-instance v9, Lcom/android/launcher/o;

    invoke-direct {v9, v2, v3}, Lcom/android/launcher/o;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v10, Lcom/android/launcher/q;

    invoke-direct {v10, v9, v7}, Lcom/android/launcher/q;-><init>(Ljava/util/function/Predicate;I)V

    const/4 v9, 0x1

    new-array v11, v9, [Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    aput-object v6, v11, v7

    new-array v12, v9, [I

    const/4 v13, -0x1

    aput v13, v12, v7

    new-instance v14, Lcom/android/launcher/r;

    invoke-direct {v14, v10, v11, v12, v7}, Lcom/android/launcher/r;-><init>(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[II)V

    new-instance v15, Lcom/android/launcher/r;

    invoke-direct {v15, v8, v11, v12, v9}, Lcom/android/launcher/r;-><init>(Ljava/util/function/Predicate;[Lcom/android/launcher3/model/data/WorkspaceItemInfo;[II)V

    new-instance v13, Lcom/android/launcher/p;

    invoke-direct {v13, v2, v3, v7}, Lcom/android/launcher/p;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v3

    add-int/2addr v3, v9

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    if-eqz v3, :cond_a1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    new-instance v6, Lcom/android/common/util/n;

    invoke-direct {v6, v2}, Lcom/android/common/util/n;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    const/4 v6, 0x3

    const/16 v16, 0x2

    if-eqz v3, :cond_c5

    new-array v1, v6, [Ljava/util/function/Predicate;

    aput-object v8, v1, v7

    aput-object v10, v1, v9

    aput-object v13, v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher/Launcher;->getFirstMatchForAllAppsView([Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_c5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/Launcher;->isLastStartFromWidget()Z

    move-result v3

    if-eqz v3, :cond_fe

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher/Launcher;->isSameItemId(I)Z

    move-result v0

    if-eqz v0, :cond_fe

    new-array v0, v9, [Ljava/util/function/Predicate;

    aput-object v4, v0, v7

    invoke-static {v2, v0}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFirstMatchForAppClose widget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_fc

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_fb

    const-string v0, "getFirstMatchForAppClose.Is largeDispalay and NOT SupportStartingSurface, return null"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fc

    :cond_fb
    return-object v0

    :cond_fc
    :goto_fc
    const/4 v0, 0x0

    return-object v0

    :cond_fe
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/function/Predicate;

    aput-object v8, v0, v7

    aput-object v15, v0, v9

    aput-object v10, v0, v16

    aput-object v14, v0, v6

    const/4 v1, 0x4

    aput-object v13, v0, v1

    invoke-static {v2, v0}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFirstMatchForAppClose result v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_13d

    aget v1, v12, v7

    const/4 v2, -0x1

    if-eq v1, v2, :cond_135

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    aget v2, v12, v7

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToClosingPage(I)V

    :cond_135
    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    aget-object v1, v11, v7

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->createItemIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    move-result-object v0

    :cond_13d
    return-object v0
.end method

.method public getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mFloatingIconContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

    return-object p0
.end method

.method public getFloatingIconSurfaceContainerView()Landroid/view/SurfaceView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mFloatingIconSurfaceContainerView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mGuidePageManager:Lcom/android/launcher/guide/GuidePageManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/guide/GuidePageManager;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/GuidePageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mGuidePageManager:Lcom/android/launcher/guide/GuidePageManager;

    :cond_b
    iget-object p0, p0, Lcom/android/launcher/Launcher;->mGuidePageManager:Lcom/android/launcher/guide/GuidePageManager;

    return-object p0
.end method

.method public getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    return-object p0
.end method

.method public getLastActivityConfiguration()Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLastActivityConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .registers 3

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, p0, v0

    invoke-static {}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->getNormalOverviewOffset()F

    move-result v0

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method public getOplusFolderPagedView()Lcom/android/launcher3/folder/OplusFolderPagedView;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderPagedView;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    return-object p0
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "OLauncher"

    const-string v2, "getPagesToBindSynchronously pages to bind is empty"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_3e

    :cond_1d
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    if-gez v1, :cond_2d

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v1

    :cond_2d
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_41

    invoke-static {v1, p1}, Lcom/android/launcher3/util/OplusTwoPanelUtils;->getScreenPair(ILcom/android/launcher3/util/IntArray;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_41

    :cond_3e
    :goto_3e
    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_41
    :goto_41
    return-object v0
.end method

.method public getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mPullDownDetectController:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    return-object p0
.end method

.method public getRecentContainer()Lcom/android/launcher3/RecentContainerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mRecentContainer:Lcom/android/launcher3/RecentContainerView;

    return-object p0
.end method

.method public getRectOfExitChildrenModeIcon()Landroid/graphics/Rect;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    if-nez v0, :cond_d

    const-string p0, "OLauncher"

    const-string v0, "getRectOfExitChildrenModeIcon. The mExitChildrenModeIcon is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    aget v1, v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    return-object p0
.end method

.method public getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

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

.method public getStaticBlurView()Lcom/android/launcher/views/OplusStaticBlurView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

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

    const/16 p0, 0x11

    new-array p0, p0, [Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->AppOpenNewWindow:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_CONVERT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_EXPAND:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_EXPAND_AND_RENAME:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x5

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->THEME_MARKET_AREA_WIDGET_REPLACE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x6

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->THEME_MARKET_AREA_WIDGET_EDIT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x7

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->CARD_SETTNG:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0x8

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_SHARE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0x9

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_EDIT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0xa

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->CARD_ADD:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0xb

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FIXED_WIDGET_SHORTCUT:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0xc

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->ICON_DELETE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0xd

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->APP_UNINSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0xe

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->FOLDER_DISBAND:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0xf

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->DISABLE_PREDICTION:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0x10

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getSettingShortcut()Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    :cond_7e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_98

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->TASKBAR_SUBSCRIBE_REMOVE:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut;->TASKBAR_SETTING:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    :cond_98
    return-object p0
.end method

.method public getSwipeToRecentTouchController()Lcom/android/quickstep/touch/SwipeToRecentTouchController;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz p0, :cond_d

    const-class v0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->findTouchController(Ljava/lang/Class;)Lcom/android/launcher3/util/TouchController;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mTaskViewContainer:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    return-object p0
.end method

.method public getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mTaskViewManager:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    return-object p0
.end method

.method public getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    return-object p0
.end method

.method public getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-object p0
.end method

.method public getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    return-object p0
.end method

.method public getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mWorkspaceScrim:Lcom/android/launcher3/views/WorkSpaceScrimView;

    return-object p0
.end method

.method public grantBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/f;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/f;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x5

    :try_start_d
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    const-string p1, "OLauncher"

    const-string v0, "grantBindAppWidgetPermission: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    const-string p3, "handleActivityResult, requestCode = "

    const-string v0, ", resultCode = "

    const-string v1, "OLauncher"

    invoke-static {p3, p1, v0, p2, v1}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 p3, 0x1

    const/16 v0, 0x2715

    if-ne p1, v0, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_20

    return-void

    :cond_20
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, -0x1

    if-ne p2, p1, :cond_62

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->startCardStoreActivity(Lcom/android/launcher/Launcher;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p0, p3, p3}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    goto :goto_62

    :cond_32
    iget-object p1, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz p1, :cond_62

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel()V

    goto :goto_62

    :cond_46
    const/16 p2, 0x2716

    const/4 v0, 0x0

    if-eq p1, p2, :cond_58

    const/16 p2, 0x2717

    if-ne p1, p2, :cond_50

    goto :goto_58

    :cond_50
    const p2, 0x13461c1

    if-ne p1, p2, :cond_62

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    goto :goto_62

    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p1, p3}, Lcom/android/launcher/togglebar/ToggleBarManager;->setNeedLightWindowAnimatorFlag(Z)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    :cond_62
    :goto_62
    return-void
.end method

.method public handlePendingRequest()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    const-string v1, "OLauncher"

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    const-string p0, "handlePendingRequest: mPendingRequestArgs != null, handled = true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_d
    iget v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_40

    goto :goto_24

    :pswitch_14  #0x2718
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    goto :goto_24

    :pswitch_1c  #0x2712, 0x2717
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    goto :goto_25

    :goto_24
    move v2, v3

    :goto_25
    :pswitch_25  #0x2711, 0x2713, 0x2714, 0x2715, 0x2716
    const-string v0, "handlePendingRequest: mPendingActivityRequestCode = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", handled = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_data_40
    .packed-switch 0x2711
        :pswitch_25  #00002711
        :pswitch_1c  #00002712
        :pswitch_25  #00002713
        :pswitch_25  #00002714
        :pswitch_25  #00002715
        :pswitch_25  #00002716
        :pswitch_1c  #00002717
        :pswitch_14  #00002718
    .end packed-switch
.end method

.method public hideAssistScreenIfShown()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenShown()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p0}, Lcom/android/launcher/LauncherCallbacksImp;->shouldHideAssistScreen()V

    :cond_15
    return-void
.end method

.method public ignoreBindItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->ignoreBindInHotseat(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->ignoreBindItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateAppWidget, item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Widget"

    const-string v2, "OLauncher"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRuntimeFlag(I)Z

    move-result v4

    if-eqz v4, :cond_44

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflateAppWidget, widget item locked, but user is unlock, item = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :cond_44
    invoke-virtual {p1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRuntimeFlag(I)Z

    move-result v4

    if-nez v4, :cond_65

    if-nez v0, :cond_65

    iget v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    or-int/2addr v0, v3

    iput v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflateAppWidget, widget item unlock, but user is locked, item = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    invoke-virtual {p1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRuntimeFlag(I)Z

    move-result v0

    if-eqz v0, :cond_88

    new-instance v0, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflateAppWidget, item user locked, create locked view. item = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_88
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    if-nez v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->isScreenSizeChanged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "super_powersave_launcher_exit"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/IntentUtils;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1b
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->initTargetIdpGrid()V

    :cond_1e
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method public initWallpaper()V
    .registers 4

    const-wide/16 v0, 0x8

    const-string v2, "initWallpaper"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->tryLoadWallpaper(Z)V

    :cond_f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public isAllAppsViewInSelectState()Z
    .registers 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/LauncherAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isShowSelectedView()Z

    move-result p0

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistScreenConnected()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v0, p0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenConnected()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistScreenEnable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0, p0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistScreenShown()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v0, p0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {p0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenShown()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistantScreenVisible()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isAssistScreenShown()Z

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-nez v0, :cond_1a

    iget p0, p0, Lcom/android/launcher3/Launcher;->mOverlayScrollProgress:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_1b

    :cond_1a
    const/4 v2, 0x1

    :cond_1b
    return v2
.end method

.method public isFromApp()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mFromApp:Z

    return p0
.end method

.method public isFromState(Lcom/android/launcher3/LauncherState;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isHandlingConfigurationChanged()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsHandlingConfigurationChanged:Z

    return p0
.end method

.method public isHoldFolderOpen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    return p0
.end method

.method public isHoldFolderOpenForWorkEdu()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpenForWorkEdu:Z

    return p0
.end method

.method public isLoadingViewShowing()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p0, "OLauncher"

    const-string v0, "isLoadingViewShowing: dragLayer is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    if-eqz p0, :cond_1b

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public isMultiWindowModeChanged()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsMultiWindowModeChanged:Z

    return p0
.end method

.method public isOplusLauncher()Z
    .registers 1

    const/4 p0, 0x1

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

.method public isSwitchChildrenModeLoading()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mSwitchChildrenModeLoading:Z

    return p0
.end method

.method public isVerifyIconChanged()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mVerifyIconChanged:Z

    return p0
.end method

.method public isVisible()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isWidgetTouchResizeEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/Launcher;->mIsWidgetTouchResizeEnable:Z

    return p0
.end method

.method public launchCardSetting(III)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSettingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Card"

    const-string v4, "OLauncher"

    if-nez v2, :cond_79

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_79

    :cond_26
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cardType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cardId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hostId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchCardSetting-> CARD_TYPE: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CARD_ID = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", HOST_ID = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_6e
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_78

    :catchall_72
    move-exception p0

    const-string p1, "launcherCardSetting catch exception:"

    invoke-static {p1, p0, v4}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_78
    return-void

    :cond_79
    :goto_79
    const-string p0, "launcherCardSetting info is empty"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyDatabaseUpdateOrDeleteAction()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/model/AutomaticAddNoPositionItemsTask;

    invoke-direct {v0}, Lcom/android/launcher3/model/AutomaticAddNoPositionItemsTask;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_1d
    return-void
.end method

.method public notifyUninstallEndAction(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAllActivityListUpdate(I)V
    .registers 4

    const-string v0, "initialSize = "

    const-string v1, "OLauncher"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iput p1, p0, Lcom/android/launcher/Launcher;->mAppCounts:I

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/common/util/o0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/common/util/o0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAllAppHighTemperatureProtectionStateChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_15

    const-string v0, "OLauncher"

    const-string/jumbo v1, "onAllAppHighTemperatureProtectionStateChange : "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->onAppHighTempStateChanged()V

    :cond_15
    return-void
.end method

.method public onAppsLimitedStateChange(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/c;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 9

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onAttachedToWindow()V

    const-string v0, "OLauncher"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    const/4 v2, 0x2

    const/16 v3, 0x1b

    if-lt v1, v3, :cond_20

    sget v1, Lcom/oplus/os/OplusBuild$VERSION;->SDK_SUB_VERSION:I

    const/16 v3, 0x14

    if-lt v1, v3, :cond_20

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/oplus/view/OplusWindowAttributesManager;->setBackGestureRestriction(Landroid/view/Window;I)V

    goto :goto_58

    :cond_20
    sget v1, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_58

    :try_start_26
    const-string v1, "com.oplus.view.OplusWindowAttributesManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "setBackGestureRestriction"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/view/Window;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    aput-object p0, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v7

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_50} :catch_51

    goto :goto_58

    :catch_51
    move-exception p0

    const-string/jumbo v1, "setBackGestureRestriction e="

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-eqz v0, :cond_14

    invoke-interface {v0, p0}, Lcom/android/launcher/ILauncherLifecycleObserver;->onBackPressed(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-nez v0, :cond_20

    const-string v0, "OLauncher"

    const-string/jumbo v1, "onBackPressed -- mLauncherLifecycleObserver is null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->removeLoadingView()V

    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->setWidgetTouchResizeEnable(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v1, -0x1

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyGoHome()V

    iput v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    return-void

    :cond_45
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onBackPressed()V

    iput v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    return-void
.end method

.method public final onBusEvent(Lcom/oplus/quickstep/events/event/BreenoSkillEvent;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    iget-object p1, p1, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    new-instance v0, Lcom/android/launcher/z;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/Launcher;I)V

    iput-object v0, p1, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final onBusEvent(Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;)V
    .registers 2

    invoke-virtual {p1}, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->isInSuperPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void
.end method

.method public onChildrenModeChanged()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mSwitchChildrenModeLoading:Z

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher/y;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/y;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsHandlingConfigurationChanged:Z

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hidePopClickTip()V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->dismissExpandGuidTip()V

    const-wide/16 v1, 0x8

    const-string v3, "LauncherConfigChange"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/common/config/ContextFetcher;->onLauncherConfigChange(Landroid/content/res/Configuration;)Z

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->startConfigCache()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/g;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/android/launcher/g;-><init>(Landroid/content/res/Configuration;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->clearCallBacks()V

    :cond_3d
    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/launcher/e;->b:Lcom/android/launcher/e;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_6b

    const-string v4, "Hotseat_expand"

    const-string/jumbo v6, "orientation config changed"

    invoke-static {v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/OplusHotseat;->cancelHotseatExpandAnimate()V

    :cond_6b
    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/LauncherSimpleModeHelper;->isSimpleModeIconChanging()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->stopConfigCache()V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    iput-boolean v5, p0, Lcom/android/launcher/Launcher;->mIsHandlingConfigurationChanged:Z

    return-void

    :cond_81
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    const-string v6, "OLauncher"

    if-nez v4, :cond_95

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "mOldConfig is null."

    invoke-static {v6, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->stopConfigCache()V

    iput-boolean v5, p0, Lcom/android/launcher/Launcher;->mIsHandlingConfigurationChanged:Z

    return-void

    :cond_95
    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_cd

    const-string/jumbo v7, "onConfigurationChanged -- diff = "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onConfigurationChanged newConfig = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    and-int/lit16 v7, v4, 0x400

    if-nez v7, :cond_d5

    and-int/lit16 v7, v4, 0x1000

    if-eqz v7, :cond_12c

    :cond_d5
    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v7

    if-eqz v7, :cond_fd

    const-string/jumbo v7, "onConfigurationChanged initScreenData and reInitGrid！"

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    invoke-static {v5}, Lcom/android/common/util/DisplayUtils;->updateDisplayInfo(Z)Z

    and-int/lit16 v7, v4, 0x800

    if-eqz v7, :cond_f5

    sget-object v7, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v7, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/common/util/FontManager;

    invoke-virtual {v7}, Lcom/android/common/util/FontManager;->initFoldScreenFontSize()V

    :cond_f5
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v7, :cond_11c

    invoke-virtual {v7}, Lcom/android/launcher3/OplusWorkspace;->reInitEffectIfNeeded()V

    goto :goto_11c

    :cond_fd
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v7

    if-nez v7, :cond_119

    sget-object v7, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v7, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v7}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget-object v8, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v8

    if-eq v7, v8, :cond_11c

    :cond_119
    invoke-static {v5}, Lcom/android/common/util/DisplayUtils;->updateDisplayInfo(Z)Z

    :cond_11c
    :goto_11c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v7

    if-eqz v7, :cond_129

    iget-object v7, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    if-eqz v7, :cond_129

    invoke-virtual {v7}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->recycleWallpaperBlurCache()V

    :cond_129
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->initTargetIdpGrid()V

    :cond_12c
    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onConfigurationChanged(I)V

    invoke-static {v4, p0}, Lcom/android/common/util/UxConfigUtils;->onConfigurationChanged(ILandroid/content/Context;)V

    invoke-static {v4}, Lcom/android/common/util/UxConfigUtils;->isOverlayChanged(I)Z

    move-result v7

    if-eqz v7, :cond_140

    sget-object v7, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v7}, Lcom/oplus/launcher/overlay/RROverlayManager;->startCheckAvailable()V

    invoke-static {p0}, Lcom/android/common/util/UxConfigUtils;->reapplyTheme(Landroid/content/Context;)V

    :cond_140
    invoke-static {v4}, Lcom/android/common/util/UxConfigUtils;->needReloadColor(I)Z

    move-result v7

    if-eqz v7, :cond_14f

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {v7, p0, v0}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    :cond_14f
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/util/OplusFoldStateHelper;->isOrientationChange(I)Z

    move-result v0

    if-eqz v0, :cond_165

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    check-cast v7, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/OplusStateManager;->resetLauncherViewState()V

    sget-object v7, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v7}, Lcom/android/launcher/guide/DrawerGuideManager;->cancelAllAnim()V

    :cond_165
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {v4}, Lcom/android/common/util/UxConfigUtils;->isWallpaperColorChanged(I)Z

    move-result v7

    if-eqz v7, :cond_173

    iget-object v7, p0, Lcom/android/launcher/Launcher;->mReInflateWidgetsTask:Ljava/lang/Runnable;

    invoke-direct {p0, v7}, Lcom/android/launcher/Launcher;->executeTaskRelyOnStarted(Ljava/lang/Runnable;)V

    :cond_173
    if-eqz v0, :cond_1b3

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v0

    if-eqz v0, :cond_182

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->destroy()V

    :cond_182
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    if-eqz v0, :cond_1a6

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->cleanUpFancyIcons()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/IIconCacheExt;->clearFancyDrawable()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/IIconCacheExt;->cleanFancyIconEngine()V

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1a6
    const-string/jumbo v0, "orientation changed, invoke after onConfigurationChanged"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    iget-object v3, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v3}, Lcom/android/launcher3/OplusLauncherInjector;->injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;)V

    :cond_1b3
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onConfigurationChanged(ILcom/android/launcher/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-eqz v0, :cond_1c1

    invoke-interface {v0, p0, p1}, Lcom/android/launcher/ILauncherLifecycleObserver;->onPostConfigurationChanged(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;)V

    :cond_1c1
    iput-boolean v5, p0, Lcom/android/launcher/Launcher;->mIsHandlingConfigurationChanged:Z

    const-string p0, "configChange stopConfigCache"

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->stopConfigCache()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/config/ContextFetcher;->setLauncher(Lcom/android/launcher/Launcher;)V

    sget-object v0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v0}, Lcom/android/common/util/TemporaryCacheHelper;->startTemporaryCache()V

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-nez v1, :cond_21

    new-instance v1, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    :cond_21
    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->clearCache()V

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->clearDeviceProfileCache()V

    :cond_37
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "OLauncher-onCreate"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; mRecreate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OLauncher"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    new-instance v2, Lcom/android/launcher/MyUncaughtExceptionHandler;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v2, v3, p0}, Lcom/android/launcher/MyUncaughtExceptionHandler;-><init>(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mUncaughtExceptionHandler:Lcom/android/launcher/MyUncaughtExceptionHandler;

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    if-nez v2, :cond_85

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isDefaultSimpleMode()Z

    move-result v2

    if-nez v2, :cond_85

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher/guide/GuidePageManager;->showGestureViewIfNeeded(Lcom/android/launcher/Launcher;)V

    :cond_85
    invoke-static {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {v2, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->setLauncher(Lcom/android/launcher/Launcher;)V

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {v2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateNumberSupportListIfNecessary()V

    invoke-static {}, Lcom/android/launcher/badge/NotificationBadgeManager;->getInstance()Lcom/android/launcher/badge/NotificationBadgeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/badge/NotificationBadgeManager;->registerBadgeOptionObserver()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/theme/OplusUIEngine;->resetCheckState(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/CardPermissionManager;->init()V

    invoke-static {}, Lcom/android/launcher3/card/LauncherCardHost;->getInstance()Lcom/android/launcher3/card/LauncherCardHost;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mCardHost:Lcom/android/launcher3/card/LauncherCardHost;

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v2, p0}, Lcom/oplus/card/manager/domain/CardManager;->registerCardCallback(Landroid/content/Context;)V

    new-instance v2, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-direct {v2, p0}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

    new-instance v2, Lcom/android/keyguardservice/FastUnlockManager;

    invoke-direct {v2, p0}, Lcom/android/keyguardservice/FastUnlockManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->sExportGlobalSearchMateData:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_db

    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/common/util/j0;

    invoke-direct {v4, p0, v3}, Lcom/android/common/util/j0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_db
    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onLauncherRecreate(Lcom/android/launcher/Launcher;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->checkForNavMode(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-eqz p1, :cond_fd

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->resetLauncherIfNecessary()V

    return-void

    :cond_fd
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance v2, Lcom/android/launcher/Launcher$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/Launcher$1;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result p1

    if-eqz p1, :cond_118

    new-instance p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-direct {p1, p0, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;-><init>(Lcom/android/launcher/Launcher;I)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mTaskViewManager:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    :cond_118
    invoke-static {p0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatisticsHelper;->registerDateChangeListener(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {p1, v2}, Lcom/android/common/multiapp/MultiAppManager;->setCallBacks(Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->listenHomeKey()V

    invoke-static {p0}, Lcom/android/launcher/layout/LayoutUtilsManager;->initLayoutArrangementType(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/AppLimitedStartUpManager;->addCallback(Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result p1

    if-eqz p1, :cond_144

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->registerGameBounceListener(Landroid/content/Context;)V

    :cond_144
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result p1

    if-eqz p1, :cond_155

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p1, :cond_155

    invoke-static {}, Lcom/android/launcher/custom/PictorialUtils;->getInstance()Lcom/android/launcher/custom/PictorialUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/custom/PictorialUtils;->unInstallRmGlPictorial(Landroid/content/Context;)V

    :cond_155
    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/statistics/BaseStatistics;->setLauncher(Lcom/android/launcher/Launcher;)V

    new-instance p1, Lcom/android/launcher/LauncherLifecycleObserver;

    invoke-direct {p1}, Lcom/android/launcher/LauncherLifecycleObserver;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/operators/Customizer;->onActivityCreated(Landroid/app/Activity;)V

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-direct {p1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mStaticBlurView:Lcom/android/launcher/views/OplusStaticBlurView;

    if-eqz v2, :cond_181

    invoke-virtual {p1, v2}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->setBlurCacheListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V

    :cond_181
    iget-object p1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->registerWallpaperChangeReceiver(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->registerUsbStateChangeReceiver(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->initTextThemeColor(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher/LauncherInputDeviceManager;->getInstance()Lcom/android/launcher/LauncherInputDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/LauncherInputDeviceManager;->registerInputDeviceListener()V

    invoke-static {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->init()V

    invoke-static {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->setCallbacks(Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager$HighTemperatureProtectionCallback;)V

    sget-object p1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->showLoadingViewIfNeed()V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->initCustomizeRestrictionManager(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherModel;)V

    new-instance p1, Lcom/android/launcher/touch/BlurScrimWindowController;

    invoke-direct {p1, p0}, Lcom/android/launcher/touch/BlurScrimWindowController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->resetRecentsVisibility()V

    invoke-static {p0}, Lcom/android/common/util/LauncherUtil;->saveCurNightModeState(Landroid/content/Context;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz p1, :cond_1e3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/ota/OpOtaManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/ota/OpOtaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/ota/OpOtaManager;->runOtaAsyncIfNeeded()Z

    :cond_1e3
    new-instance p1, Lcom/oplus/card/helper/StartCardActivityHelper;

    invoke-direct {p1, p0}, Lcom/oplus/card/helper/StartCardActivityHelper;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

    sget-object p1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/common/util/o0;

    invoke-direct {v2, p0, v3}, Lcom/android/common/util/o0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->INSTANCE:Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->registerReceiver(Landroid/content/Context;)V

    sget-object v2, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->registerReceiver(Landroid/content/Context;)V

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->init(Landroid/content/Context;)V

    sget-object v2, Lcom/android/launcher/custom/PacmanCustomize;->INSTANCE:Lcom/android/launcher/custom/PacmanCustomize;

    invoke-virtual {v2, p0}, Lcom/android/launcher/custom/PacmanCustomize;->registerReceiver(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/common/util/OplusFoldStateHelper;->addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/util/OplusFoldStateHelper;->updateLauncherContext()V

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->registerCardConfigCallback()V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->updatePageIndicatorForSplit()V

    sget-object v2, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v2}, Lcom/android/common/config/FeatureOption;->isSupportWcgFeature()Z

    move-result v2

    if-eqz v2, :cond_239

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v2

    if-eqz v2, :cond_239

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setColorMode(I)V

    :cond_239
    sget-object v2, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v2, p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->addAvailableCallback(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;)V

    new-instance v2, Lcom/android/exceptionmonitor/util/a;

    invoke-direct {v2, p0, v0}, Lcom/android/exceptionmonitor/util/a;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_24f

    sget-object p1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->setLauncher(Lcom/android/launcher/Launcher;)V

    :cond_24f
    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->onCreate(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result p1

    if-eqz p1, :cond_264

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->registerSpChangeListener()V

    :cond_264
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p1

    if-eqz p1, :cond_281

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->registerListener(Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->registerListener(Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->addAllAppsVisibilityChangeListener(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    :cond_281
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result p1

    if-eqz p1, :cond_290

    invoke-static {p0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->needShowSettingsGuideMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_290

    invoke-static {p0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->showSettingsGuideMessage(Landroid/content/Context;)V

    :cond_290
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->hideDragLayerIfNeeded()V

    invoke-static {}, Lcom/android/common/util/LauncherAnimationLevelUtils;->getInstance()Lcom/android/common/util/LauncherAnimationLevelUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/util/LauncherAnimationLevelUtils;->register()V

    invoke-static {}, Lcom/android/common/util/PausedAppCacheUtil;->saveNeedPausedAppList()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportAreaWidgetTransform()Z

    move-result p1

    if-eqz p1, :cond_2b1

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mAreaWidgetTransformViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    :cond_2b1
    sput-boolean v0, Lcom/android/launcher3/icons/BitmapInfo;->FLAG_NEW_CLONE_BADGE_STYLE:Z

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    new-instance v1, Lcom/android/launcher/a0;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/a0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->tryStartChildrenspace()V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p0

    new-instance p1, Lcom/android/launcher/MessagePostHelperImpl;

    invoke-direct {p1}, Lcom/android/launcher/MessagePostHelperImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->setMessagePostHelper(Lcom/android/systemui/shared/system/TaskStackChangeListeners$MessagePostHelper;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_2dd

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/DrawerGuideManager;->clearDrawerGuide()V

    :cond_2dd
    return-void
.end method

.method public onDeferredResumed()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onDeferredResumed()V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationListener;->addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy, this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {v0}, Lcom/android/common/util/SoundPlayerUtils;->release()V

    sget-object v0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    invoke-virtual {v0}, Lcom/android/common/util/StartActivityCookieHelper;->release()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->recycle()V

    :cond_28
    invoke-static {p0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/statistics/LauncherStatisticsHelper;->unregisterDateChangeListener(Landroid/content/Context;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->unregisterGameBounceListener(Landroid/content/Context;)V

    :cond_3e
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mTaskViewManager:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->release()V

    :cond_4b
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->removeAllListener()V

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onDestroy()V

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    const-string v1, "launcher Destroy"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearAllCardViewCaches(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->clearAllCard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->unregisterCardConfigCallback()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-virtual {v1}, Lcom/android/keyguardservice/FastUnlockManager;->onLauncherDestroy()V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/card/CardPermissionManager;->unregisterCardPermissionObserver(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v1, p0}, Lcom/oplus/card/manager/domain/CardManager;->unRegisterCardCallback(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->destroy()V

    :cond_80
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    if-eqz v1, :cond_87

    invoke-virtual {v1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->onLauncherDestroy(Landroid/content/Context;)V

    :cond_87
    invoke-static {}, Lcom/android/launcher/download/DownloadAppUtils;->recycleStaticResources()V

    invoke-static {}, Lcom/android/launcher/LauncherInputDeviceManager;->getInstance()Lcom/android/launcher/LauncherInputDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/LauncherInputDeviceManager;->unRegisterInputDeviceListener()V

    sget-object v1, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/SmallAppUtils;->unRegisterSmallAppWhiteListObserver()V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Lcom/android/launcher/HomeKeyObserver;->stopListen()V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mHomeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    :cond_a5
    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    if-eqz v1, :cond_bb

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/QuickstepTransitionManager;->onActivityDestroyed()V

    :cond_bb
    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/statistics/BaseStatistics;->setLauncher(Lcom/android/launcher/Launcher;)V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-eqz v1, :cond_c9

    invoke-virtual {v1, v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->setLauncher(Lcom/android/launcher/Launcher;)V

    :cond_c9
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    if-eqz v1, :cond_d9

    iget-object v1, v1, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/IIconCacheExt;->clearFancyDrawable()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, v1, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/IIconCacheExt;->cleanFancyIconEngine()V

    :cond_d9
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_ee

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherSimpleModeObserver:Lcom/android/launcher/LauncherSimpleModeObserver;

    iget-object v1, p0, Lcom/android/launcher/Launcher;->isRegisteredSimpleModeObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_ee
    invoke-static {}, Lcom/android/launcher/shimmer/IconShimmerManager;->getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->destroy()V

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setListener(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;)V

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v1

    if-eqz v1, :cond_10d

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->destroy()V

    :cond_10d
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v1

    new-instance v3, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;-><init>(ZZ)V

    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->unRegistRestrictionDataObserver()V

    sget-object v1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->unregisterObserver()V

    sget-object v1, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->INSTANCE:Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->unregisterReceiver(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->unregisterReceiver(Landroid/content/Context;)V

    sget-object v1, Lcom/android/launcher/custom/PacmanCustomize;->INSTANCE:Lcom/android/launcher/custom/PacmanCustomize;

    invoke-virtual {v1, p0}, Lcom/android/launcher/custom/PacmanCustomize;->unregisterReceiver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->releaseObj()V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/common/util/OplusFoldStateHelper;->removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->onLauncherDestroy()V

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    invoke-static {}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->getInstance()Lcom/android/launcher/operators/AppWidgetReloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->unregisterCotaNonRebootPackageAddedReceiver()V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/statistics/LauncherStatistics;->cleanRunnableQueue()V

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->destroys(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v1, p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->removeAvailableCallback(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayAvailableCallback;)V

    sget-object v1, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v1}, Lcom/android/common/util/TemporaryCacheHelper;->stopTemporaryCache()V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_170

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->setLauncher(Lcom/android/launcher/Launcher;)V

    :cond_170
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v1

    if-eqz v1, :cond_179

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->unregisterSpChangeListener()V

    :cond_179
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    if-eqz v1, :cond_196

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->unregisterListener(Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->unRegisterListener(Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->removeAllAppsVisibilityChangeListener(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    :cond_196
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onLauncherDestroy()V

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/config/ContextFetcher;->setLauncher(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/common/util/LauncherAnimationLevelUtils;->getInstance()Lcom/android/common/util/LauncherAnimationLevelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimationLevelUtils;->unregister()V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAssistantDragCallBack:Lcom/android/launcher3/dragndrop/IDragCallback;

    instance-of v1, v0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;

    if-eqz v1, :cond_1b2

    check-cast v0, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/AssistantDragCallBack;->releaseLauncher()V

    :cond_1b2
    sget-object v0, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/ReportController;->unbindService()V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->reset()V

    sget-object v0, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->INSTANCE:Lcom/oplus/quickstep/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->resetSplitScreenMode()V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->reset()V

    invoke-static {}, Lcom/android/launcher/badge/NotificationBadgeManager;->getInstance()Lcom/android/launcher/badge/NotificationBadgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/badge/NotificationBadgeManager;->unregisterBadgeOptionObserver()V

    invoke-static {}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->clearCardLayerTypes()V

    invoke-static {p0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/AppLimitedStartUpManager;->removeCallBack(Lcom/android/launcher/AppLimitedStartUpManager$AppLimitedStateCallback;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_1ea

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/DrawerGuideManager;->clearDrawerGuide()V

    :cond_1ea
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBubbleTextViewPool:Lcom/android/launcher3/util/ViewPool;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/util/ViewPool;->clearPool()V

    :cond_a
    return-void
.end method

.method public onDeviceProfileInitiated()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/OplusDotRenderer;

    instance-of v1, v0, Lcom/android/launcher3/icons/OplusDotRenderer;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/icons/OplusDotRenderer;->initTextPaint()V

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->setNumAppsPerRow(I)V

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getOplusFolderPagedView()Lcom/android/launcher3/folder/OplusFolderPagedView;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/OplusFolderPagedView;->onFoldStateChange(Lcom/android/launcher3/DeviceProfile;)V

    :cond_31
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDeviceProfileInitiated()V

    return-void
.end method

.method public onExitChildrenModeIconWallpaperBrightnessChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mExitChildrenModeView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->updateExitChildrenModeIconStyle(Landroid/widget/TextView;)V

    :cond_7
    return-void
.end method

.method public onFoldStateChange(Z)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    :cond_28
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->updateDockerBgIfNecessary()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_4b

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onFoldStateChange()V

    :cond_4b
    if-nez p1, :cond_56

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->startSubscribeStateErrorCheckRunnable()V

    :cond_56
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-eqz p0, :cond_5d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusDragLayer;->onFoldStateChange(Z)V

    :cond_5d
    return-void
.end method

.method public onHotSeatFinishBinding()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->initWallpaper()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/exceptionmonitor/util/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/exceptionmonitor/util/a;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/SimpleGuidPageManager;->INSTANCE:Lcom/android/launcher3/util/SimpleGuidPageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SimpleGuidPageManager;->isPageCalling()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "OLauncher"

    const-string p1, "idp change by simple guid page, return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->recreateStateHandlers()V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onIdpChanged(Lcom/android/launcher3/InvariantDeviceProfile;I)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result p1

    if-nez p1, :cond_21

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initViewPool()V

    :cond_21
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/common/util/OplusFoldStateHelper;->isOrientationChange(I)Z

    move-result p1

    if-nez p1, :cond_49

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_3a

    sget-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_3a
    const p1, 0x20000d00

    if-eq p2, p1, :cond_41

    const/4 p1, 0x1

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    :goto_42
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, p2, v0, p1}, Lcom/android/launcher3/OplusLauncherInjector;->injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;Z)V

    :cond_49
    return-void
.end method

.method public onIdpChangedCompat(ZI)V
    .registers 3

    and-int/lit8 p1, p2, 0x10

    if-nez p1, :cond_8

    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_1c

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1c
    return-void
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseQuickstepLauncher;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V

    const-string p1, "OLauncher"

    const-string/jumbo p2, "onInitialBindComplete"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/Launcher;->animateFadeScreen(ZLandroid/animation/Animator$AnimatorListener;)V

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mHasBindFirstPage:Z

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mNewIntentTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iput-object p2, p0, Lcom/android/launcher/Launcher;->mNewIntentTask:Ljava/lang/Runnable;

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDismissState()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_35

    iget-boolean p1, p0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    if-eqz p1, :cond_35

    invoke-static {p0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-virtual {p0}, Lcom/android/keyguardservice/FastUnlockManager;->onLauncherOnStop()V

    :cond_35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_1f

    const/16 v0, 0x121

    if-ne p1, v0, :cond_1f

    :try_start_8
    sget-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_CAMERA_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/common/util/AppIntentUtils;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    const-string v0, "OLauncher"

    const-string v1, "Launcher do not found camera action!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_30

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->getState()I

    move-result v0

    if-nez v0, :cond_30

    const/4 p0, 0x0

    return p0

    :cond_30
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 5

    if-eqz p1, :cond_1e

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsMultiWindowModeChanged:Z

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    if-nez p1, :cond_35

    sget-object p2, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/launcher3/OplusDeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    :cond_35
    sget-object p2, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    iget-object p2, p0, Lcom/android/launcher/Launcher;->mDockviewPanel:Landroid/view/View;

    if-eqz p2, :cond_49

    check-cast p2, Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/dock/DockView;->onMultiWindowModeChanged(Z)V

    :cond_49
    const-string p2, "OLauncher"

    if-eqz p1, :cond_54

    const-string/jumbo p0, "onMultiWindowModeChanged, isInMultiWindowMode is true, don\'t deal with it"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_54
    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-nez p1, :cond_5f

    const-string/jumbo p0, "onMultiWindowModeChanged, mDeviceProfile is null"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5f
    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/OplusLauncherRootView;

    if-eqz p1, :cond_78

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->dispatchInsets()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->refreshSystemWindowInsets()V

    :cond_78
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "OLauncher"

    const-string/jumbo v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo p0, "onNewIntent, launcher isFinishing."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-static {p0, p1, v1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->resolveStateByNewIntent(Lcom/android/launcher/Launcher;Landroid/content/Intent;Lcom/android/systemui/plugins/shared/LauncherOverlayManager;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-boolean v2, p0, Lcom/android/launcher/Launcher;->mHasBindFirstPage:Z

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_27

    :cond_25
    iput-object v1, p0, Lcom/android/launcher/Launcher;->mNewIntentTask:Ljava/lang/Runnable;

    :cond_27
    :goto_27
    :try_start_27
    const-string v1, "back_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "com.android.launcher.action.WALLPAPER_CATEGORY_SETTINGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->setNeedLightWindowAnimatorFlag(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_48} :catch_49

    goto :goto_4e

    :catch_49
    const-string v1, "Failed to get intent String"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/download/DownloadAppsManager;->dismissMobileNetworkAndStorageSpaceDialog()V

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOverlayAvailable()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayAvailableTask:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->executeTaskRelyOnStarted(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string/jumbo v0, "onPause, loading"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "OLauncher-onPause"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelGlobalDragIfNeed()V

    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onPause()V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->pauseFancyIcons()V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->refreshScreenShotForGroupCard(Ljava/lang/Boolean;)V

    invoke-static {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/DrawerGuideManager;->fadeDrawerGuide(Lcom/android/launcher3/Launcher;)V

    :cond_4c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_24

    const-string v0, "launcher.all_apps.pre_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    const-string v2, "launcher.all_apps.search_focus"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 v1, 0x1

    :cond_31
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {p0, v0, v1}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->setQuery(Ljava/lang/String;Z)V

    :cond_3c
    return-void
.end method

.method public onResume()V
    .registers 9

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "OLauncher-onResume"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    const-string v2, "OLauncher"

    if-eqz v1, :cond_41

    const-string/jumbo v1, "onResume, loading="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " recentsVisible="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " this:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getLastActivityState()I

    move-result v1

    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onResume()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->executeAllOplusOnResumeCallbacks()V

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher/LauncherSimpleModeHelper;->notifySceneModeToChangeSimpleStateIfNecessary(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initSimpleModeObserver()V

    sget-object v3, Lcom/android/launcher3/util/SimpleGuidPageManager;->INSTANCE:Lcom/android/launcher3/util/SimpleGuidPageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/SimpleGuidPageManager;->setPageCalling(Z)V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    if-eqz v3, :cond_66

    invoke-virtual {v3}, Lcom/android/keyguardservice/FastUnlockManager;->onLauncherResume()V

    :cond_66
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->resumeFancyIcons()V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v3, :cond_9a

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_9a

    sget-object v3, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v3}, Lcom/android/common/config/FeatureOption;->isSupportAnimationRound()Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/launcher/Launcher$2;

    invoke-direct {v5, p0}, Lcom/android/launcher/Launcher$2;-><init>(Lcom/android/launcher/Launcher;)V

    const-wide/16 v6, 0x320

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_89
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9a

    sget-object v3, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->refillAdapterItemsAndUpdate()V

    :cond_9a
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v5, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    if-ne v3, v5, :cond_bb

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_b6

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_bb

    :cond_b6
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    :cond_bb
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/launcher3/OplusWorkspace;->updatePageAlphaValues(Z)V

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mWallpaperManager:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    if-eqz v3, :cond_ca

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->onLauncherResumed()V

    :cond_ca
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    if-eqz v3, :cond_d7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/launcher3/OplusDragLayer;->checkResetBackgroundFlag(Lcom/android/launcher/Launcher;)Z

    :cond_d7
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {v3, p0, v4}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_10a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_10a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->updatePaddingsIfNeeded(Lcom/android/launcher3/DeviceProfile;)V

    :cond_10a
    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onLauncherRestartOrResume(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-static {v5}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->checkExpandGuidState(Z)V

    :cond_116
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->snapToPageToWorkPage(Lcom/android/launcher/Launcher;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statWidgetsAndCardsExposure()V

    invoke-static {p0}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->needShowLayoutUpgradeGuideOnStart(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13a

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/launcher/Launcher$3;

    invoke-direct {v3, p0}, Lcom/android/launcher/Launcher$3;-><init>(Lcom/android/launcher/Launcher;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13a
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->setStartDone()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    if-eqz v0, :cond_163

    const/4 v0, 0x2

    if-ne v1, v0, :cond_163

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    const-string v1, "app_exit"

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->isWallpaperScaleAlreadyInTarget(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_163

    const-string/jumbo v0, "restore wallpaper scale to normal"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v0}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->refreshScreenShotForGroupCard(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/download/DownloadAppsManager;->dismissMobileNetworkAndStorageSpaceDialog()V

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-eqz v0, :cond_11

    invoke-interface {v0, p0, p1}, Lcom/android/launcher/ILauncherLifecycleObserver;->onSaveInstanceState(Lcom/android/launcher/Launcher;Landroid/os/Bundle;)V

    :cond_11
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->getPreQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher.all_apps.pre_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->isSearchEditHasFocus()Z

    move-result p0

    const-string v0, "launcher.all_apps.search_focus"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_45
    return-void
.end method

.method public onScrollChanged(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_33

    :try_start_4
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOverlayScrollSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V
    :try_end_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_1a} :catch_1b

    goto :goto_36

    :catch_1b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to animate,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OLauncher"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_33
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onScrollChanged(F)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onSplitMinimizeModeChanged(Z)V
    .registers 5

    const-string/jumbo v0, "onSplitMinimizeModeChanged(), minimize: "

    const-string v1, "OLauncher"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/z;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    if-nez p1, :cond_1a

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateExpandItemsOnSplitScreenMinimizeModeExit()V

    :cond_1a
    return-void
.end method

.method public onSplitModeChanged(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "OLauncher"

    if-eqz v0, :cond_e

    const-string/jumbo v0, "onSplitModeChanged: isInSplitScreenMode = "

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_e
    if-eqz p1, :cond_27

    const-string/jumbo v0, "updateExpandItems when KEY_IS_IN_SPLIT_SCREEN_MODE is true"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarCombineIconDisable()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateExpandItemsOnSplitModeChanged()V

    :cond_27
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/android/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .registers 6

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "OLauncher-onStart"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BaseActivity;->setActivityStopped(Z)V

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onStart()V

    const-string v2, "OLauncher"

    const-string v3, "launcher------onStart"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/android/common/util/j0;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/common/util/j0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-boolean v2, Lcom/android/common/util/OplusFoldStateHelper;->mChangingFoldState:Z

    if-nez v2, :cond_33

    sput-boolean v1, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    sget-object v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;->Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;->setChangeFromLauncher(Z)V

    invoke-static {p0, v1}, Lcom/android/common/util/DisplayUtils;->updateIdpAndRefreshLauncher(Lcom/android/launcher/Launcher;Z)Z

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;->setChangeFromLauncher(Z)V

    :cond_33
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    sget-object v2, Lcom/android/launcher/j;->b:Lcom/android/launcher/j;

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mPendingTaskOnStart:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v1}, Lcom/oplus/launcher/overlay/RROverlayManager;->startCheckAvailable()V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->udpateWorkspacePaddingIfNeeded()V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onLauncherRestartOrResume(Lcom/android/launcher/Launcher;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->switchExpandHotseatIfNeeded()V

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->updateSubscribeItemIfNecessary()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->updateHotseatLauoutIfNeeded()V

    :cond_5e
    return-void
.end method

.method public onStop()V
    .registers 7

    const-string/jumbo v0, "onStop, loading"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->resetIconBlur()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->setStartDone()V

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/config/ContextFetcher;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mFromApp:Z

    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    iput-boolean v2, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    invoke-static {p0, v2, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_39
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v3, "OLauncher-onStop"

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mLastActivityConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lcom/android/keyguardservice/FastUnlockManager;->onLauncherOnStop()V

    :cond_55
    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    if-eqz v4, :cond_64

    invoke-virtual {v4}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetFallenIcons()V

    :cond_64
    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    if-eqz v3, :cond_71

    invoke-virtual {v3}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetFallenIcons()V

    :cond_71
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onStop()V

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz v5, :cond_8f

    check-cast v4, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getShortcutType()I

    move-result v5

    if-ne v5, v0, :cond_8f

    invoke-virtual {v4}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPendingCardContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->setForceClosePopContainerFlag(Z)V

    invoke-static {p0, v0, v3}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_8f
    iget-object v3, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-static {v3}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->setActivityStopped(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->immediatelyUpdateFolder(Lcom/android/launcher3/OplusWorkspace;)V

    :cond_a2
    invoke-static {}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->checkAndClearLeakCards()V

    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/download/MarketServiceManager;->registerDelayUnBindService(Landroid/content/Context;)V

    sput-boolean v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    const/4 p0, 0x3

    invoke-static {p0, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->updateRecentsOrRemoteAnimationRunningFlags(IZ)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceCleanAll()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 4

    const-string/jumbo v0, "onTrimMemory: level: "

    const-string v1, "OLauncher"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-eq p1, v0, :cond_16

    const/16 v0, 0xa

    if-eq p1, v0, :cond_16

    const/4 v0, 0x5

    if-ne p1, v0, :cond_23

    :cond_16
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/common/LauncherAssetManager;->clearCategoryMap()V

    :cond_23
    return-void
.end method

.method public onUserUnlocked(Landroid/os/UserHandle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onUserUnlocked(Landroid/os/UserHandle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OLauncher"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/common/util/j0;-><init>(Lcom/android/launcher/Launcher;I)V

    const-wide/16 v2, 0x320

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    sget-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedCardClient;->onUserUnlock()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/card/manager/domain/CardManager;->registerCardCallback(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/common/util/o0;

    invoke-direct {v0, p0, v1}, Lcom/android/common/util/o0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateNumberSupportListIfNecessary()V

    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 4

    const-string v0, "Wallpapers"

    const-string v1, "OLauncher"

    const-string/jumbo v2, "onWallpaperBrightnessChanged"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->updateTextColor()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onWallpaperBrightnessChanged()V

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->updateDragTipBackground()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->updateCellLayoutItemColor()V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->onWallpaperBrightnessChanged()V

    :cond_41
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->onWallpaperBrightnessChanged()V

    :cond_6e
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onWallpaperBrightnessChanged()V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onWallpaperBrightnessChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherRootView;->onWallpaperBrightnessChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {p0}, Lcom/android/launcher/SwitchStateRenderer;->onWallpaperBrightnessChanged()V

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->onWallpaperBrightnessChanged(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onWindowFocusChanged(Z)V

    const-string/jumbo v0, "onWindowFocusChanged:"

    const-string v1, "OLauncher"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/keyguardservice/FastUnlockManager;->onWindowFocusChanged(Z)V

    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->executeAllOplusOnFocusCallbacks(Z)V

    if-nez p1, :cond_1d

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    goto :goto_2a

    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->showFolderScrollGuide()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public onWorkspaceHighTemperatureProtectionStateChange()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/y;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p0, :cond_e

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_e
    const/16 v0, 0x11

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public reapplyUi()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->reapplyUi()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->updateAllAppsParamsWhenIdpChanged()V

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setSize(Z)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_58

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_58
    return-void
.end method

.method public rebindWidgetsWhenUserUnlocked(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "rebindWidgetsWhenUserUnlocked: widget size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Widget"

    const-string v2, "OLauncher"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v0, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V

    :cond_28
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo p0, "rebindWidgetsWhenUserUnlocked: widgetInfos.isEmpty()"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance v3, Lcom/android/launcher/x;

    invoke-direct {v3, p1, v0}, Lcom/android/launcher/x;-><init>(Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bindWidgetsUserUnlocked: locked widget host view size = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_60
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->reInflate()V

    goto :goto_60

    :cond_70
    return-void
.end method

.method public recreateRecentTouController()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mRecentContainer:Lcom/android/launcher3/RecentContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->recreateTouchController()V

    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZLjava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .param p6  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v9, p0

    move-object v10, p1

    move-object v6, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    instance-of v0, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v11, 0x1

    if-eqz v0, :cond_7f

    iget-object v0, v9, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    move-object v1, v6

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v1, v11}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_58

    :cond_27
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    if-eqz v0, :cond_53

    instance-of v1, v10, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_53

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/OplusBubbleTextView;

    new-instance v2, Lcom/android/launcher/FancyIconKey;

    iget-object v3, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    move-object v5, v6

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getDisplay()I

    move-result v1

    invoke-interface {v3, v5, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getFancyIconLocation(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)Lcom/android/launcher/FancyIconKey$AppLocationType;

    move-result-object v1

    invoke-direct {v2, p2, v1}, Lcom/android/launcher/FancyIconKey;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/FancyIconKey$AppLocationType;)V

    iget-object v0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v0, v2}, Lcom/android/launcher3/icons/IIconCacheExt;->removeFancyIcon(Lcom/android/launcher/FancyIconKey;)V

    :cond_53
    iget-object v0, v9, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, p1, v4}, Lcom/android/launcher3/OplusWorkspace;->removeWorkspaceItem(Landroid/view/View;Z)V

    :goto_58
    if-eqz p3, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/launcher3/model/OplusModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    sget-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_c9

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->writeHeytapMarketShortcutStatus(Ljava/lang/String;I)V

    goto :goto_c9

    :cond_7f
    instance-of v0, v6, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_9f

    move-object v0, v6

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    instance-of v1, v10, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_90

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    :cond_90
    iget-object v1, v9, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher3/OplusWorkspace;->removeWorkspaceItem(Landroid/view/View;Z)V

    if-eqz p3, :cond_c9

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0, v7, v8}, Lcom/android/launcher3/model/OplusModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    :cond_9f
    instance-of v0, v10, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_ca

    instance-of v2, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v2, :cond_af

    if-eqz p3, :cond_af

    move-object v0, v10

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->clearCardCachedElement()V

    :cond_af
    new-instance v12, Lcom/android/launcher/d;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p3

    move-object v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher/d;-><init>(Lcom/android/launcher/Launcher;ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_c6

    invoke-direct {p0, p1, v12}, Lcom/android/launcher/Launcher;->removeWidgetWithAnimate(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_c9

    :cond_c6
    invoke-virtual {v12}, Lcom/android/launcher/d;->run()V

    :cond_c9
    :goto_c9
    return v11

    :cond_ca
    const/4 v0, 0x0

    return v0
.end method

.method public removeLoadingView()V
    .registers 4

    const-string/jumbo v0, "removeLoadingView, mLoadingView: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUserUnlocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    const-string v2, "OLauncher"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-nez v0, :cond_29

    const-string/jumbo p0, "removeLoadingView: dragLayer is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mLoadingView:Landroid/view/View;

    :cond_31
    return-void
.end method

.method public resetPendingActivityRequestCode()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    return-void
.end method

.method public setDragListener()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/Launcher$8;

    invoke-direct {v1, p0}, Lcom/android/launcher/Launcher$8;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/a0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/a0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setFromApp(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mFromApp:Z

    return-void
.end method

.method public setHoldFolderOpen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    return-void
.end method

.method public setHoldFolderOpenForWorkEdu(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpenForWorkEdu:Z

    return-void
.end method

.method public setIsSwitchingLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsSwitchingLayout:Z

    return-void
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initOverLayScrollSpring()V

    :cond_8
    return-void
.end method

.method public setMultiWindowModeFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsMultiWindowModeChanged:Z

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const-string/jumbo p0, "setRequestedOrientation "

    const-string v0, "; caller: "

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OLauncher"

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTouchInProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mTouchInProgress:Z

    return-void
.end method

.method public setVerifyIconChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mVerifyIconChanged:Z

    return-void
.end method

.method public setWidgetTouchResizeEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mIsWidgetTouchResizeEnable:Z

    return-void
.end method

.method public setWorkspaceLoading(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    const-string/jumbo v0, "setWorkspaceLoading: value = "

    const-string v1, "OLauncher"

    invoke-static {v0, p1, v1}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mOnWorkspaceLoadedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;

    invoke-interface {v0}, Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;->onWorkspaceLoaded()V

    goto :goto_25

    :cond_35
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_38
    return-void
.end method

.method public setupViews()V
    .registers 6

    const-wide/16 v0, 0x8

    const-string/jumbo v2, "setupViews"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Lcom/android/launcher/touch/IconFallenStatesTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mIconFallenStatesTouchController:Lcom/android/launcher/touch/IconFallenStatesTouchController;

    new-instance v2, Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-direct {v2, p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mPullDownDetectController:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    new-instance v2, Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/dragndrop/OplusDragController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/OplusDragController;

    const v2, 0x7f0a04bf

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/RecentContainerView;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mRecentContainer:Lcom/android/launcher3/RecentContainerView;

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->setupViews()V

    const v2, 0x7f0a02b0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/FloatingIconViewContainer;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mFloatingIconContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

    const v2, 0x7f0a06ec

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/WorkSpaceScrimView;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspaceScrim:Lcom/android/launcher3/views/WorkSpaceScrimView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->initTransitionManager()V

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_60

    const v2, 0x7f0a0246

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mDockviewPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    check-cast v2, Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockView(Lcom/oplus/quickstep/dock/DockView;)V

    :cond_60
    sget-object v2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v3

    if-eqz v3, :cond_8c

    const v3, 0x7f0a0195

    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iput-object v3, p0, Lcom/android/launcher/Launcher;->mOplusCleanStorageLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-eqz v3, :cond_8c

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mOplusCleanStorageLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->initPhoneManagerEntranceState(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V

    sget-object v2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->init(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mOplusCleanStorageLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOplusCleanStorageFrameLayout(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V

    :cond_8c
    const v2, 0x7f0a04b7

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v2

    if-eqz v2, :cond_ae

    const v2, 0x7f0a05f8

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mTaskViewContainer:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    :cond_ae
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->initViewPool()V

    new-instance v2, Lcom/android/launcher/togglebar/ToggleBarManager;

    invoke-direct {v2, p0}, Lcom/android/launcher/togglebar/ToggleBarManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mToggleBarManager:Lcom/android/launcher/togglebar/ToggleBarManager;

    new-instance v2, Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/launcher/batchdrag/BatchDragViewManager;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    new-instance v2, Lcom/android/launcher/pagepreview/PagePreviewManager;

    invoke-direct {v2, p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mPagePreviewManager:Lcom/android/launcher/pagepreview/PagePreviewManager;

    invoke-virtual {v2}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setupViews()V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mBatchDragViewManager:Lcom/android/launcher/batchdrag/BatchDragViewManager;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/OplusDragController;->setDragScroller(Lcom/android/launcher3/dragndrop/DragScroller;)V

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mDragEventHandler:Lcom/android/launcher3/dragndrop/IDragEventHandler;

    invoke-interface {v2}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->setupDefaultManager()V

    sget-object v2, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/oplus/quickstep/rapidreaction/utils/SnapshotCardViewManager;->addSnapshotCardView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->addStaticBlurView()V

    const v2, 0x7f0a02b1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/android/launcher/Launcher;->mFloatingIconSurfaceContainerView:Landroid/view/SurfaceView;

    sget-object v2, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;->supportAsyncTransition()Z

    move-result v2

    if-eqz v2, :cond_11a

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mFloatingIconSurfaceContainerView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mFloatingIconSurfaceContainerView:Landroid/view/SurfaceView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mFloatingIconSurfaceContainerView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->setClickable(Z)V

    :cond_11a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public shareApkFile(Ljava/io/File;)V
    .registers 4

    const-string v0, "com.android.launcher.oplus_file_provider"

    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p1, 0x7f12053c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showAllAppsFromIntent(Z)V
    .registers 6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    new-instance v3, Lcom/android/launcher/t;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher/t;-><init>(Lcom/android/launcher/Launcher;Z)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/LauncherModeUtil;->switchLauncherModeAndNotify(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2d

    :cond_1b
    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->showAllAppsFromIntent(Z)V

    goto :goto_2d

    :cond_25
    const-string p0, "OLauncher"

    const-string/jumbo p1, "showAllAppsFromIntent do nothing in simple mode"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public showAppEncryptedHintDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "OLauncher"

    const-string/jumbo v0, "showAppEncryptedHintDialog -- mAppEncryptedHintDialog dialog is showing, don\'t show another!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->createSecurityHintDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppDialogManager;->setDialogIgnoreHomeKey(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/launcher/Launcher;->mAppEncryptedHintDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showOutOfSpaceMessage(I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Lcom/android/launcher/Launcher;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public showToastMsg(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_e
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x13461c1

    if-ne p2, v2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpen:Z

    const/16 v2, 0x4e21

    if-ne p2, v2, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mHoldFolderOpenForWorkEdu:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseQuickstepLauncher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 9

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_58

    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V

    instance-of v1, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_37

    move-object v1, p3

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-boolean v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    if-eqz v1, :cond_37

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_37

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusLauncherModel;->onRemoveGreenPointApps(Ljava/util/ArrayList;)V

    :cond_37
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_65

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    iget-object v3, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v1, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {p0, v2}, Lcom/android/common/util/DrawAppSortManagerUtil;->handleAppInfoClick(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V

    goto :goto_65

    :cond_58
    if-eqz v0, :cond_65

    instance-of v1, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_65

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mStartCardActivityHelper:Lcom/oplus/card/helper/StartCardActivityHelper;

    if-eqz v1, :cond_6c

    invoke-virtual {v1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->clearLastStart(Landroid/content/Intent;)V

    :cond_6c
    if-eqz v0, :cond_74

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFastUnlockManager:Lcom/android/keyguardservice/FastUnlockManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguardservice/FastUnlockManager;->setIgnoreSkipByLauncher(Z)V

    :cond_74
    iget-object p0, p0, Lcom/android/launcher/Launcher;->mLauncherLifecycleObserver:Lcom/android/launcher/ILauncherLifecycleObserver;

    if-eqz p0, :cond_7c

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/android/launcher/ILauncherLifecycleObserver;->onPostStartActivitySafely(ZLandroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_84

    :cond_7c
    const-string p0, "OLauncher"

    const-string/jumbo p1, "startActivitySafely -- mLauncherLifecycleObserver is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    return v0
.end method

.method public startBinding()V
    .registers 5

    const-string/jumbo v0, "startBinding -- isLandscape = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", availableWidthPx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OLauncher"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isInstance()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->clearCallBacks()V

    :cond_54
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->cancelHotseatExpandAnimate()V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLauncherFinishBindFlag(Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    const-string v0, "Hotseat_expand"

    const-string/jumbo v2, "startBinding setEnableUpdateExpandFlag:false"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLauncherOnBinding(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->updateNumShownHotseatIconsIfNecessary(Lcom/android/launcher3/OplusDeviceProfile;)V

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->startBinding()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->resetWallpaperOffsetterNumScreens()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v0, v0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->reInitEnableState()V

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->bindExitChildrenModeIcon()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->updateQueryUi()V

    :cond_a2
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {p0}, Lcom/android/launcher3/icons/IIconCacheExt;->clearFancyDrawable()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/card/manager/domain/CardManager;->setCreateWithEmptyConfig(Z)V

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public supportsAdaptiveIconAnimation(Landroid/view/View;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->supportsAdaptiveIconAnimation(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public tryAddCardByStore(I)V
    .registers 11

    const-string/jumbo v0, "tryAddCardByStore, cardType = "

    const-string v1, "Card"

    const-string v2, "OLauncher"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->getInnerConfigMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string/jumbo v0, "tryAddCardByStore failed, InnerConfigMap size= "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager;->getInnerConfigMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCardManager.getInnerConfigMap ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager;->getInnerConfigMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_4e
    const-string/jumbo v0, "tryAddCardByStore failed, InnerConfigMap = null"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->getCardConfigMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_9a

    const-string/jumbo v3, "tryAddCardByStore failed, CardConfigMap.size = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->getCardConfigMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cardConfigInfoManager.getCardConfigMap= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->getCardConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_9a
    const-string/jumbo v0, "tryAddCardByStore failed, CardConfigMap = null"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryAddCardByStore failed, cardType = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    if-eqz v3, :cond_c1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, -0x1

    move-object v6, p0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->addCardResultToThemeStore(Lcom/android/launcher3/card/LauncherCardInfo;ZLcom/android/launcher/Launcher;II)V

    :cond_c1
    return-void

    :cond_c2
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, -0x69

    if-ne v3, v4, :cond_14f

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12d

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e5

    goto :goto_12d

    :cond_e5
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByComponentNameName(Landroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    if-nez v3, :cond_122

    const-string/jumbo v3, "tryAddCardByStore failed: widgetItem, CN = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    if-eqz v3, :cond_121

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, -0x3

    move-object v6, p0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->addCardResultToThemeStore(Lcom/android/launcher3/card/LauncherCardInfo;ZLcom/android/launcher/Launcher;II)V

    :cond_121
    return-void

    :cond_122
    new-instance v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v0, v3, v7}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    iput p1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    invoke-virtual {p0, v0, v6, v5}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z

    goto :goto_157

    :cond_12d
    :goto_12d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryAddCardByStore failed: ComponentName, configInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mAreaWidgetEditViewModel:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    if-eqz v3, :cond_14e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, -0x2

    move-object v6, p0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->addCardResultToThemeStore(Lcom/android/launcher3/card/LauncherCardInfo;ZLcom/android/launcher/Launcher;II)V

    :cond_14e
    return-void

    :cond_14f
    new-instance p1, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-direct {p1, v0, v7}, Lcom/android/launcher3/card/PendingAddCardInfo;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V

    invoke-virtual {p0, p1, v6, v5}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z

    :goto_157
    return-void
.end method

.method public tryAndUpdatePredictedApps()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updatePredictedApps()V

    :cond_11
    return-void
.end method

.method public uninstallOrDisableApplication(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 4

    if-nez p1, :cond_b

    const-string p0, "OLauncher"

    const-string/jumbo p1, "uninstallOrDisableApplication. The itemInfo is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, ""

    goto :goto_1c

    :cond_14
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    :cond_23
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/util/PackageUtils;->isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {p1}, Lcom/android/common/util/PackageUtils;->isInForbidUnstallList(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_5a

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isStillInDownloading()Z

    move-result v1

    if-eqz v1, :cond_5a

    :cond_44
    iput-object p1, p0, Lcom/android/launcher/Launcher;->mUninstallPkgInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->showUninstallPanel()V

    goto :goto_5a

    :cond_52
    new-instance v1, Lcom/android/launcher/Launcher$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher/Launcher$5;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public updateCellLayoutBgRender()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v2, :cond_1c

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->updateBackgroundRender()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public updateDeviceProfile()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onDeviceProfileInitiated()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/OplusModelWriter;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/OplusLauncherRootView;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->dispatchInsets()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->refreshSystemWindowInsets()V

    :cond_31
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public updateRecommendFolder(Lcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;",
            "Lcom/android/launcher/folder/download/model/MarketRecommendModel;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateFolderFromStore(Lcom/android/launcher3/util/IntSparseArrayMap;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V

    return-void
.end method
