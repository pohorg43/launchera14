.class public Lcom/android/wm/shell/back/BackAnimationController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;,
        Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/back/BackAnimationController;",
        ">;"
    }
.end annotation


# static fields
.field public static final CALLER_DEPTH:I = 0x5

.field public static final FLING_MAX_LENGTH_SECONDS:F = 0.1f

.field public static final FLING_SPEED_UP_FACTOR:F = 0.6f

.field public static final IS_ENABLED:Z

.field public static IS_U_ANIMATION_ENABLED:Z = false

.field private static final MAX_ANIMATION_DURATION:J = 0x7d0L

.field private static final MAX_FLING_PROGRESS:F = 0.3f

.field private static final SETTING_VALUE_OFF:I = 0x0

.field private static final SETTING_VALUE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShellBackPreview"


# instance fields
.field private mActiveCallback:Landroid/window/IOnBackInvokedCallback;

.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field private final mAnimationDefinition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/back/BackAnimationRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationTimeoutRunnable:Ljava/lang/Runnable;

.field private final mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

.field private mBackGestureStarted:Z

.field private mBackNavigationInfo:Landroid/window/BackNavigationInfo;

.field private final mBgHandler:Landroid/os/Handler;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

.field private mCustomizer:Lcom/android/wm/shell/back/StatusBarCustomizer;

.field private mDefaultActivityAnimation:Lcom/android/wm/shell/back/CrossActivityAnimation;

.field private final mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field private mGestrueHandler:Landroid/os/Handler;

.field public final mNavigationObserver:Landroid/os/RemoteCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPostCommitAnimationInProgress:Z

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mShouldStartOnNextMoveEvent:Z

.field private final mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

