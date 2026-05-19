.class public Lcom/android/wm/shell/pip/phone/PipController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/sysui/UserChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;,
        Lcom/android/wm/shell/pip/phone/PipController$PipImpl;,
        Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;,
        Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/pip/phone/PipController;",
        ">;",
        "Lcom/android/wm/shell/sysui/ConfigurationChangeListener;",
        "Lcom/android/wm/shell/sysui/KeyguardChangeListener;",
        "Lcom/android/wm/shell/sysui/UserChangeListener;"
    }
.end annotation


# static fields
.field private static final LAUNCHER_KEEP_CLEAR_AREA_TAG:Ljava/lang/String; = "hotseat"

.field private static final PIP_KEEP_CLEAR_AREAS_DELAY:J

.field private static final TAG:Ljava/lang/String; = "PipController"


# instance fields
.field private mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

.field private mContext:Landroid/content/Context;

.field private mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mEnablePipKeepClearAlgorithm:Z

.field private final mEnterAnimationDuration:I

.field public final mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field private mIsInFixedRotation:Z

.field private mIsKeyguardShowingOrAnimating:Z

.field public mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

.field public mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field private final mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

.field private mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOneHandedController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

.field public mPinnedTaskListener:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;

.field private mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

.field private mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field private mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field private mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field private mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

.field private mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

.field private mPipMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field private mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

.field private mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

.field public mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field private mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field private mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

.field private mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field private final mTmpInsetBounds:Landroid/graphics/Rect;

.field private mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

