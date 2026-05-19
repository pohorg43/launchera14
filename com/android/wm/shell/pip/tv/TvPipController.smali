.class public Lcom/android/wm/shell/pip/tv/TvPipController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;
.implements Lcom/android/wm/shell/pip/tv/TvPipBoundsController$PipBoundsListener;
.implements Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/sysui/UserChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;,
        Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;,
        Lcom/android/wm/shell/pip/tv/TvPipController$State;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_PIP:Ljava/lang/String; = "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

.field public static final ACTION_MOVE_PIP:Ljava/lang/String; = "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

.field public static final ACTION_SHOW_PIP_MENU:Ljava/lang/String; = "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

.field public static final ACTION_TOGGLE_EXPANDED_PIP:Ljava/lang/String; = "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

.field public static final ACTION_TO_FULLSCREEN:Ljava/lang/String; = "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

.field private static final NONEXISTENT_TASK_ID:I = -0x1

.field private static final STATE_NO_PIP:I = 0x0

.field private static final STATE_PIP:I = 0x1

.field private static final STATE_PIP_MENU:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TvPipController"


# instance fields
.field private final mActionBroadcastReceiver:Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

.field private final mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mEduTextWindowExitAnimationDuration:I

.field private final mImpl:Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mPinnedTaskId:I

.field private final mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field private mPipForceCloseDelay:I

.field private final mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

.field private final mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

.field private final mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

.field private final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field private final mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field private mResizeAnimationDuration:I

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private mState:I

.field private final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field private final mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

.field private final mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

.field private final mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

.field private final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

.field private final mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

