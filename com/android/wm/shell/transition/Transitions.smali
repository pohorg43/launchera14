.class public Lcom/android/wm/shell/transition/Transitions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/Transitions$SettingsObserver;,
        Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;,
        Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;,
        Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;,
        Lcom/android/wm/shell/transition/Transitions$TransitionObserver;,
        Lcom/android/wm/shell/transition/Transitions$TransitionHandler;,
        Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;,
        Lcom/android/wm/shell/transition/Transitions$Track;,
        Lcom/android/wm/shell/transition/Transitions$ActiveTransition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/transition/Transitions;",
        ">;",
        "Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;"
    }
.end annotation


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z

.field private static final FLAG_DISSABLE_MERGE:I = 0x20000000

.field private static final FLAG_TRANSITION_FINISH_RELEASE:I = 0x40000000

.field public static final SHELL_TRANSITIONS_ROTATION:Z

.field private static final SYNC_ALLOWANCE_KEYGUARD_MS:I = 0x7d0

.field private static final SYNC_ALLOWANCE_MS:I = 0x78

.field public static final TAG:Ljava/lang/String; = "ShellTransitions"

.field public static final TRANSIT_CANCEL_ENTERING_DESKTOP_MODE:I = 0x3f5

.field public static final TRANSIT_ENTER_DESKTOP_MODE:I = 0x3f3

.field public static final TRANSIT_ENTER_FREEFORM:I = 0x3f2

.field public static final TRANSIT_EXIT_DESKTOP_MODE:I = 0x3f4

.field public static final TRANSIT_EXIT_PIP:I = 0x3e9

.field public static final TRANSIT_EXIT_PIP_TO_SPLIT:I = 0x3ea

.field public static final TRANSIT_MAXIMIZE:I = 0x3f0

.field public static final TRANSIT_OPLUS_FIRST_CUSTOM:I = 0x64

.field public static final TRANSIT_REMOVE_PIP:I = 0x3eb

.field public static final TRANSIT_RESTORE_FROM_MAXIMIZE:I = 0x3f1

.field public static final TRANSIT_SPLIT_DISMISS:I = 0x3ef

.field public static final TRANSIT_SPLIT_DISMISS_SNAP:I = 0x3ee

.field public static final TRANSIT_SPLIT_SCREEN_OPEN_TO_SIDE:I = 0x3ed

.field public static final TRANSIT_SPLIT_SCREEN_PAIR_OPEN:I = 0x3ec

.field public static final TRANSIT_ZOOM_CLOSE:I = 0x451


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultTransitionHandler:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

.field private mDisableForceSync:Z

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

.field private mIsRegistered:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrganizer:Landroid/window/WindowOrganizer;

.field private final mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$ActiveTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

.field private final mReadyDuringSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$ActiveTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field private final mRunWhenIdleQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

.field private mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

.field private final mTracer:Lcom/android/wm/shell/transition/Tracer;