.field private mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "persist.wm.debug.pip_keep_clear_areas_delay"

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 30
    .param p10  # Lcom/android/wm/shell/pip/PipBoundsState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12  # Lcom/android/wm/shell/pip/PipDisplayLayoutState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipAppOpsListener;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/TabletopModeController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "persist.wm.debug.enable_pip_keep_clear_algorithm"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/wm/shell/pip/phone/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/j;-><init>(Lcom/android/wm/shell/pip/phone/PipController;I)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;-><init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$1;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedTaskListener:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;

    new-instance v1, Lcom/android/wm/shell/pip/phone/f;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/f;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$1;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$1;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mOneHandedController:Ljava/util/Optional;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$integer;->config_pipEnterAnimationDuration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

    new-instance v1, Lcom/android/wm/shell/pip/phone/x;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/x;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    move-object v2, p2

    invoke-virtual {p2, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$onInit$6(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void
.end method

.method private abortSwipePipToHome(ILandroid/content/ComponentName;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->abortSwipePipToHome(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/pip/phone/PipController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->updatePipPositionForKeepClearAreas()V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/pip/phone/PipController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/pip/phone/PipController;Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipMediaController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipAppOpsListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipInputConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/pip/phone/PipController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/wm/shell/pip/phone/PipController;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/pip/phone/PipController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipDisplayLayoutState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChangedUncheck(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipMotionHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/wm/shell/pip/phone/PipController;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->setOnIsInPipStateChangedListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/android/wm/shell/pip/phone/PipController;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onSystemUiStateChanged(ZI)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipAnimationController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/wm/shell/pip/phone/PipController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->setLauncherAppIconSize(I)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/android/wm/shell/pip/phone/PipController;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->setLauncherKeepClearAreaHeight(ZI)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/android/wm/shell/pip/phone/PipController;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->setShelfHeight(ZI)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/android/wm/shell/pip/phone/PipController;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->abortSwipePipToHome(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/common/DisplayController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/wm/shell/pip/phone/PipController;ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/phone/PipController;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipController;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/pip/phone/PipController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/pip/phone/PipController;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$800()J
    .registers 2

    sget-wide v0, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    return-wide v0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/phone/PipController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$onInit$2(II)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/pip/phone/PipController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$onInit$5(Z)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/Pip;
    .registers 59
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipAppOpsListener;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/TabletopModeController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Lcom/android/wm/shell/pip/Pip;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const-string v0, "PipController"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x16859aef

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    return-object v1

    :cond_22
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController;

    move-object v6, v0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move-object/from16 v19, p12

    move-object/from16 v20, p13

    move-object/from16 v21, p14

    move-object/from16 v22, p15

    move-object/from16 v23, p16

    move-object/from16 v24, p17

    move-object/from16 v25, p18

    move-object/from16 v26, p19

    move-object/from16 v27, p20

    move-object/from16 v28, p21

    move-object/from16 v29, p22

    move-object/from16 v30, p23

    move-object/from16 v31, p24

    move-object/from16 v32, p25

    invoke-direct/range {v6 .. v32}, Lcom/android/wm/shell/pip/phone/PipController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    return-object v0
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$onInit$3()V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string p2, "PipController"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    const-string v0, "  "

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/pip/phone/PipController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$onInit$1(I)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/pip/phone/PipController;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$onInit$4(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/pip/phone/PipController;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$new$0(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private getTransitionTag(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1c

    const-string p0, "TRANSITION_LEAVE_UNKNOWN"

    return-object p0

    :pswitch_6  #0x8
    const-string p0, "TRANSITION_EXPAND_OR_UNEXPAND"

    return-object p0

    :pswitch_9  #0x7
    const-string p0, "TRANSITION_USER_RESIZE"

    return-object p0

    :pswitch_c  #0x6
    const-string p0, "TRANSITION_SNAP_AFTER_RESIZE"

    return-object p0

    :pswitch_f  #0x5
    const-string p0, "TRANSITION_REMOVE_STACK"

    return-object p0

    :pswitch_12  #0x4
    const-string p0, "TRANSITION_LEAVE_PIP_TO_SPLIT_SCREEN"

    return-object p0

    :pswitch_15  #0x3
    const-string p0, "TRANSITION_LEAVE_PIP"

    return-object p0

    :pswitch_18  #0x2
    const-string p0, "TRANSITION_TO_PIP"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_18  #00000002
        :pswitch_15  #00000003
        :pswitch_12  #00000004
        :pswitch_f  #00000005
        :pswitch_c  #00000006
        :pswitch_9  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method

.method public static synthetic h(Lcom/android/wm/shell/pip/phone/PipController;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->onInit()V

    return-void
.end method

.method public static synthetic k(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->onKeepClearAreasChangedCallback()V

    return-void
.end method

.method public static synthetic l(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayLayout;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->lambda$onDisplayChangedUncheck$7(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method private synthetic lambda$new$0(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 16

    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p4, p2, p3, p5}, Lcom/android/wm/shell/pip/PipTransitionController;->handleRotateDisplay(IILandroid/window/WindowContainerTransaction;)Z

    move-result p4

    if-eqz p4, :cond_9

    return-void

    :cond_9
    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p4}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result p4

    if-ne p4, p3, :cond_1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void

    :cond_1f
    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result p4

    if-eqz p4, :cond_7b

    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isEntryScheduled()Z

    move-result p4

    if-eqz p4, :cond_30

    goto :goto_7b

    :cond_30
    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getCurrentOrAnimatingBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v2, p4

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayRotationChanged(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/window/WindowContainerTransaction;)Z

    move-result p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4, p2, p3}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->adjustBoundsForRotation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    if-nez p1, :cond_71

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setShelfVisibility(ZIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1, p2, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setImeVisibility(ZI)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1, p2, p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onShelfVisibilityChanged(ZI)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1, p2, p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onImeVisibilityChanged(ZI)V

    :cond_71
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    :cond_7a
    return-void

    :cond_7b
    :goto_7b
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayRotationChangedNotInPip(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onDisplayRotationSkipped()V

    return-void
.end method

.method private synthetic lambda$onDisplayChangedUncheck$7(Lcom/android/wm/shell/common/DisplayLayout;)V
    .registers 12

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v3

    if-eq v0, v3, :cond_18

    move v6, v1

    goto :goto_19

    :cond_18
    move v6, v2

    :goto_19
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    if-eqz v6, :cond_26

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    if-eqz p1, :cond_36

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;IZ)V

    :cond_36
    return-void
.end method

.method private synthetic lambda$onInit$1(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->setDisplayId(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method private synthetic lambda$onInit$2(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result p1

    invoke-static {p2}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result p2

    if-eq p2, p1, :cond_17

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$onInit$3()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$onInit$4(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onShelfVisibilityChanged(ZI)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    :cond_21
    return-void
.end method

.method private synthetic lambda$onInit$5(Z)V
    .registers 9

    const-string/jumbo v0, "tabletop-mode"

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->removeNamedUnrestrictedKeepClearArea(Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TabletopModeController;->getPreferredHalfInTabletopMode()I

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/pip/PipBoundsState;->addNamedUnrestrictedKeepClearArea(Ljava/lang/String;Landroid/graphics/Rect;)V

    goto :goto_42

    :cond_2e
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/pip/PipBoundsState;->addNamedUnrestrictedKeepClearArea(Ljava/lang/String;Landroid/graphics/Rect;)V

    :goto_42
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->hasEnteredPip()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getScreenEdgeInsets()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-le v1, p1, :cond_68

    return-void

    :cond_68
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_76
    return-void
.end method

.method private synthetic lambda$onInit$6(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 3

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$5;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$5;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    return-void
.end method

.method private onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->isSameGeometry(Lcom/android/wm/shell/common/DisplayLayout;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChangedUncheck(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    :cond_20
    return-void
.end method

.method private onDisplayChangedUncheck(Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .registers 14

    new-instance v0, Lcom/android/wm/shell/pip/phone/a0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/a0;-><init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/common/DisplayLayout;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v1

    if-eqz v1, :cond_11a

    if-eqz p2, :cond_11a

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object v1

    new-instance p2, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result v9

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->densityDpi()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->densityDpi()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->densityDpi()I

    move-result v4

    if-eq v2, v4, :cond_55

    const/4 v2, 0x1

    move v10, v2

    goto :goto_56

    :cond_55
    move v10, v3

    :goto_56
    if-eqz v10, :cond_7a

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->densityDpi()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->densityDpi()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int p1, v4

    invoke-virtual {p2, v3, v3, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7a
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/a0;->run()V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p1, p2, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v5

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashOffset()I

    move-result v6

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v8

    move-object v2, p2

    move v4, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v10, :cond_b9

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/R$integer;->config_pipEnterAnimationDuration:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    goto :goto_be

    :cond_b9
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;)V

    :goto_be
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getMinSize()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-lt p1, p2, :cond_10e

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getMaxSize()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-gt p1, p2, :cond_10e

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getMinSize()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-lt p1, p2, :cond_10e

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getMaxSize()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-le p1, p2, :cond_11d

    :cond_10e
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v9}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->userResizeTo(Landroid/graphics/Rect;F)V

    goto :goto_11d

    :cond_11a
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/a0;->run()V

    :cond_11d
    :goto_11d
    return-void
.end method

.method private onDisplayRotationChanged(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/window/WindowContainerTransaction;)Z
    .registers 24

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p7

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayId()I

    move-result v3

    const/4 v4, 0x0

    move/from16 v5, p5

    if-ne v5, v3, :cond_97

    move/from16 v3, p6

    if-ne v3, v2, :cond_16

    goto/16 :goto_97

    :cond_16
    const/4 v3, 0x1

    const/4 v5, 0x2

    :try_start_18
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v5
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_7d

    if-nez v5, :cond_23

    return v4

    :cond_23
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object v7

    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v8, p3

    invoke-direct {v6, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v8, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result v10

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v8, v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v2, v6, v4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v11

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashOffset()I

    move-result v12

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v14

    move-object v8, v6

    invoke-virtual/range {v7 .. v14}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v5, Landroid/app/ActivityTaskManager$RootTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object/from16 v2, p8

    invoke-virtual {v2, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    return v3

    :catch_7d
    move-exception v0

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_97

    const-string v1, "PipController"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x3d38859e

    const/4 v7, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    invoke-static {v2, v6, v4, v7, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_97
    :goto_97
    return v4
.end method

.method private onDisplayRotationChangedNotInPip(Landroid/content/Context;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    return-void
.end method

.method private onInit()V
    .registers 10

    const-string v0, "PipController"

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v2, Lcom/android/launcher3/model/z0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/z0;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v1, v2, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-string/jumbo v4, "pip_input_consumer"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/pip/PipTransitionController;->registerPipTransitionCallback(Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    new-instance v2, Lcom/android/wm/shell/pip/phone/k;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/k;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->registerOnDisplayIdChangeCallback(Ljava/util/function/IntConsumer;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    new-instance v2, Lcom/android/wm/shell/pip/phone/h;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/h;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->addOnPipTransitionStateChangedListener(Lcom/android/wm/shell/pip/PipTransitionState$OnPipTransitionStateChangedListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    new-instance v2, Lcom/android/wm/shell/pip/phone/j;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip/phone/j;-><init>(Lcom/android/wm/shell/pip/phone/PipController;I)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipBoundsState;->setOnMinimalSizeChangeCallback(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    new-instance v2, Lcom/android/wm/shell/pip/phone/e;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/e;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipBoundsState;->setOnShelfVisibilityChangeCallback(Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_68

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    new-instance v5, Lcom/android/wm/shell/pip/phone/i;

    invoke-direct {v5, v1, v2}, Lcom/android/wm/shell/pip/phone/i;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->setInputListener(Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/core/view/a;

    invoke-direct {v5, v4}, Landroidx/core/view/a;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->setRegistrationListener(Lcom/android/wm/shell/pip/phone/PipInputConsumer$RegistrationListener;)V

    :cond_68
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->setDisplayId(I)V

    new-instance v1, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    const/4 v1, 0x0

    const v4, 0x79cf6064

    const/4 v5, 0x2

    :try_start_96
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedTaskListener:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/WindowManagerShellWrapper;->addPinnedStackListener(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9d} :catch_9e

    goto :goto_b2

    :catch_9e
    move-exception v6

    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v7, :cond_b2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v2

    aput-object v6, v8, v3

    invoke-static {v7, v4, v2, v1, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b2
    :goto_b2
    :try_start_b2
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v6

    invoke-interface {v6, v5, v2}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_d9

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->registerInputConsumer()V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_c1} :catch_c2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b2 .. :try_end_c1} :catch_c2

    goto :goto_d9

    :catch_c2
    move-exception v6

    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v7, :cond_d6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v7, v5, v3

    invoke-static {v8, v4, v2, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d9
    :goto_d9
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$2;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$3;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->addListener(Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayId()I

    move-result v1

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/PipController$4;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

    new-instance v1, Lcom/android/wm/shell/pip/phone/g;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/g;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TabletopModeController;->registerOnTabletopModeChangedListener(Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mOneHandedController:Ljava/util/Optional;

    new-instance v1, Lcom/android/launcher3/g;

    invoke-direct {v1, p0}, Lcom/android/launcher3/g;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipMediaController;->registerSessionListenerForCurrentUser()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addUserChangeListener(Lcom/android/wm/shell/sysui/UserChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/launcher/layout/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/a;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    const-string v2, "extra_shell_pip"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    return-void
.end method

.method private onKeepClearAreasChangedCallback()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

    sget-wide v1, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->updatePipPositionForKeepClearAreas()V

    return-void
.end method

.method private onPipResourceDimensionsChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_shadow_radius:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onPipResourceDimensionsChanged(II)V

    :cond_1f
    return-void
.end method

.method private onPipTransitionFinishedOrCanceled(I)V
    .registers 4

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onPinnedStackAnimationEnded(I)V

    return-void
.end method

.method private onSystemUiStateChanged(ZI)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onSystemUiStateChanged(Z)V

    return-void
.end method

.method private setLauncherAppIconSize(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getLauncherState()Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;->setAppIconSizePx(I)V

    return-void
.end method

.method private setLauncherKeepClearAreaHeight(ZI)V
    .registers 7

    const-string v0, "hotseat"

    if-eqz p1, :cond_2c

    new-instance p1, Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p2

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v1, v2, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->addNamedUnrestrictedKeepClearArea(Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->updatePipPositionForKeepClearAreas()V

    goto :goto_41

    :cond_2c
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->removeNamedUnrestrictedKeepClearArea(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Ljava/lang/Runnable;

    sget-wide v0, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :goto_41
    return-void
.end method

.method private setOnIsInPipStateChangedListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private setShelfHeight(ZI)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->setShelfHeightLocked(ZI)V

    :cond_7
    return-void
.end method

.method private setShelfHeightLocked(ZI)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    const/4 p2, 0x0

    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setShelfVisibility(ZI)V

    return-void
.end method

.method private startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getRestrictedKeepClearAreas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_e
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    if-lez p5, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-direct {p0, v0, p5}, Lcom/android/wm/shell/pip/phone/PipController;->setShelfHeightLocked(ZI)V

    :goto_1a
    iget-object p5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p5, p4}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayRotationChangedNotInPip(Landroid/content/Context;I)V

    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setNormalBounds(Landroid/graphics/Rect;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startSwipePipToHome, entryBounds: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", return to launcher"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PipController"

    invoke-static {p2, p0}, Lcom/oplus/pip/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .registers 13
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setNormalBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_30
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onMovementBoundsChanged(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2, v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object v3, v6

    move v4, p3

    move v5, p4

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    return-void
.end method

.method private updatePipPositionForKeepClearAreas()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->shouldBlockResizeRequest()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;->adjust(Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionState;->hasEnteredPip()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    goto :goto_46

    :cond_39
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionState;->isEnteringPip()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->updateAnimatorBounds(Landroid/graphics/Rect;)V

    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public expandPip()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip(Z)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public hasPinnedStackAnimationListener()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->onConfigurationChanged(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onConfigurationChanged()V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->onConfigurationChanged()V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->onConfigurationChanged()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->onPipResourceDimensionsChanged()V

    return-void
.end method

.method public onKeyguardDismissAnimationFinished()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    :cond_11
    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .registers 5

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipTransitionState;->hasEnteredPip()Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/pip/phone/PipController;->hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    goto :goto_22

    :cond_19
    if-nez p3, :cond_22

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    :cond_22
    :goto_22
    return-void
.end method

.method public onPipTransitionCanceled(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onPipTransitionFinishedOrCanceled(I)V

    return-void
.end method

.method public onPipTransitionFinished(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onPipTransitionFinishedOrCanceled(I)V

    return-void
.end method

.method public onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2, v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->getTransitionTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PipController;->saveReentryState(Landroid/graphics/Rect;)V

    :cond_2c
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    if-eqz p2, :cond_41

    invoke-interface {p2}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onPipAnimationStarted()V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_41

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onExpandPip()V

    :cond_41
    return-void
.end method

.method public onThemeChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onOverlayChanged()V

    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .registers 3
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipMediaController;->registerSessionListenerForCurrentUser()V

    return-void
.end method

.method public saveReentryState(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->hasUserResizedPip()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->saveReentryState(Landroid/util/Size;F)V

    return-void

    :cond_15
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getUserResizeBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_41

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getUserResizeBounds()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    :cond_41
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->saveReentryState(Landroid/util/Size;F)V

    return-void
.end method

.method public setEnablePipKeepClearAlgorithm(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    return-void
.end method

.method public setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController;->onPipResourceDimensionsChanged()V

    return-void
.end method

.method public setTouchGesture(Lcom/android/wm/shell/pip/phone/PipTouchGesture;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->setTouchGesture(Lcom/android/wm/shell/pip/phone/PipTouchGesture;)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->showPictureInPictureMenu()V

    return-void
.end method
