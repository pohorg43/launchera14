.class public Lcom/android/wm/shell/splitscreen/SplitScreenController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;,
        Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;,
        Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitEnterReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
        ">;",
        "Lcom/android/wm/shell/sysui/KeyguardChangeListener;"
    }
.end annotation


# static fields
.field public static final ENTER_REASON_DRAG:I = 0x2

.field public static final ENTER_REASON_LAUNCHER:I = 0x3

.field public static final ENTER_REASON_MULTI_INSTANCE:I = 0x1

.field public static final ENTER_REASON_UNKNOWN:I = 0x0

.field public static final EXIT_MINIZIED_REASON_KEYGUARD_SHOW:I = 0xd

.field public static final EXIT_REASON_APP_DOES_NOT_SUPPORT_MULTIWINDOW:I = 0x1

.field public static final EXIT_REASON_APP_FINISHED:I = 0x2

.field public static final EXIT_REASON_APP_REQUEST:I = 0xe

.field public static final EXIT_REASON_CHILD_TASK_ENTER_PIP:I = 0x9

.field public static final EXIT_REASON_CHILD_TASK_ENTER_ZOOM:I = 0xc

.field public static final EXIT_REASON_DEVICE_FOLDED:I = 0x3

.field public static final EXIT_REASON_DRAG_DIVIDER:I = 0x4

.field public static final EXIT_REASON_FULLSCREEN_SHORTCUT:I = 0xb

.field public static final EXIT_REASON_RECREATE_SPLIT:I = 0xa

.field public static final EXIT_REASON_RETURN_HOME:I = 0x5

.field public static final EXIT_REASON_ROOT_TASK_VANISHED:I = 0x6

.field public static final EXIT_REASON_SCREEN_LOCKED:I = 0x7

.field public static final EXIT_REASON_SCREEN_LOCKED_SHOW_ON_TOP:I = 0x8

.field public static final EXIT_REASON_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplitScreenController"


# instance fields
.field private final mAppsSupportMultiInstances:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mDragAndDropController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;"
        }
    .end annotation
.end field

.field private mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

.field private mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private final mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mRecentTasksOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