.field private final mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$Track;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionAnimationScaleSetting:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "persist.wm.debug.shell_transit"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "persist.wm.debug.shell_transit_rotate"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    sput-boolean v1, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 22

    new-instance v11, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object v1, p1

    move-object/from16 v7, p7

    invoke-direct {v11, v7, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/transition/Transitions;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v10, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    const/4 v11, 0x0

    invoke-direct {v1, v0, v11}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    new-instance v1, Lcom/android/wm/shell/transition/SleepHandler;

    invoke-direct {v1}, Lcom/android/wm/shell/transition/SleepHandler;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

    new-instance v1, Lcom/android/wm/shell/transition/Tracer;

    invoke-direct {v1}, Lcom/android/wm/shell/transition/Tracer;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    const/4 v12, 0x0

    iput-boolean v12, v0, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    iput-boolean v12, v0, Lcom/android/wm/shell/transition/Transitions;->mDisableForceSync:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    move-object/from16 v14, p1

    iput-object v14, v0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    iput-object v10, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {p7 .. p7}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Lcom/android/wm/shell/common/ShellExecutor;)V

    move-object/from16 v15, p9

    iput-object v15, v0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/android/wm/shell/transition/Transitions;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v1, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    invoke-direct {v1, v0, v11}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    new-instance v8, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v11, v8

    move-object/from16 v8, p9

    move-object/from16 v9, p11

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    iput-object v11, v0, Lcom/android/wm/shell/transition/Transitions;->mDefaultTransitionHandler:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    new-instance v8, Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-direct {v8, v10}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v8, v0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_a3

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x55b81988

    const-string v3, "addHandler: Default"

    const/4 v4, 0x0

    invoke-static {v1, v2, v12, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a4

    :cond_a3
    const/4 v4, 0x0

    :goto_a4
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_b9

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x7ceef6d1

    const-string v3, "addHandler: Remote"

    invoke-static {v1, v2, v12, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b9
    new-instance v1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v1, v0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->setTransitions(Lcom/android/wm/shell/transition/Transitions;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/transition/OplusTransitionController;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;)V

    invoke-virtual {v8}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->getTransitionObserver()Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->lambda$playTransition$3(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/transition/Transitions;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->dispatchAnimScaleSetting(F)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/transition/Transitions;)Landroid/window/WindowOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/transition/Transitions;)F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    return p0
.end method

.method public static synthetic access$802(Lcom/android/wm/shell/transition/Transitions;F)F
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    return p1
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/transition/Transitions;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions;->getTransitionAnimationScaleSetting()F

    move-result p0

    return p0
.end method

.method private areTracksIdle()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$Track;

    invoke-virtual {v2}, Lcom/android/wm/shell/transition/Transitions$Track;->isIdle()Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/transition/Transitions;->lambda$processReadyQueue$1(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->lambda$finishForSync$5(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return-void
.end method

.method private continueRecent(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 8

    sget-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    const-string v1, "continueRecent track.mActiveTransition: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v1, :cond_7b

    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of v2, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz v2, :cond_2e

    goto :goto_7b

    :cond_2e
    iput-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v3, :cond_57

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3d

    :cond_57
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3d

    :cond_63
    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oplus/transition/OplusInterruptTransitionManager;->setInterrupt(Z)V

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v1

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {v1, p1, p2, v2}, Lcom/oplus/transition/OplusInterruptTransitionManager;->notifyRemoteInterrupt(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/WindowOrganizer;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void

    :cond_7b
    :goto_7b
    const-string p0, "continueRecent activeTransition is null or RecentsTransition, just return"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-void
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    return-object v0
.end method

.method public static synthetic d(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->lambda$finishForSync$4(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private dispatchAnimScaleSetting(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions;->onInit()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->lambda$playTransition$2(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private static findByToken(Ljava/util/ArrayList;Landroid/os/IBinder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/Transitions$ActiveTransition;",
            ">;",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method private finishForSync(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 16

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->isTransitionKnown(Landroid/os/IBinder;)Z

    move-result v0

    const-string v1, "ShellTransitions"

    if-nez v0, :cond_1f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finishForSleep: already played sync transition "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    const/4 v2, 0x1

    if-eqz p3, :cond_8f

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$Track;

    if-eq v3, v0, :cond_54

    const-string v4, "finishForSleep: mismatched Tracks between forceFinish and logic "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-ne v3, p3, :cond_8f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing transition to finish due to sync timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    iget-object v3, p3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    const/4 v4, 0x0

    if-eqz v3, :cond_8c

    const-string v3, "forceFinish.mHandler = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v5, p3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v5, v2, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_8c
    invoke-direct {p0, p3, v4, v4}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :cond_8f
    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions$Track;->isIdle()Z

    move-result p3

    if-nez p3, :cond_148

    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9f

    goto/16 :goto_148

    :cond_9f
    new-instance p3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v9, Landroid/window/TransitionInfo;

    const/16 v3, 0xc

    const/4 v10, 0x0

    invoke-direct {v9, v3, v10}, Landroid/window/TransitionInfo;-><init>(II)V

    :cond_ac
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v3, :cond_148

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_148

    iget-object v11, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {v3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->isSync()Z

    move-result v4

    if-nez v4, :cond_dc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Somehow blocked on a non-sync transition? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_f9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x24a9b32f

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v10

    aput-object v5, v8, v2

    const-string v4, " Attempt to merge sync %s into %s via a SLEEP proxy"

    invoke-static {v6, v7, v10, v4, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_f9
    iget-object v4, v11, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v4, :cond_10b

    iget-object v5, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v7, v11, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    sget-object v8, Lcom/android/wm/shell/transition/q;->a:Lcom/android/wm/shell/transition/q;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    move-object v6, p3

    invoke-interface/range {v3 .. v8}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_110

    :cond_10b
    const-string v3, "finishForSync, playing handler null, do not send mergeAnimation"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_110
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-ne v3, v11, :cond_ac

    iget-boolean p3, p0, Lcom/android/wm/shell/transition/Transitions;->mDisableForceSync:Z

    if-nez p3, :cond_148

    iget-object p3, v11, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-static {p3}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result p3

    if-eqz p3, :cond_123

    const/16 p3, 0x7d0

    goto :goto_125

    :cond_123
    const/16 p3, 0x78

    :goto_125
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v0

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v3, v11, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v5, v11, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v7, v11, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    move v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/OplusTransitionController;->disableForceSyncIfNeed(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_13d

    return-void

    :cond_13d
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/transition/r;

    invoke-direct {v1, p0, p1, p2, v11}, Lcom/android/wm/shell/transition/r;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    int-to-long p0, p3

    invoke-interface {v0, v1, p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_148
    :goto_148
    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Landroid/os/IBinder;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->lambda$onTransitionReady$0(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreateTrack(I)Lcom/android/wm/shell/transition/Transitions$Track;
    .registers 5

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/transition/Transitions$Track;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/wm/shell/transition/Transitions$Track;-><init>(Lcom/android/wm/shell/transition/Transitions$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_14
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$Track;

    return-object p0
.end method

.method private getTransitionAnimationScaleSetting()F
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/internal/R$dimen;->config_appTransitionAnimationDurationScaleDefault:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const-string/jumbo v1, "transition_animation_scale"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Landroid/view/WindowManager;->fixScale(F)F

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method public static isAllNoAnimation(Landroid/window/TransitionInfo;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v2

    move v3, v1

    :goto_12
    if-ltz v2, :cond_36

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_32

    :cond_29
    const/high16 v3, 0x40000

    invoke-virtual {v4, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_35

    move v3, v0

    :goto_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_35
    return v1

    :cond_36
    return v3
.end method

.method public static isAllOrderOnly(Landroid/window/TransitionInfo;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_5
    if-ltz v1, :cond_1c

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-nez v2, :cond_19

    const/4 p0, 0x0

    return p0

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_1c
    return v0
.end method

.method private isAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions;->areTracksIdle()Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private isIdle()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions;->isAnimating()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isTransitionKnown(Landroid/os/IBinder;)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-ne v2, p1, :cond_18

    return v3

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    move v1, v0

    :goto_1c
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-ne v2, p1, :cond_31

    return v3

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_34
    move v1, v0

    :goto_35
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$Track;

    move v4, v0

    :goto_46
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5e

    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-ne v5, p1, :cond_5b

    return v3

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_5e
    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v2, :cond_63

    goto :goto_8c

    :cond_63
    iget-object v4, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-ne v4, p1, :cond_68

    return v3

    :cond_68
    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_6f

    goto :goto_8c

    :cond_6f
    move v4, v0

    :goto_70
    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8c

    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-ne v5, p1, :cond_89

    return v3

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    :cond_8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_8f
    return v0
.end method

.method private static synthetic lambda$finishForSync$4(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 2

    return-void
.end method

.method private synthetic lambda$finishForSync$5(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->finishForSync(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return-void
.end method

.method private static synthetic lambda$onTransitionReady$0(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method private synthetic lambda$playTransition$2(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$playTransition$3(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$processReadyQueue$1(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 5

    invoke-static {p3}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->getRemoteInterrupt(Landroid/window/WindowContainerTransaction;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->continueRecent(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    goto :goto_d

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    :goto_d
    return-void
.end method

.method private onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/transition/Tracer;->logAborted(I)V

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v2, :cond_24

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_24
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->releaseSurfaces(Landroid/window/TransitionInfo;)V

    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_44

    const-string p0, "There are already transitions waiting in the queue, so just return, readyTransitions:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-void

    :cond_44
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void
.end method

.method private onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object v3, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eq v3, v1, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to finish a non-running transition. Either remote crashed or  a handler didn\'t properly deal with a merge. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v2, "ShellTransitions"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2f
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v4, 0x0

    move v5, v4

    :goto_34
    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4e

    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v7, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-boolean v8, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    invoke-interface {v6, v7, v8}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionFinished(Landroid/os/IBinder;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_4e
    const-string v5, "Transition animation finished, aborted= "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", active= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_89

    iget-boolean v5, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, 0x31198153

    const/4 v11, 0x3

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v12, v4

    aput-object v8, v12, v7

    const-string v5, "Transition animation finished (aborted=%b), notifying core %s"

    invoke-static {v9, v10, v11, v5, v12}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_89
    iget-object v5, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v5, :cond_90

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->clear()V

    :cond_90
    iget-object v5, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v8, :cond_ae

    iget-object v9, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v9, :cond_ae

    iget-object v10, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of v11, v10, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz v11, :cond_ae

    iget-object v5, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-static {v10, v9, v5}, Lcom/oplus/zoom/common/ZoomUtil;->updateFinishTransition(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V

    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v8}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_ae
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_f5

    move v8, v4

    :goto_b5
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_f5

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v10, :cond_d4

    if-nez v5, :cond_d1

    move-object v5, v10

    goto :goto_d4

    :cond_d1
    invoke-virtual {v5, v10}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_d4
    :goto_d4
    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v10, :cond_e9

    iget-object v11, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v12, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-static {v11, v10, v12}, Lcom/oplus/zoom/common/ZoomUtil;->updateFinishTransition(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V

    if-nez v5, :cond_e4

    iget-object v5, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    goto :goto_e9

    :cond_e4
    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v10}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_e9
    :goto_e9
    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v10

    iget-object v9, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v10, v9, v5}, Lcom/oplus/transition/OplusInterruptTransitionManager;->updateMergeRemoteTaskVisible(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b5

    :cond_f5
    move-object v11, v5

    if-eqz v11, :cond_13d

    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10c

    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    move-object v12, v5

    goto :goto_10d

    :cond_10c
    move-object v12, v3

    :goto_10d
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v9

    iget-object v10, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v14, v0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    move-object/from16 v13, p2

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookTransitionFinish(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;Landroid/window/WindowContainerTransaction;Landroid/window/WindowOrganizer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v8

    iget-object v9, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v10, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v8, v9, v10, v5}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookTransitionFinishForFlexibleMinimize(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transition animation finished, fullFinish.apply, fullFinish="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    :cond_13d
    iget-object v5, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-direct {p0, v5}, Lcom/android/wm/shell/transition/Transitions;->releaseSurfaces(Landroid/window/TransitionInfo;)V

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v8

    iget-object v9, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v10, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v11, v0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object v12, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v13, v0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    invoke-virtual/range {v8 .. v13}, Lcom/oplus/transition/OplusInterruptTransitionManager;->isLandScapeExitScene(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/window/TransitionInfo;Landroid/content/Context;)Z

    invoke-virtual/range {p0 .. p2}, Lcom/android/wm/shell/transition/Transitions;->finishTmpRemoteTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;)V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    aput-object v9, v8, v7

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v7

    const-string/jumbo v11, "setBinderThreadUxFlag"

    invoke-static {v5, v11, v8, v9}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    iget-object v8, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    move-object/from16 v9, p2

    move-object/from16 v12, p3

    invoke-virtual {v5, v8, v9, v12}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1b3

    move v5, v4

    :goto_189
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1ac

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v9, v0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    iget-object v12, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v9, v12, v3, v3}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    iget-object v8, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-direct {p0, v8}, Lcom/android/wm/shell/transition/Transitions;->releaseSurfaces(Landroid/window/TransitionInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_189

    :cond_1ac
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_1b3
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v8, v5, v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v3, v11, v5, v6}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTransitionFinish(Z)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void
.end method

.method private onInit()V
    .registers 6

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {v1}, Landroid/window/WindowOrganizer;->shareTransactionQueue()Z

    :cond_9
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v2, Lcom/android/launcher/layout/f;

    invoke-direct {v2, p0}, Lcom/android/launcher/layout/f;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    const-string v3, "extra_shell_shell_transitions"

    invoke-virtual {v1, v3, v2, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions;->getTransitionAnimationScaleSetting()F

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    invoke-direct {p0, v2}, Lcom/android/wm/shell/transition/Transitions;->dispatchAnimScaleSetting(F)V

    const-string/jumbo v2, "transition_animation_scale"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    :try_start_39
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    invoke-virtual {v0, v1}, Landroid/window/WindowOrganizer;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_40} :catch_44

    invoke-static {}, Landroid/window/TransitionMetrics;->getInstance()Landroid/window/TransitionMetrics;

    goto :goto_48

    :catch_44
    move-exception v0

    iput-boolean v4, p0, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    throw v0

    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    if-eqz v0, :cond_52

    const-string/jumbo v1, "transitions"

    invoke-virtual {v0, v1, p0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    :cond_52
    return-void
.end method

.method private onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 11

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    const-string v2, " into "

    if-ne v0, v1, :cond_117

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x148840c6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    const/4 v1, 0x1

    aput-object v4, v7, v1

    const-string v1, "Transition was merged: %s into %s"

    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transition was merged: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "ShellTransitions"

    if-nez v1, :cond_66

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_64

    goto :goto_66

    :cond_64
    move v1, v3

    goto :goto_97

    :cond_66
    :goto_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Merged transition out-of-order? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_97

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Merged a transition that is no-longer queued? "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_97
    :goto_97
    :try_start_97
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_97 .. :try_end_9c} :catch_9d

    goto :goto_b3

    :catch_9d
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mReadyTransitions remove error, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b3
    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_c1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$302(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_c1
    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v1, :cond_d7

    iget-boolean v2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    if-nez v2, :cond_d7

    iget-object v2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v4, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_d7
    :goto_d7
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_f1

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d7

    :cond_f1
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    iget-object v2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/transition/Tracer;->logMerged(II)V

    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v2

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/oplus/transition/OplusInterruptTransitionManager;->notifyTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;ZLandroid/window/WindowOrganizer;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void

    :cond_117
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t merge across tracks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 13

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x23c14573

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "Playing animation for %s"

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    move v0, v2

    :goto_19
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionStarting(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_31
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v3, v4}, Lcom/android/wm/shell/transition/Transitions;->setupAnimHierarchy(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v0, :cond_a1

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_54

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x83ef4b7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, " try firstHandler %s"

    invoke-static {v3, v4, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_54
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v7, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v8, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v9, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    new-instance v10, Lcom/android/wm/shell/transition/p;

    invoke-direct {v10, p0, p1}, Lcom/android/wm/shell/transition/p;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    const-string/jumbo v1, "playTransition, active.mHandler: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", consumed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    if-eqz v0, :cond_a1

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_93

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x2a269024

    const/4 v3, 0x0

    const-string v4, " animated by firstHandler"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_93
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/transition/Tracer;->logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void

    :cond_a1
    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    new-instance v6, Lcom/android/wm/shell/transition/o;

    invoke-direct {v6, p0, p1}, Lcom/android/wm/shell/transition/o;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    iget-object v7, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return-void
.end method

.method private releaseSurfaces(Landroid/window/TransitionInfo;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_10
    if-ltz p0, :cond_56

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_53

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    if-ne v2, v0, :cond_53

    :cond_4c
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    :cond_53
    add-int/lit8 p0, p0, -0x1

    goto :goto_10

    :cond_56
    return-void
.end method

.method public static setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_17

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_17

    :catch_10
    const-string p0, "ShellTransitions"

    const-string v0, "Unable to boost animation process. This should only happen during unit tests"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method private static setupAnimHierarchy(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 15

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/transition/OplusTransitionController;->isRemoteInterrupt()Z

    move-result p2

    if-eqz p2, :cond_11

    const-string/jumbo p0, "remote interrupt, setupAnimHierarchy return"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result p2

    invoke-static {p2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-static {p2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1f
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual {p0, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, -0x1

    :goto_3f
    if-ltz v4, :cond_ea

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    invoke-static {v5, p0}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v8

    if-nez v8, :cond_5b

    goto/16 :goto_e6

    :cond_5b
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_64

    move v8, v9

    goto :goto_65

    :cond_64
    move v8, v1

    :goto_65
    invoke-static {v5, p0}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v10

    if-nez v8, :cond_a7

    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/transition/OplusInterruptTransitionManager;->isRemoteInterrupt()Z

    move-result v8

    if-nez v8, :cond_a7

    invoke-virtual {p0, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v8

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v11

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v10

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v10

    int-to-float v10, v11

    invoke-virtual {p1, v6, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_a7
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v8

    const/4 v10, 0x2

    and-int/2addr v8, v10

    const/4 v11, 0x3

    if-eqz v8, :cond_bb

    if-eq v7, v9, :cond_b7

    if-ne v7, v11, :cond_b5

    goto :goto_b7

    :cond_b5
    neg-int v5, v3

    goto :goto_b9

    :cond_b7
    :goto_b7
    neg-int v5, v3

    add-int/2addr v5, v2

    :goto_b9
    sub-int/2addr v5, v4

    goto :goto_e3

    :cond_bb
    if-eq v7, v9, :cond_d2

    if-ne v7, v11, :cond_c0

    goto :goto_d2

    :cond_c0
    if-eq v7, v10, :cond_cf

    const/4 v8, 0x4

    if-ne v7, v8, :cond_c6

    goto :goto_cf

    :cond_c6
    if-nez p2, :cond_dd

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v5

    if-eqz v5, :cond_e0

    goto :goto_dd

    :cond_cf
    :goto_cf
    if-eqz v0, :cond_e0

    goto :goto_dd

    :cond_d2
    :goto_d2
    if-nez v0, :cond_e0

    const/high16 v7, 0x100000

    invoke-virtual {v5, v7}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_dd

    goto :goto_e0

    :cond_dd
    :goto_dd
    sub-int v5, v3, v4

    goto :goto_e3

    :cond_e0
    :goto_e0
    add-int v5, v3, v2

    goto :goto_b9

    :goto_e3
    invoke-virtual {p1, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_e6
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3f

    :cond_ea
    return-void
.end method

.method private static setupStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 14

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->isRemoteInterrupt()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo p0, "remote interrupt, setupStartState return"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_1e
    if-ltz v2, :cond_fc

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    const v4, 0x10102

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_35

    goto/16 :goto_f8

    :cond_35
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_81

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ne v7, v8, :cond_6e

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eq v7, v8, :cond_81

    :cond_6e
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p1, v4, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_81
    invoke-static {v3, p0}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v7

    const/4 v8, 0x6

    if-nez v7, :cond_b3

    if-eq v5, v1, :cond_8e

    if-eq v5, v6, :cond_8e

    if-ne v5, v8, :cond_f8

    :cond_8e
    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v4, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_f8

    :cond_b3
    if-eq v5, v1, :cond_d9

    if-ne v5, v6, :cond_b8

    goto :goto_d9

    :cond_b8
    const/4 v6, 0x2

    if-eq v5, v6, :cond_c7

    const/4 v6, 0x4

    if-ne v5, v6, :cond_bf

    goto :goto_c7

    :cond_bf
    if-eqz v0, :cond_f8

    if-ne v5, v8, :cond_f8

    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_f8

    :cond_c7
    :goto_c7
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v5

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/android/wm/shell/transition/OplusTransitionController;->shouldHideSurface(Landroid/window/TransitionInfo$Change;I)Z

    move-result v3

    if-eqz v3, :cond_f8

    invoke-virtual {p2, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_f8

    :cond_d9
    :goto_d9
    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_f5

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_f5

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_f5
    invoke-virtual {p2, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_f8
    :goto_f8
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1e

    :cond_fc
    return-void
.end method


# virtual methods
.method public addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    invoke-interface {p1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_2e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x6cd9ff37

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "addHandler: %s"

    invoke-static {p1, v0, v2, p0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    return-void

    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected handler added prior to initialization, please use ShellInit callbacks to ensure proper ordering"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public asRemoteTransitions()Lcom/android/wm/shell/transition/ShellTransitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    return-object p0
.end method

.method public dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z
    .registers 14

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getTrack()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/transition/Transitions;->getOrCreateTrack(I)Lcom/android/wm/shell/transition/Transitions$Track;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchReady, active:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isSync="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->isSync()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", track:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xc

    if-eq v2, v5, :cond_42

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->isSync()Z

    move-result v2

    if-eqz v2, :cond_99

    :cond_42
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v2

    iget-object v5, v1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v6, 0x0

    if-eqz v5, :cond_4e

    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    goto :goto_4f

    :cond_4e
    move-object v5, v6

    :goto_4f
    invoke-virtual {v2, v5, v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->skipFinishForSync(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v4

    move v5, v2

    :goto_5c
    iget-object v7, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_91

    iget-object v7, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/transition/Transitions$Track;

    invoke-virtual {v7}, Lcom/android/wm/shell/transition/Transitions$Track;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_73

    goto :goto_8e

    :cond_73
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_8a

    int-to-long v7, v2

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, -0x39190853

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v4

    const-string v7, "Start finish-for-sync track %d"

    invoke-static {v5, v9, v3, v7, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8a
    invoke-direct {p0, p1, v2, v6}, Lcom/android/wm/shell/transition/Transitions;->finishForSync(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    move v5, v3

    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_91
    if-eqz v5, :cond_94

    return v4

    :cond_94
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_99
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    :goto_9f
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_bb

    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v6, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v7, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v5, v6, v0, v7, v8}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_bb
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v2

    if-nez v2, :cond_e1

    invoke-static {v0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_e1

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_dd

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x1a8355e8

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v4

    const-string v0, "No transition roots in %s so abort"

    invoke-static {v1, v2, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_dd
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return v3

    :cond_e1
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ed

    move v5, v3

    goto :goto_ee

    :cond_ed
    move v5, v4

    :goto_ee
    add-int/lit8 v6, v2, -0x1

    move v7, v4

    move v8, v7

    move v9, v8

    :goto_f3
    if-ltz v6, :cond_130

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-eqz v11, :cond_107

    move v11, v3

    goto :goto_108

    :cond_107
    move v11, v4

    :goto_108
    or-int/2addr v7, v11

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v11

    or-int/2addr v8, v11

    const v11, 0x8000

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v11

    if-nez v11, :cond_11a

    move v5, v4

    :cond_11a
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-eqz v11, :cond_12d

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    const/16 v11, 0x64

    if-ne v10, v11, :cond_12d

    move v9, v3

    :cond_12d
    add-int/lit8 v6, v6, -0x1

    goto :goto_f3

    :cond_130
    if-nez v7, :cond_137

    if-eqz v8, :cond_137

    const/4 v6, 0x2

    if-eq v2, v6, :cond_147

    :cond_137
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_145

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_16b

    :cond_145
    if-eqz v5, :cond_16b

    :cond_147
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->ignoreAbort(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-nez v0, :cond_16b

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_167

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x32b8229

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v4

    const-string v0, "Non-visible anim so abort: %s"

    invoke-static {v1, v2, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_167
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return v3

    :cond_16b
    if-eqz v9, :cond_179

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-static {v0, v2, v4, v5}, Lcom/oplus/zoom/common/ZoomUtil;->setupZoomStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowOrganizer;)V

    goto :goto_182

    :cond_179
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v2, v4}, Lcom/android/wm/shell/transition/Transitions;->setupStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :goto_182
    iget-object v0, v1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_1a0

    const-string v0, "dispatchReady, There are already transitions waiting in the queue, so just return, mReadyTransitions"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/transition/Transitions;->forceAbortLegacyReadyIfNeed(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$Track;)V

    return v3

    :cond_1a0
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return v3
.end method

.method public dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TransitionRequestInfo;",
            "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;",
            "Landroid/window/WindowContainerTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_32

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p3, :cond_13

    goto :goto_2f

    :cond_13
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    if-eqz v1, :cond_2f

    new-instance p1, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-direct {p1, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_9
    if-ltz v1, :cond_b8

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, p6

    if-ne v3, v4, :cond_17

    goto/16 :goto_b4

    :cond_17
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_34

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x4dfde11f

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const-string v3, " try handler %s"

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v3

    const-string v6, "dispatchTransition, mHandler: "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", consumed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    if-eqz v3, :cond_b4

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_84

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x4d529b50

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    const-string v3, " animated by %s"

    invoke-static {v4, v6, v5, v3, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_84
    const-string v2, "dispatchTransition, animated mHandler: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v3

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/transition/Tracer;->logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return-object v0

    :cond_b4
    :goto_b4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_9

    :cond_b8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This shouldn\'t happen, maybe the default handler is broken."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishTmpRemoteTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v0, :cond_c4

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz p1, :cond_c4

    invoke-static {p2}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->isRecentToHome(Landroid/window/WindowContainerTransaction;)Z

    move-result p1

    const-string v0, "finishTmpRemoteTransition "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isRecentToHome="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_32
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v3, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-boolean v2, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    invoke-interface {v1, v3, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionFinished(Landroid/os/IBinder;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_4e
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {v0, p1}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->setRecentToHome(Landroid/window/WindowContainerTransaction;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->releaseSurfaces(Landroid/window/TransitionInfo;)V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p2

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string/jumbo v3, "setBinderThreadUxFlag"

    invoke-static {p1, v3, v2, v1}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_c2

    :goto_92
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_b9

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v3, v0, v2}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->releaseSurfaces(Landroid/window/TransitionInfo;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_92

    :cond_b9
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->access$300(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_c2
    iput-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    :cond_c4
    return-void
.end method

.method public forceAbortLegacyReadyIfNeed(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$Track;)V
    .registers 7

    sget-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-eqz v0, :cond_8d

    iget-object v0, p2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    if-nez p1, :cond_10

    goto/16 :goto_8d

    :cond_10
    iget-object v0, p2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v2

    if-ne v1, v2, :cond_8d

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8d

    iget-object v1, p2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceAbortLegacyReadyIfNeed track="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", playing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", legacyReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", active="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", readyTransitions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mPendingTransitions="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    if-eqz v1, :cond_8d

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz p1, :cond_8d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "force finish playing="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1, p1}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public forceAbortReadyDuringSyncIfNeed(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 6

    sget-boolean v0, Lcom/oplus/transition/OplusInterruptTransitionManager;->ENABLE_INTERRUPT_TRANSITION:Z

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    if-nez p1, :cond_10

    goto/16 :goto_91

    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v2

    if-ne v1, v2, :cond_91

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_91

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceAbortReadyDuringSyncIfNeed , playing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duringSync="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReadyDuringSync="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingTransitions="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz p1, :cond_91

    const-string p1, "force clear and abort ReadyDuringSync:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    :cond_91
    :goto_91
    return-void
.end method

.method public forceCancelRecentsTransition()V
    .registers 7

    const-string v0, "forceCancelRecentsTransition mTracks="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5e

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object v3, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v3, :cond_33

    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of v4, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz v4, :cond_33

    check-cast v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-virtual {v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->forceCancelAll()V

    :cond_33
    move v3, v0

    :goto_34
    iget-object v4, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5b

    iget-object v4, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v4, :cond_58

    iget-object v5, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    instance-of v5, v5, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz v5, :cond_58

    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    check-cast v4, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-virtual {v4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->forceCancelAll()V

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_5e
    return-void
.end method

.method public getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getRemoteTransitionHandler()Lcom/android/wm/shell/transition/RemoteTransitionHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    return-object p0
.end method

.method public getWindowOrganizer()Landroid/window/WindowOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    return-object p0
.end method

.method public hasTmpRemote()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTmpRemote:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isRegistered()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    return p0
.end method

.method public nextReadyRemote(I)Landroid/window/TransitionInfo;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->getRequestedRemotes()Landroid/util/ArrayMap;

    move-result-object p0

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v2, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_61

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "next ready transition is remote in track: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", ready="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", ready info="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    return-object p0

    :cond_61
    return-object v1
.end method

.method public onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "tracing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "Invalid command: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/transition/Transitions;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v0

    :cond_27
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    array-length v0, p1

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Tracer;->onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    return v1
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "Transitions.onTransitionReady"

    invoke-virtual {p2, v0}, Landroid/window/TransitionInfo;->setUnreleasedWarningCallSiteForAllSurfaces(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_25

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x3fcb06b3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string/jumbo v0, "onTransitionReady %s: %s"

    invoke-static {v2, v3, v5, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/wm/shell/transition/Transitions;->findByToken(Ljava/util/ArrayList;Landroid/os/IBinder;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransitionReady, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingTransitions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    if-gez v0, :cond_8f

    invoke-static {p2, p3, p4}, Lcom/android/wm/shell/transition/Transitions;->setupStartState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0, p2}, Lcom/android/wm/shell/transition/Transitions;->releaseSurfaces(Landroid/window/TransitionInfo;)V

    iget-object p2, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got transitionReady for non-pending transition "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". expecting one of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/transition/s;->a:Lcom/android/wm/shell/transition/s;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return-void

    :cond_8f
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iput-object p2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iput-object p3, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-lez v0, :cond_c2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Transition might be ready out-of-order "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ". This is ok if it\'s on a different track."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ShellTransitions"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    invoke-static {}, Lcom/oplus/transition/OplusInterruptTransitionManager;->getInstance()Lcom/oplus/transition/OplusInterruptTransitionManager;

    move-result-object p3

    iget-object p4, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    check-cast p4, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p3, p2, p4, p1, v0}, Lcom/oplus/transition/OplusInterruptTransitionManager;->notifyLauncherStartActivity(Landroid/window/TransitionInfo;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/os/IBinder;Lcom/android/wm/shell/transition/RemoteTransitionHandler;)Z

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/transition/Transitions;->forceAbortReadyDuringSyncIfNeed(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ff

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onTransitionReady abort, for readyDuringSync not empty, active:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", readyDuringSync:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_102

    :cond_ff
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/transition/Transitions;->dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z

    :goto_102
    return-void
.end method

.method public printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "tracing"

    invoke-static {p2, v0, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Tracer;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V
    .registers 13

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_83

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v0, :cond_82

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-long v4, p1

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x15718457

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    const-string v4, "Track %d became idle"

    invoke-static {p1, v0, v2, v4, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions;->areTracksIdle()Z

    move-result p1

    if-eqz p1, :cond_82

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_51

    :cond_3a
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_82

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_82

    :cond_51
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_82

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_67

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x1d40c597

    const-string v2, "All active transition animations finished"

    invoke-static {p1, v0, v3, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_7d

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :cond_7d
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_82
    :goto_82
    return-void

    :cond_83
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v4, :cond_b3

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-boolean v2, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    if-eqz v2, :cond_a5

    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_a1
    invoke-direct {p0, v0, v1, v1}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    :cond_a5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookProcessReady()V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void

    :cond_b3
    iget-boolean p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    if-eqz p1, :cond_bb

    invoke-direct {p0, v4, v0}, Lcom/android/wm/shell/transition/Transitions;->onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return-void

    :cond_bb
    iget-object p1, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    const-string v1, "ShellTransitions"

    if-nez p1, :cond_c8

    const-string/jumbo p0, "processReadyQueue, playing handler null, do not send mergeAnimation"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c8
    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p1

    const/high16 v5, 0x20000000

    and-int/2addr p1, v5

    if-eqz p1, :cond_f8

    const-string p0, " processReadyQueue do not merge Transition#"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to Transition#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f8
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_115

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x44482b10

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    aput-object v1, v7, v2

    const-string p1, "Transition %s ready while %s is still animating. Notify the animating transition in case they can be merged"

    invoke-static {v5, v6, v3, p1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_115
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    iget-object v2, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/wm/shell/transition/Tracer;->logMergeRequested(II)V

    iget-object v5, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v8, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v9, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    new-instance v10, Lcom/android/wm/shell/transition/a;

    invoke-direct {v10, p0, v4, v0}, Lcom/android/wm/shell/transition/a;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->addFiltered(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method public replaceDefaultHandlerForTest(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .registers 12

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x7bc12dcd

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    const-string v0, "Transition requested: %s %s"

    invoke-static {v4, v5, v2, v0, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->isTransitionKnown(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_10a

    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Lcom/android/wm/shell/transition/Transitions$1;)V

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_3e

    iget-object v4, p0, Lcom/android/wm/shell/transition/Transitions;->mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

    invoke-virtual {v4, p1, p2}, Lcom/android/wm/shell/transition/SleepHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    iget-object v4, p0, Lcom/android/wm/shell/transition/Transitions;->mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

    iput-object v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v5, v3

    goto :goto_a3

    :cond_3e
    iget-object v4, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    move-object v5, v3

    :goto_46
    if-ltz v4, :cond_77

    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v5, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object v5

    if-eqz v5, :cond_74

    iget-object v6, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    const-string/jumbo v4, "requestStartTransition, wct != null, active.mHandler: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    goto :goto_77

    :cond_74
    add-int/lit8 v4, v4, -0x1

    goto :goto_46

    :cond_77
    :goto_77
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v4

    if-eqz v4, :cond_a3

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result v6

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v7

    if-eq v6, v7, :cond_a3

    if-nez v5, :cond_92

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_92
    iget-object v6, p0, Lcom/android/wm/shell/transition/Transitions;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getDisplayId()I

    move-result v7

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v8

    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result v4

    invoke-virtual {v6, v5, v7, v8, v4}, Lcom/android/wm/shell/common/DisplayController;->onDisplayRotateRequested(Landroid/window/WindowContainerTransaction;III)V

    :cond_a3
    :goto_a3
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_d6

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_d6

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_d6

    if-nez v5, :cond_c4

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v5, v4

    :cond_c4
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v4, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_d6
    :try_start_d6
    iget-object p2, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {p2, p1, v5}, Landroid/window/WindowOrganizer;->startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_db} :catch_102

    iput-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "shell requestStartTransition, active："

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mPendingTransitions:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return-void

    :catch_102
    move-exception p0

    const-string/jumbo p1, "requestStartTransition, core startTransition exception"

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void

    :cond_10a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transition already started "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runOnIdle(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    return-void
.end method

.method public setDisableForceSyncForTest(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/Transitions;->mDisableForceSync:Z

    return-void
.end method

.method public setRecentsTransitionHandler(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->setRecentsTransitionHandler(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)V

    return-void
.end method

.method public startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;
    .registers 12

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_27

    int-to-long v0, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x232ce09c

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const-string v1, "Directly starting a new transition type=%d wct=%s handler=%s"

    invoke-static {v4, v5, v0, v1, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Lcom/android/wm/shell/transition/Transitions$1;)V

    iput-object p3, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    invoke-virtual {v1, p1, p2}, Landroid/window/WindowOrganizer;->startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestStartTransition by WMShell, startNewTransition type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", handler: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", active: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mPendingTransitions: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRemote(Landroid/window/RemoteTransition;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->removeFiltered(Landroid/window/RemoteTransition;)V

    return-void
.end method