.field private mTriggerBack:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    sput-boolean v0, Lcom/android/wm/shell/back/BackAnimationController;->IS_ENABLED:Z

    const-string/jumbo v0, "persist.wm.debug.predictive_back_anim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    sput-boolean v1, Lcom/android/wm/shell/back/BackAnimationController;->IS_U_ANIMATION_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/app/IActivityTaskManager;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .registers 11
    .param p3  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p4  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    new-instance v0, Lcom/android/wm/shell/back/o;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/o;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/back/TouchTracker;

    invoke-direct {v0}, Lcom/android/wm/shell/back/TouchTracker;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/wm/shell/back/BackAnimationController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/BackAnimationController$1;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mNavigationObserver:Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;-><init>(Lcom/android/wm/shell/back/BackAnimationController;Lcom/android/wm/shell/back/BackAnimationController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p5, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iput-object p6, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p2, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p8, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;-><init>(Landroid/util/DisplayMetrics;)V

    const p1, 0x3dcccccd  # 0.1f

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p1

    const p2, 0x3f19999a  # 0.6f

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V
    .registers 16
    .param p3  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p4  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
        .end annotation
    .end param

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/back/BackAnimationController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/app/IActivityTaskManager;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->onInit()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/back/BackAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/back/BackAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/back/BackAnimationController;FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/back/BackAnimationController;->setSwipeThresholds(FFF)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/back/BackAnimationController;Lcom/android/internal/view/AppearanceRegion;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->customizeStatusBarAppearance(Lcom/android/internal/view/AppearanceRegion;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/window/BackNavigationInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->invokeOrCancelBack()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/back/BackAnimationRunner;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->getAnimationRunnerAndInit()Lcom/android/wm/shell/back/BackAnimationRunner;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/window/IOnBackInvokedCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;)Landroid/window/IOnBackInvokedCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    return-object p1
.end method

.method public static synthetic access$1802(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IBackAnimationFinishedCallback;)Landroid/window/IBackAnimationFinishedCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/back/TouchTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/back/BackAnimationController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackStarted(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->startPostCommitAnimation()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mGestrueHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/wm/shell/back/BackAnimationController;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mGestrueHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/back/BackAnimationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->onGestureFinished(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->updateEnableAnimationFromSetting()V

    return-void
.end method

.method public static synthetic access$802(Lcom/android/wm/shell/back/BackAnimationController;Lcom/android/wm/shell/back/StatusBarCustomizer;)Lcom/android/wm/shell/back/StatusBarCustomizer;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizer:Lcom/android/wm/shell/back/StatusBarCustomizer;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/back/BackAnimationBackground;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method private createAdapter()V
    .registers 3

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$4;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    new-instance v1, Landroid/window/BackAnimationAdapter;

    invoke-direct {v1, v0}, Landroid/window/BackAnimationAdapter;-><init>(Landroid/window/IBackAnimationRunner;)V

    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    return-void
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    return-object v0
.end method

.method private customizeStatusBarAppearance(Lcom/android/internal/view/AppearanceRegion;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizer:Lcom/android/wm/shell/back/StatusBarCustomizer;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/wm/shell/back/StatusBarCustomizer;->customizeStatusBarAppearance(Lcom/android/internal/view/AppearanceRegion;)V

    :cond_7
    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/back/BackAnimationController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->lambda$dispatchOrAnimateOnBackInvoked$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private dispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V
    .registers 6

    const-string p0, "ShellBackPreview"

    if-nez p1, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v0, "dispatchOnBackCancelled"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchOnBackCancelled, callback: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception p1

    const-string v0, "dispatchOnBackCancelled error: "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    return-void
.end method

.method private dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V
    .registers 7

    const-string v0, "ShellBackPreview"

    if-nez p1, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "dispatchOnBackInvoked"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchOnBackInvoked, callback: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->setBinderThreadUxFlag(I)V

    invoke-interface {p1}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->setBinderThreadUxFlag(I)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_42

    :catch_3c
    move-exception p0

    const-string p1, "dispatchOnBackInvoked error: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    return-void
.end method

.method private dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, -0x1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->setBinderThreadUxFlag(I)V

    invoke-interface {p1, p2}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->setBinderThreadUxFlag(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    const-string p1, "ShellBackPreview"

    const-string p2, "dispatchOnBackProgressed error: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method private dispatchOnBackStarted(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .registers 8

    const-string v0, "ShellBackPreview"

    if-nez p1, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "dispatchOnBackStarted"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchOnBackStarted, callback: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", backEvent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->setBinderThreadUxFlag(I)V

    invoke-interface {p1, p2}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->setBinderThreadUxFlag(I)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_43} :catch_44

    goto :goto_4a

    :catch_44
    move-exception p0

    const-string p1, "dispatchOnBackStarted error: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    return-void
.end method

.method private dispatchOrAnimateOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V
    .registers 15

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->isAnimationCallback()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {v0}, Lcom/android/wm/shell/back/TouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    move-result-object v0

    if-eqz v0, :cond_7b

    iget-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v4}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->getHighVelocityPxPerSecond()F

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {v5}, Lcom/android/wm/shell/back/TouchTracker;->getMaxDistance()F

    move-result v5

    const v6, 0x3e99999a  # 0.3f

    mul-float v12, v5, v6

    invoke-virtual {v0}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v9

    invoke-virtual {v0}, Landroid/window/BackMotionEvent;->getVelocityX()F

    move-result v0

    neg-float v6, v4

    invoke-static {v0, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    div-float v0, v11, v4

    mul-float/2addr v0, v12

    add-float/2addr v0, v9

    const/4 v4, 0x0

    invoke-static {v0, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7b

    cmpl-float v0, v9, v10

    if-eqz v0, :cond_7b

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_7b

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v9, v0, v2

    aput v10, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v7, p0, Lcom/android/wm/shell/back/BackAnimationController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object v8, v0

    invoke-virtual/range {v7 .. v12}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    new-instance v2, Lcom/android/wm/shell/back/m;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/back/m;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/wm/shell/back/BackAnimationController$3;

    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/back/BackAnimationController$3;-><init>(Lcom/android/wm/shell/back/BackAnimationController;Landroid/window/IOnBackInvokedCallback;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7c

    :cond_7b
    move v1, v2

    :goto_7c
    if-nez v1, :cond_81

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V

    :cond_81
    return-void
.end method

.method private getAnimationRunnerAndInit()Lcom/android/wm/shell/back/BackAnimationRunner;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v2}, Landroid/window/BackNavigationInfo;->getCustomAnimationInfo()Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    if-eqz v3, :cond_37

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->prepareNextAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/back/BackAnimationRunner;

    invoke-virtual {v2}, Lcom/android/wm/shell/back/BackAnimationRunner;->resetWaitingAnimation()V

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    iget-object v3, v3, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_37
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/back/BackAnimationRunner;

    return-object p0
.end method

.method private initBackAnimationRunners()V
    .registers 4

    sget-boolean v0, Lcom/android/wm/shell/back/BackAnimationController;->IS_U_ANIMATION_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    const/4 v2, 0x3

    iget-object v0, v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/wm/shell/back/CrossActivityAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/back/CrossActivityAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mDefaultActivityAnimation:Lcom/android/wm/shell/back/CrossActivityAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    const/4 v2, 0x2

    iget-object v0, v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    return-void
.end method

.method private injectBackKey()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->sendBackEvent(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->sendBackEvent(I)V

    return-void
.end method

.method private invokeOrCancelBack()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    if-eqz v0, :cond_15

    :try_start_4
    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    invoke-interface {v0, v1}, Landroid/window/IBackAnimationFinishedCallback;->onAnimationFinished(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "ShellBackPreview"

    const-string v2, "Failed call IBackAnimationFinishedCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    if-eqz v1, :cond_25

    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOrAnimateOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V

    goto :goto_28

    :cond_25
    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation()V

    return-void
.end method

.method private synthetic lambda$dispatchOrAnimateOnBackInvoked$1(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/back/TouchTracker;->getProgress(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/back/TouchTracker;->createProgressEvent(F)Landroid/window/BackMotionEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x7d0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x159cf767

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "Animation didn\'t finish in %d ms. Resetting..."

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->onBackAnimationFinished()V

    return-void
.end method

.method private onBackNavigationInfoReceived(Landroid/window/BackNavigationInfo;)V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x7f37ffb6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "Received backNavigationInfo:%s"

    invoke-static {v1, v2, v4, v0, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    if-nez p1, :cond_22

    const-string p0, "ShellBackPreview"

    const-string p1, "Received BackNavigationInfo is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    invoke-virtual {p1}, Landroid/window/BackNavigationInfo;->getType()I

    move-result p1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToAnimator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/back/BackAnimationRunner;

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationRunner;->startGesture()V

    goto :goto_55

    :cond_41
    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    goto :goto_55

    :cond_44
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/back/TouchTracker;->createStartEvent(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackMotionEvent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackStarted(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    :goto_55
    return-void
.end method

.method private onGestureFinished(Z)V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0xdfb413

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string/jumbo v0, "onGestureFinished() mTriggerBack == %s"

    invoke-static {v2, v3, v1, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation()V

    return-void

    :cond_23
    if-eqz p1, :cond_27

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    :cond_27
    iget-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p0, :cond_3a

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x5d015420

    const-string v2, "Animation is still running"

    invoke-static {p0, p1, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    return-void

    :cond_3b
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-nez p1, :cond_4a

    iget-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    if-eqz p1, :cond_46

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->injectBackKey()V

    :cond_46
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation()V

    return-void

    :cond_4a
    invoke-virtual {p1}, Landroid/window/BackNavigationInfo;->getType()I

    move-result p1

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/back/BackAnimationRunner;

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToAnimator()Z

    move-result v2

    if-eqz v2, :cond_8b

    if-nez p1, :cond_5f

    goto :goto_8b

    :cond_5f
    invoke-virtual {p1}, Lcom/android/wm/shell/back/BackAnimationRunner;->isWaitingAnimation()Z

    move-result v2

    if-eqz v2, :cond_7d

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p1, :cond_73

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x64d55f35

    const-string v3, "Gesture released, but animation didn\'t ready."

    invoke-static {p1, v2, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_73
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_7d
    invoke-virtual {p1}, Lcom/android/wm/shell/back/BackAnimationRunner;->isAnimationCancelled()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->invokeOrCancelBack()V

    return-void

    :cond_87
    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->startPostCommitAnimation()V

    return-void

    :cond_8b
    :goto_8b
    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->invokeOrCancelBack()V

    return-void
.end method

.method private onGestureStarted(FFI)V
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x46dd5950

    const/4 v4, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "initAnimation mMotionStarted=%b"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    const-string v2, "ShellBackPreview"

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_2d

    :cond_25
    const-string v0, "Animation is being initialized but is already started."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation()V

    :cond_2d
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/back/TouchTracker;->setGestureStartLocation(FFI)V

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    :try_start_34
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mNavigationObserver:Landroid/os/RemoteCallback;

    iget-object p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_43

    iget-object p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    goto :goto_44

    :cond_43
    const/4 p3, 0x0

    :goto_44
    invoke-interface {p1, p2, p3}, Landroid/app/IActivityTaskManager;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->onBackNavigationInfoReceived(Landroid/window/BackNavigationInfo;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_4d} :catch_4e

    goto :goto_57

    :catch_4e
    move-exception p1

    const-string p2, "Failed to initAnimation"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation()V

    :goto_57
    return-void
.end method

.method private onInit()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBgHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->setupAnimationDeveloperSettingsObserver(Landroid/content/ContentResolver;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->createAdapter()V

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/launcher/layout/d;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/d;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    const-string v2, "extra_shell_back_animation"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->initBackAnimationRunners()V

    return-void
.end method

.method private onMove()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {v0}, Lcom/android/wm/shell/back/TouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private sendBackEvent(I)V
    .registers 16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const-string/jumbo v0, "sendBackEvent, action: "

    const-string v1, "ShellBackPreview"

    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v13, p1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    const-class p1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v13, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    if-nez p0, :cond_40

    const-string p0, "Inject input event fail"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void
.end method

.method private setBinderThreadUxFlag(I)V
    .registers 7

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string/jumbo p1, "setBinderThreadUxFlag"

    invoke-static {p0, p1, v1, v0}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSwipeThresholds(FFF)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/back/TouchTracker;->setProgressThresholds(FFF)V

    return-void
.end method

.method private setupAnimationDeveloperSettingsObserver(Landroid/content/ContentResolver;Landroid/os/Handler;)V
    .registers 5
    .param p2  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
        .end annotation
    .end param

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$2;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/back/BackAnimationController$2;-><init>(Lcom/android/wm/shell/back/BackAnimationController;Landroid/os/Handler;)V

    const-string p2, "enable_back_animation"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->updateEnableAnimationFromSetting()V

    return-void
.end method

.method private shouldDispatchToAnimator()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/window/BackNavigationInfo;->isPrepareRemoteAnimation()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private startPostCommitAnimation()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x2c1e65eb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "BackAnimationController: startPostCommitAnimation()"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOrAnimateOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V

    goto :goto_37

    :cond_32
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V

    :goto_37
    return-void
.end method

.method private updateEnableAnimationFromSetting()V
    .registers 5
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_back_animation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p0, :cond_2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x7fb8f79f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Back animation enabled=%s"

    invoke-static {v0, v3, v2, p0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public finishBackNavigation()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x100de552

    const-string v4, "BackAnimationController: finishBackNavigation()"

    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {v0}, Lcom/android/wm/shell/back/TouchTracker;->reset()V

    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mDefaultActivityAnimation:Lcom/android/wm/shell/back/CrossActivityAnimation;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mDefaultActivityAnimation:Lcom/android/wm/shell/back/CrossActivityAnimation;

    iget-object v4, v4, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2f
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_3a

    iget-boolean v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    invoke-virtual {v0, v3}, Landroid/window/BackNavigationInfo;->onBackNavigationFinished(Z)V

    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    :cond_3a
    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    return-void
.end method

.method public getBackAnimationImpl()Lcom/android/wm/shell/back/BackAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public onBackAnimationFinished()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x44dc365c

    const/4 v3, 0x0

    const-string v4, "BackAnimationController: onBackAnimationFinished()"

    invoke-static {v1, v2, v0, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->invokeOrCancelBack()V

    return-void
.end method

.method public onMotionEvent(FFFFII)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/back/TouchTracker;->update(FFFF)V

    const/4 p3, 0x1

    if-nez p5, :cond_14

    iget-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez p1, :cond_4c

    iput-boolean p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    goto :goto_4c

    :cond_14
    const/4 p4, 0x2

    const/4 v0, 0x0

    if-ne p5, p4, :cond_29

    iget-boolean p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez p3, :cond_25

    iget-boolean p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    if-eqz p3, :cond_25

    invoke-direct {p0, p1, p2, p6}, Lcom/android/wm/shell/back/BackAnimationController;->onGestureStarted(FFI)V

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    :cond_25
    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->onMove()V

    goto :goto_4c

    :cond_29
    const/4 p1, 0x3

    if-eq p5, p3, :cond_2e

    if-ne p5, p1, :cond_4c

    :cond_2e
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p2, :cond_45

    int-to-long v1, p5

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p4, -0x2363b9cd

    new-array p6, p3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p6, v0

    const-string v1, "Finishing gesture with event action: %d"

    invoke-static {p2, p4, p3, v1, p6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    if-ne p5, p1, :cond_49

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    :cond_49
    invoke-direct {p0, p3}, Lcom/android/wm/shell/back/BackAnimationController;->onGestureFinished(Z)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public registerAnimation(ILcom/android/wm/shell/back/BackAnimationRunner;)V
    .registers 3
    .param p1  # I
        .annotation build Landroid/window/BackNavigationInfo$BackTargetType;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setEnableUAnimation(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sput-boolean p1, Lcom/android/wm/shell/back/BackAnimationController;->IS_U_ANIMATION_ENABLED:Z

    return-void
.end method

.method public setTriggerBack(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/TouchTracker;->setTriggerBack(Z)V

    return-void
.end method

.method public unregisterAnimation(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroid/window/BackNavigationInfo$BackTargetType;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