.field public mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/splitscreen/SplitScreenController$1;)V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-static {p11}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDragAndDropController:Ljava/util/Optional;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    invoke-static/range {p15 .. p15}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    new-instance v2, Lcom/android/wm/shell/splitscreen/m1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/m1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    move-object v3, p2

    invoke-virtual {p2, v2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$array;->config_appsSupportMultiInstancesSplit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/splitscreen/SplitScreenController$1;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDragAndDropController:Ljava/util/Optional;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_54

    new-instance v2, Lcom/android/wm/shell/splitscreen/t0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/t0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    move-object v3, p2

    invoke-virtual {p2, v2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$array;->config_appsSupportMultiInstancesSplit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    return-void
.end method

.method public static synthetic a(Landroid/app/PendingIntent;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->lambda$startIntent$1(Landroid/app/PendingIntent;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 13

    invoke-direct/range {p0 .. p12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 13

    invoke-direct/range {p0 .. p12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->lambda$getPackageName$2(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->lambda$onInit$0(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->lambda$getUserId$3(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public static exitReasonToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_30

    packed-switch p0, :pswitch_data_34

    const-string/jumbo v0, "unknown reason, reason int = "

    invoke-static {v0, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f  #0xa
    const-string p0, "RECREATE_SPLIT"

    return-object p0

    :pswitch_12  #0x9
    const-string p0, "CHILD_TASK_ENTER_PIP"

    return-object p0

    :pswitch_15  #0x8
    const-string p0, "SCREEN_LOCKED_SHOW_ON_TOP"

    return-object p0

    :pswitch_18  #0x7
    const-string p0, "SCREEN_LOCKED"

    return-object p0

    :pswitch_1b  #0x6
    const-string p0, "ROOT_TASK_VANISHED"

    return-object p0

    :pswitch_1e  #0x5
    const-string p0, "RETURN_HOME"

    return-object p0

    :pswitch_21  #0x4
    const-string p0, "DRAG_DIVIDER"

    return-object p0

    :pswitch_24  #0x3
    const-string p0, "DEVICE_FOLDED"

    return-object p0

    :pswitch_27  #0x2
    const-string p0, "APP_FINISHED"

    return-object p0

    :pswitch_2a  #0x1
    const-string p0, "APP_DOES_NOT_SUPPORT_MULTIWINDOW"

    return-object p0

    :pswitch_2d  #0x0
    const-string p0, "UNKNOWN_EXIT"

    return-object p0

    :cond_30
    const-string p0, "KEYGUARD_SHOW_EXIT_MINIZIED"

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_2a  #00000001
        :pswitch_27  #00000002
        :pswitch_24  #00000003
        :pswitch_21  #00000004
        :pswitch_1e  #00000005
        :pswitch_1b  #00000006
        :pswitch_18  #00000007
        :pswitch_15  #00000008
        :pswitch_12  #00000009
        :pswitch_f  #0000000a
    .end packed-switch
.end method

.method private getPackageName(I)Ljava/lang/String;
    .registers 6
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto/16 :goto_7f

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    sget-object p1, Lcom/android/wm/shell/splitscreen/n;->a:Lcom/android/wm/shell/splitscreen/n;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isInFlexibleEmbedded(Landroid/app/TaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_78

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p1

    if-eqz p1, :cond_78

    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_78

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    const/4 v0, 0x1

    move v2, v0

    :goto_37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-gt v2, v3, :cond_78

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_75

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v3, :cond_75

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    if-eqz v3, :cond_75

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPackageName isInFlexibleEmbedded "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_78
    :goto_78
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-nez p1, :cond_7f

    return-object v1

    :cond_7f
    :goto_7f
    if-eqz p0, :cond_87

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    :cond_87
    return-object v1
.end method

.method private getUserId(I)I
    .registers 4
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_22

    :cond_c
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    sget-object p1, Lcom/android/quickstep/z1;->c:Lcom/android/quickstep/z1;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-nez p1, :cond_22

    return v1

    :cond_22
    :goto_22
    if-eqz p0, :cond_26

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    :cond_26
    return v1
.end method

.method private static synthetic lambda$getPackageName$2(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->getTopRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getUserId$3(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->getTopRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onInit$0(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method private static synthetic lambda$startIntent$1(Landroid/app/PendingIntent;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->findTaskInBackground(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method private moveToStage(IILandroid/window/WindowContainerTransaction;)Z
    .registers 6
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(I)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->moveToStage(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/WindowContainerTransaction;)Z

    move-result p0

    return p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "taskId is in split"

    invoke-static {p2, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown taskId"

    invoke-static {p2, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .registers 7

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "RecentsAnimationSplitTasks"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, v1, p3}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    :goto_26
    array-length p3, p1

    if-ge v1, p3, :cond_40

    aget-object p3, p1, v1

    iget-object v0, p3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2, v0, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_40
    return-object p0
.end method

.method private startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 25
    .param p6  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move/from16 v1, p4

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v1, v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v1, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    move-result v4

    move/from16 v5, p2

    invoke-static {v2, v3, v5, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6b

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x8000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v5, :cond_3b

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x5e7bb0dd

    const-string v7, "Adding MULTIPLE_TASK"

    invoke-static {v5, v6, v3, v7, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    move v9, v1

    move-object v7, v2

    goto :goto_6d

    :cond_3e
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_51
    const/4 v1, -0x1

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v2, :cond_60

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x2f294008

    const-string v6, "Cancel entering split as not supporting multi-instances"

    invoke-static {v2, v5, v3, v6, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_60
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/wm/shell/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_6b
    move v9, v1

    move-object v7, v4

    :goto_6d
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v5 .. v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 25
    .param p6  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move/from16 v1, p4

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v1, v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v1, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    move-result v4

    move/from16 v5, p2

    invoke-static {v2, v3, v5, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_58

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x8000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v5, :cond_3b

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x5e7bb0dd

    const-string v7, "Adding MULTIPLE_TASK"

    invoke-static {v5, v6, v3, v7, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    move v9, v1

    move-object v7, v2

    goto :goto_5a

    :cond_3e
    const/4 v1, -0x1

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v2, :cond_4d

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x2f294008

    const-string v6, "Cancel entering split as not supporting multi-instances"

    invoke-static {v2, v5, v3, v6, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4d
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/wm/shell/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_58
    move v9, v1

    move-object v7, v4

    :goto_5a
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v5 .. v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 30
    .param p9  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p2

    move/from16 v4, p6

    invoke-static {v1, v2, v3, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5e

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v4, :cond_3c

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x5e7bb0dd

    const-string v7, "Adding MULTIPLE_TASK"

    invoke-static {v4, v6, v2, v7, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    move-object/from16 v9, p5

    move-object v6, v1

    move-object v10, v5

    goto :goto_62

    :cond_41
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x2f294008

    const-string v5, "Cancel entering split as not supporting multi-instances"

    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/wm/shell/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object v6, v3

    move-object v9, v6

    move-object v10, v9

    goto :goto_62

    :cond_5e
    move-object/from16 v9, p5

    move-object v6, v3

    move-object v10, v6

    :goto_62
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-virtual/range {v4 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntents(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 30
    .param p9  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p2

    move/from16 v4, p6

    invoke-static {v1, v2, v3, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5e

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v4, :cond_3c

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x5e7bb0dd

    const-string v7, "Adding MULTIPLE_TASK"

    invoke-static {v4, v6, v2, v7, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    move-object/from16 v9, p5

    move-object v6, v1

    move-object v10, v5

    goto :goto_62

    :cond_41
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x2f294008

    const-string v5, "Cancel entering split as not supporting multi-instances"

    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/wm/shell/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object v6, v3

    move-object v9, v6

    move-object v10, v9

    goto :goto_62

    :cond_5e
    move-object/from16 v9, p5

    move-object v6, v3

    move-object v10, v6

    :goto_62
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-virtual/range {v4 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method


# virtual methods
.method public addSplitStatusListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->addSplitStatusListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)Z

    move-result p0

    return p0
.end method

.method public adjustChangeForFlexibleMinimizeIfNeed(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer;->adjustChangeForFlexibleMinimizeIfNeed(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public asSplitScreen()Lcom/android/wm/shell/splitscreen/SplitScreen;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    return-object p0
.end method

.method public attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public createStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .registers 15

    new-instance v13, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget-object v11, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v12, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    const/4 v2, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;-><init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V

    return-object v13
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public enterSplitScreen(IZ)V
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->enterSplitScreen(IZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public enterSplitScreen(IZLandroid/window/WindowContainerTransaction;)V
    .registers 4

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)Z

    return-void
.end method

.method public enterSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->enterSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    return-void
.end method

.method public exitSplitScreen(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    return-void
.end method

.method public exitSplitScreen(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZZ)V

    return-void
.end method

.method public exitSplitScreenAndGoHome()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->exitSplitScreenAndGoHome(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    return-void
.end method

.method public exitSplitScreenOnHide(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreenOnHide(Z)V

    return-void
.end method

.method public finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public getActivateSplitPosition(Landroid/app/TaskInfo;)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    move-result p0

    return p0
.end method

.method public getBracketModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getBracketModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCompactModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getCompactModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDisplayController()Lcom/android/wm/shell/common/DisplayController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method public getDisplayImeController()Lcom/android/wm/shell/common/DisplayImeController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    return-object p0
.end method

.method public getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    return-object p0
.end method

.method public getHomeOrRecentsTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getHomeOrRecentsTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMainRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMainSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getMainTopSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainTopSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getMainTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getRootSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getRootTaskId()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getRootTaskId()I

    move-result p0

    return p0
.end method

.method public getSideRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSideSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getSideTopSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideTopSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getSideTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSplitPosition(I)I
    .registers 2
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitPosition(I)I

    move-result p0

    return p0
.end method

.method public getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-object p0
.end method

.method public getStageOfTask(I)I
    .registers 2
    .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(I)I

    move-result p0

    return p0
.end method

.method public getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_17

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTaskId(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskSurface(I)Landroid/view/SurfaceControl;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-object p0
.end method

.method public getVisibleFlexibleTaskInfo()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getVisibleFlexibleTaskInfo()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleStandardFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getVisibleStandardFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getZoomSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getZoomTaskSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public goToFullscreenFromSplit()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->goToFullscreenFromSplit()V

    return-void
.end method

.method public inflateSplitDecor()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->inflateSplitDecor()V

    return-void
.end method

.method public isInNormalSplitScreenMode()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInNormalSplitScreenMode()Z

    move-result p0

    return p0
.end method

.method public isInSplitScreenMode()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSplitScreenMode()Z

    move-result p0

    return p0
.end method

.method public isLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public isLaunchToSplit(Landroid/app/TaskInfo;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLaunchToSplit(Landroid/app/TaskInfo;)Z

    move-result p0

    return p0
.end method

.method public isMaintainLayerTask(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->isMaintainLayerTask(I)Z

    move-result p0

    return p0
.end method

.method public isMinimized()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result p0

    return p0
.end method

.method public isOnCanvas()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->isOnCanvas()Z

    move-result p0

    return p0
.end method

.method public isOnThreeFlexibleCanvas()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->isOnThreeFlexibleCanvas()Z

    move-result p0

    return p0
.end method

.method public isSplitScreenVisible()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p0

    return p0
.end method

.method public isTaskInSplitScreen(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isTaskInSplitScreenForeground(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isTaskRootOrStageRoot(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isRootOrStageRoot(I)Z

    move-result p0

    return p0
.end method

.method public matainSplitState(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->matainSplitState(Z)V

    return-void
.end method

.method public moveTaskToFullscreen(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->moveTaskToFullscreen(I)V

    return-void
.end method

.method public moveTaskToSplitStage(IZLcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 12

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### move:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to letfOrTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->moveTaskToSplitStage(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/ShellTaskOrganizer;IZLcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public moveTasksToSplitStages(IIIILcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->moveTasksToSplitStages(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/ShellTaskOrganizer;IIIILcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public moveToSideStage(II)Z
    .registers 4
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)Z

    move-result p0

    return p0
.end method

.method public needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onFinishedWakingUp()V

    return-void
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 4

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEvictInvisibleChildTasks(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_28
    const-string v1, "SplitScreenController#onGoingToRecentsLegacy"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/RemoteAnimationTarget;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1

    :cond_45
    return-object v1
.end method

.method public onInit()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/quickstep/v1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/v1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    const-string/jumbo v2, "splitscreen"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/launcher/layout/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/a;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    const-string v2, "extra_shell_split_screen"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->createStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    :cond_2f
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDragAndDropController:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/bubbles/j;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/j;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v4, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->onOrganizerRegistered(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->init(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_9
    array-length v4, p1

    if-ge v2, v4, :cond_17

    aget-object v4, p1, v2

    iget v4, v4, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v4, :cond_14

    add-int/lit8 v3, v3, 0x1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    const/4 v2, 0x2

    if-ge v3, v2, :cond_1b

    return-object v1

    :cond_1b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_28

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_28
    const-string v2, "SplitScreenController#onStartingSplitLegacy"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v1, 0x1

    :try_start_39
    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    aput-object p0, v1, v0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_53

    array-length p0, p1

    :goto_44
    if-ge v0, p0, :cond_52

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_52
    return-object v1

    :catchall_53
    move-exception p0

    array-length v1, p1

    :goto_55
    if-ge v0, v1, :cond_63

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_60

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_63
    throw p0
.end method

.method public prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    return-void
.end method

.method public prepareExitSplitScreen(Landroid/window/WindowContainerTransaction;I)V
    .registers 3
    .param p2  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public removeFromSideStage(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->removeFromSideStage(I)Z

    move-result p0

    return p0
.end method

.method public removeSplitStatusListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->removeSplitStatusListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)Z

    move-result p0

    return p0
.end method

.method public restoreSideStageAlphaIfNeed(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->restoreSideStageAlphaIfNeed(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public setDividerShow(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->setDividerShow(Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)V

    return-void
.end method

.method public setMaintainLayerTask(IZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->setMaintainLayerTask(IZ)V

    return-void
.end method

.method public setSideStagePosition(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public setZoomToFlexibleController(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->setZoomToFlexibleController(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)V

    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 13
    .param p4  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v1

    const/4 v2, -0x1

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->interceptStartTaskOrIntentToSplit(ILandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    if-nez p3, :cond_19

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_19
    const/high16 v0, 0x40000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getUserId(I)I

    move-result v2

    invoke-static {v0, v1, p2, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v4, Lcom/android/wm/shell/splitscreen/m;

    invoke-direct {v4, p1, p2}, Lcom/android/wm/shell/splitscreen/m;-><init>(Landroid/app/PendingIntent;I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p2, :cond_67

    iget p1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p0, :cond_66

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x16a2b80c

    const-string p2, "Start task in background"

    invoke-static {p0, p1, v2, p2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    return-void

    :cond_67
    const/high16 p2, 0x8000000

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p2, :cond_a4

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x5e7bb0dd

    const-string v4, "Adding MULTIPLE_TASK"

    invoke-static {p2, v1, v2, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a4

    :cond_7b
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const-string/jumbo p1, "startIntent"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->switchSplitPosition(Ljava/lang/String;)V

    return-void

    :cond_8a
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p1, :cond_98

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, 0x2f294008

    const-string p3, "Cancel entering split as not supporting multi-instances"

    invoke-static {p1, p2, v2, p3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_98
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wm/shell/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_a4
    :goto_a4
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->exitFlexibleEmbeddedTask(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V
    .registers 9
    .param p4  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x3

    invoke-virtual {v0, p6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRequestToSplit(Lcom/android/internal/logging/InstanceId;I)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    if-nez p4, :cond_7

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_7
    invoke-static {p4}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p4

    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getUserId(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v0, :cond_69

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x5e7bb0dd

    const-string v4, "Adding MULTIPLE_TASK"

    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_69

    :cond_40
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const-string/jumbo p1, "startShortcut"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->switchSplitPosition(Ljava/lang/String;)V

    return-void

    :cond_4f
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz p1, :cond_5d

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, 0x2f294008

    const-string p3, "Cancel entering split as not supporting multi-instances"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wm/shell/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V
    .registers 9
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x3

    invoke-virtual {v0, p6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRequestToSplit(Lcom/android/internal/logging/InstanceId;I)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 21
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move v1, p3

    if-nez p2, :cond_b

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v2

    goto :goto_c

    :cond_b
    move-object v5, p2

    :goto_c
    invoke-static {v5}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {p3, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {p3, v7}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    move-result v7

    invoke-static {v3, v4, v6, v7}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_45

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v2, :cond_72

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x5e7bb0dd

    const-string v7, "Adding MULTIPLE_TASK"

    invoke-static {v2, v3, v6, v7, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_72

    :cond_45
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v2, p3}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_58
    const/4 v1, -0x1

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v2, :cond_67

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x2f294008

    const-string v7, "Cancel entering split as not supporting multi-instances"

    invoke-static {v2, v3, v6, v7, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_67
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/wm/shell/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_72
    :goto_72
    move v6, v1

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object v4, p1

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 22
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    move/from16 v1, p3

    if-nez p2, :cond_b

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_c

    :cond_b
    move-object v2, p2

    :goto_c
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v1, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v1, v6}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_49

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v3, :cond_63

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x5e7bb0dd

    const-string v7, "Adding MULTIPLE_TASK"

    invoke-static {v3, v6, v5, v7, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_63

    :cond_49
    const/4 v1, -0x1

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v3, :cond_58

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x2f294008

    const-string v7, "Cancel entering split as not supporting multi-instances"

    invoke-static {v3, v6, v5, v7, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_58
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/wm/shell/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_63
    :goto_63
    move v7, v1

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object v5, p1

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .registers 24
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v2, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->interceptStartTaskOrIntentToSplit(ILandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    :cond_1d
    const-string v1, "androidx.activity.extra"

    const/4 v2, 0x0

    if-eqz v9, :cond_27

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_28

    :cond_27
    move-object v3, v2

    :goto_28
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_37

    sget-object v10, Lcom/oplus/splitscreen/applock/AppLockManager;->PENDING_ENTER_KEY_FROM_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v5, :cond_37

    move v10, v4

    goto :goto_38

    :cond_37
    move v10, v6

    :goto_38
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v11

    if-ne v11, v5, :cond_4d

    if-eqz v9, :cond_4b

    const-string v11, "TYPE_ENTER_NIMIMIZED"

    invoke-virtual {v9, v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto :goto_55

    :cond_4b
    move v11, v5

    goto :goto_55

    :cond_4d
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v11

    :goto_55
    if-eqz v9, :cond_60

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object v12, v12, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->START_SPLIT_PAIR_IN_MINIMIZED:Ljava/lang/String;

    invoke-virtual {v9, v12, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_61

    :cond_60
    move v12, v6

    :goto_61
    new-array v13, v4, [I

    new-instance v15, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;

    invoke-direct {v15, v0, v13, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;[II)V

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v14, v5, v8, v9, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v5, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v14, v5

    invoke-direct/range {v14 .. v19}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-static {v5}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mExtImpl:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->createExtraBundleForEnterMinizied(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v8

    if-ne v8, v4, :cond_c6

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v8

    if-nez v8, :cond_c6

    if-nez v12, :cond_c6

    if-eqz v10, :cond_ac

    move-object v8, v3

    goto :goto_ad

    :cond_ac
    move-object v8, v5

    :goto_ad
    invoke-static {v8}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->addExtraBundle(Landroid/os/Bundle;)V

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isHorizontalDivision(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c6

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenGestureSnapshotRunning(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->setIsSplitScreenGestureSnapshotRunning()V

    :cond_c6
    if-eqz v10, :cond_c9

    goto :goto_ca

    :cond_c9
    move-object v3, v5

    :goto_ca
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_cd
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, v7, v2}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v1

    aput v1, v13, v6

    aget v1, v13, v6

    if-eqz v1, :cond_e0

    aget v1, v13, v6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_105

    :cond_e0
    const/4 v1, 0x3

    if-ne v11, v1, :cond_f3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterMinimizedType(I)I

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsEnteringMinimized()V

    :cond_f3
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onStartTaskToSplit()V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_fc} :catch_fd

    goto :goto_105

    :catch_fd
    move-exception v0

    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to launch task"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_105
    :goto_105
    return-void
.end method

.method public supportMultiInstancesSplit(Ljava/lang/String;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_16

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    return v0
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public updateSplitScreenSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public updateSurfaceBounds(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method