.field private final mWmShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 30

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;Lcom/android/wm/shell/pip/tv/TvPipController$1;)V

    iput-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mImpl:Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    const/4 v7, -0x1

    iput v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    move-object/from16 v7, p18

    iput-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v7, p19

    iput-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v7, p3

    iput-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v7, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-direct {v7, p1, v9}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    move-object v9, p4

    iput-object v9, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p5, v7}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v7

    invoke-virtual {p5, v7}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->setDisplayId(I)V

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    iput-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    invoke-virtual {v3, p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->setListener(Lcom/android/wm/shell/pip/tv/TvPipBoundsController$PipBoundsListener;)V

    iput-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    new-instance v3, Lcom/android/wm/shell/pip/tv/c;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/tv/c;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    invoke-direct {v2, p1, v5, v3}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    iput-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->setTvPipActionsProvider(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V

    iput-object v4, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {v4, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->setDelegate(Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;)V

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->setTvPipActionsProvider(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V

    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    invoke-direct {v1, p0, v8}, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;Lcom/android/wm/shell/pip/tv/TvPipController$1;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mActionBroadcastReceiver:Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mWmShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    new-instance v1, Lcom/android/quickstep/c1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    move-object v2, p2

    invoke-virtual {p2, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/tv/TvPipController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->executeAction(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePipToFullscreen()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updateExpansionState()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/pip/tv/TvPipController;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/pip/tv/TvPipController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/wm/shell/pip/tv/TvPipController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/pip/tv/TvPipController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->showPictureInPictureMenu(Z)V

    return-void
.end method

.method public static synthetic access$200()Landroid/app/TaskInfo;
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/pip/tv/TvPipController;->getPinnedTaskInfo()Landroid/app/TaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$2000(Lcom/android/wm/shell/pip/tv/TvPipController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->executeAction(I)V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/wm/shell/pip/tv/TvPipController;I)I
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    return p1
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/PipMediaController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mActionBroadcastReceiver:Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipNotificationController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/tv/TvPipBoundsController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/pip/tv/TvPipController;)Lcom/android/wm/shell/pip/PipAppOpsListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->checkIfPinnedTaskIsGone()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->lambda$customClosePip$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->onInit()V

    return-void
.end method

.method private checkIfPinnedTaskIsGone()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TvPipController"

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x58723139

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-static {v0, v5, v4, v2, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/wm/shell/pip/tv/TvPipController;->getPinnedTaskInfo()Landroid/app/TaskInfo;

    move-result-object v0

    if-nez v0, :cond_34

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x7c827f8d

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v4

    invoke-static {v0, v5, v4, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->onPipDisappeared()V

    :cond_34
    return-void
.end method

.method private closeCurrentPiP(I)V
    .registers 6

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    if-eq v0, p1, :cond_1a

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_19

    const-string p0, "TvPipController"

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x45c7dcdd

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    return-void

    :cond_1a
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePip()V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->onPipDisappeared()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/Pip;
    .registers 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipController;

    move-object/from16 p0, v0

    invoke-direct/range {v0 .. v19}, Lcom/android/wm/shell/pip/tv/TvPipController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mImpl:Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

    return-object v0
.end method

.method private executeAction(I)V
    .registers 4

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 v0, 0x5

    if-eq p1, v0, :cond_f

    goto :goto_22

    :cond_f
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->customClosePip()V

    goto :goto_22

    :cond_13
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->togglePipExpansion()V

    goto :goto_22

    :cond_17
    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->showPictureInPictureMenu(Z)V

    goto :goto_22

    :cond_1b
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->closePip()V

    goto :goto_22

    :cond_1f
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePipToFullscreen()V

    :goto_22
    return-void
.end method

.method private static getPinnedTaskInfo()Landroid/app/TaskInfo;
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const-string v2, "TvPipController"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x604609ce

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-static {v0, v5, v4, v3, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    const/4 v0, 0x2

    :try_start_16
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v5

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v6, :cond_34

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, 0x472e3b84

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v2, v9, v4

    aput-object v6, v9, v1

    invoke-static {v7, v8, v4, v3, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_34} :catch_35

    :cond_34
    return-object v5

    :catch_35
    move-exception v5

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v6, :cond_4c

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x6418039a

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v4

    aput-object v5, v0, v1

    invoke-static {v6, v7, v4, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    return-object v3
.end method

.method private isPipShown()Z
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private synthetic lambda$customClosePip$0()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->closeCurrentPiP(I)V

    return-void
.end method

.method private movePipToFullscreen()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const-string v0, "TvPipController"

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {v2}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0xff47409

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    const/4 v0, 0x1

    aput-object v2, v6, v0

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mResizeAnimationDuration:I

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->exitPip(IZ)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->onPipDisappeared()V

    return-void
.end method

.method private movePipToOppositeSide()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_15

    const-string v0, "TvPipController"

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x23b4df2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v0

    const/4 v1, 0x5

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePip(I)V

    goto :goto_34

    :cond_25
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_34

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePip(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method private onInit()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/PipTransitionController;->registerPipTransitionCallback(Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->reloadResources()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->registerPipParamsChangedListener(Lcom/android/wm/shell/pip/PipParamsChangedForwarder;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->registerTaskStackListenerCallback(Lcom/android/wm/shell/common/TaskStackListenerImpl;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mWmShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->registerWmShellPinnedStackListener(Lcom/android/wm/shell/WindowManagerShellWrapper;)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->registerSessionListenerForCurrentUser()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addUserChangeListener(Lcom/android/wm/shell/sysui/UserChangeListener;)V

    return-void
.end method

.method private onPipDisappeared()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const-string v0, "TvPipController"

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {v2}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x631c4125

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    const/4 v0, 0x1

    aput-object v2, v6, v0

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->dismiss()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mActionBroadcastReceiver:Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->unregister()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->resetTvPipState()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->reset()V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    return-void
.end method

.method private registerPipParamsChangedListener(Lcom/android/wm/shell/pip/PipParamsChangedForwarder;)V
    .registers 3

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipController$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->addListener(Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;)V

    return-void
.end method

.method private registerSessionListenerForCurrentUser()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipMediaController;->registerSessionListenerForCurrentUser()V

    return-void
.end method

.method private registerTaskStackListenerCallback(Lcom/android/wm/shell/common/TaskStackListenerImpl;)V
    .registers 3

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipController$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    return-void
.end method

.method private registerWmShellPinnedStackListener(Lcom/android/wm/shell/WindowManagerShellWrapper;)V
    .registers 7

    :try_start_0
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipController$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipController$3;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/WindowManagerShellWrapper;->addPinnedStackListener(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_26

    :catch_9
    move-exception p0

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p1, :cond_26

    const-string p1, "TvPipController"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x5e3c5f2e

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-void
.end method

.method private reloadResources()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$integer;->config_pipResizeAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mResizeAnimationDuration:I

    sget v1, Lcom/android/wm/shell/R$integer;->config_pipForceCloseDelay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipForceCloseDelay:I

    sget v1, Lcom/android/wm/shell/R$integer;->pip_edu_text_window_exit_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mEduTextWindowExitAnimationDuration:I

    return-void
.end method

.method private setState(I)V
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_2d

    const-string v0, "TvPipController"

    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {v2}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x591cc2b2

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    return-void
.end method

.method private showPictureInPictureMenu(Z)V
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "TvPipController"

    const/4 v5, 0x0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x436c30ce

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v5

    aput-object v0, v8, v1

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    if-nez v0, :cond_37

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_36

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x520f08af

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v5

    invoke-static {p0, p1, v5, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    return-void

    :cond_37
    invoke-direct {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->showMovementMenu()V

    goto :goto_47

    :cond_42
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->showMenu()V

    :goto_47
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    return-void
.end method

.method private static stateToName(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const-string p0, "PIP_MENU"

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown state "

    invoke-static {v1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const-string p0, "PIP"

    return-object p0

    :cond_1a
    const-string p0, "NO_PIP"

    return-object p0
.end method

.method private togglePipExpansion()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-string v0, "TvPipController"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x5de4bf65

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvPipExpanded()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpansionToggled(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setTvPipManuallyCollapsed(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setTvPipExpanded(Z)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    return-void
.end method

.method private updateExpansionState()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvExpandedPipSupported()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getDesiredTvExpandedAspectRatio()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateExpansionEnabled(Z)V

    return-void
.end method

.method private updatePinnedStackBounds()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mResizeAnimationDuration:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds(IZ)V

    return-void
.end method

.method private updatePinnedStackBounds(IZ)V
    .registers 6

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_15

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->recalculatePipBounds(ZZIZ)V

    return-void
.end method


# virtual methods
.method public closeEduText()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mEduTextWindowExitAnimationDuration:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds(IZ)V

    return-void
.end method

.method public closePip()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->closeCurrentPiP(I)V

    return-void
.end method

.method public customClosePip()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipForceCloseDelay:I

    int-to-long v2, p0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public movePip(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravity(I)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getTvPipGravity()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateGravity(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    goto :goto_2c

    :cond_17
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_2c

    const-string p0, "TvPipController"

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x6c2695d8

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p1, :cond_22

    const-string p1, "TvPipController"

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0xb60a154

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getDefaultGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->reloadResources()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->onConfigurationChanged(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->getDefaultGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->isPipShown()Z

    move-result v1

    if-eqz v1, :cond_51

    if-eq p1, v0, :cond_51

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePipToOppositeSide()V

    :cond_51
    return-void
.end method

.method public onInMoveModeChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    return-void
.end method

.method public onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_1e

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0, p2, p3}, Lcom/android/wm/shell/pip/PipBoundsState;->setKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V

    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mResizeAnimationDuration:I

    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds(IZ)V

    :cond_1e
    return-void
.end method

.method public onMenuClosed()V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    const-string v0, "TvPipController"

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {v2}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0xa369699

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v2, v6, v1

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    return-void
.end method

.method public onPipTargetBoundsChange(Landroid/graphics/Rect;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onPipTransitionToTargetBoundsStarted(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPipTransitionCanceled(I)V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_22

    const-string v0, "TvPipController"

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x3da58982

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onPipTransitionFinished(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvPipExpanded()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updatePipExpansionState(Z)V

    return-void
.end method

.method public onPipTransitionFinished(I)V
    .registers 13

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    if-nez v2, :cond_e

    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    :cond_e
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v2, :cond_39

    const-string v2, "TvPipController"

    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {v3}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x171d8c74

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    aput-object v3, v9, v1

    const/4 v1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {p1, v6, v7, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onPipTransitionFinished(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->isTvPipExpanded()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updatePipExpansionState(Z)V

    return-void
.end method

.method public onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .registers 10

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result p2

    if-eqz p2, :cond_d

    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    if-nez p2, :cond_d

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updateExpansionState()V

    :cond_d
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p2, :cond_39

    const-string p2, "TvPipController"

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long v0, p1

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x6d2d5705

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 p2, 0x1

    aput-object p0, v5, p2

    const/4 p0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v5, p0

    invoke-static {p1, v2, v3, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .registers 3
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->registerSessionListenerForCurrentUser()V

    return-void
.end method
