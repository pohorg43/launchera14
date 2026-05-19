.class public final Lcom/android/launcher3/views/FloatingIconViewContainer;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;,
        Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;,
        Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;
    }
.end annotation


# static fields
.field public static final CALL_DEPATH:I = 0x5

.field public static final CLICK_TO_OPEN_APP:I = 0x5

.field public static final CLICK_TO_OPEN_FOLDER:I = 0x2

.field public static final Companion:Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;

.field private static final INVALID_SCREEN_ID:I = -0x1

.field public static final PULL_DOWN_TO_CONTROL_CENTER:I = 0x7

.field public static final PULL_DOWN_TO_GLOBAL_SEARCH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FloatingIconViewContainer"

.field public static final TO_ALL_APPS:I = 0x3

.field public static final TO_ASSISTANT_SCREEN:I = 0x4

.field public static final WORKSPACE_TRANSITION:I = 0x1


# instance fields
.field private isBracketSpaceRunning:Z

.field private isGestureStarted:Z

.field private mCurrentWindowAlpha:F

.field private mFinished:Z

.field private mHotseatIcon:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOriginalView:Landroid/view/View;

.field private mParentScreenId:I

.field private mRecentInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

.field private mRemoteInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

.field private mWorkspaceBeginScrollX:I

.field private stateCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/views/FloatingIconViewContainer;->Companion:Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mParentScreenId:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mCurrentWindowAlpha:F

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->stateCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string p2, "fromContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method private final calculateScrollX()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mWorkspaceBeginScrollX:I

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private final isTouchPointInView(Landroid/view/MotionEvent;)Z
    .registers 4

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p0, v1}, Landroid/widget/FrameLayout;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public final alphaChanged(FI)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mHotseatIcon:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mParentScreenId:I

    if-eq v0, p2, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_10
    :goto_10
    return-void
.end method

.method public final begin(ZLandroid/view/View;)V
    .registers 5

    const-string v0, "FloatingIconViewContainer"

    const-string v1, "Begin."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->stateCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setVisibility(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mWorkspaceBeginScrollX:I

    iput-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mHotseatIcon:Z

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    const/4 p1, 0x0

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, p1

    :goto_36
    instance-of v0, v0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_51

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_44

    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :cond_44
    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p1

    goto :goto_52

    :cond_51
    const/4 p1, -0x1

    :goto_52
    iput p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mParentScreenId:I

    return-void
.end method

.method public final dispatchTouchEventIfPossible(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isTouchPointInView(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    move v0, p0

    :cond_e
    return v0
.end method

.method public final doTranslationIfNeeded()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mHotseatIcon:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mCurrentWindowAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    goto :goto_18

    :cond_10
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->calculateScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final finish()V
    .registers 3

    const-string v0, "FloatingIconViewContainer"

    const-string v1, "finish."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->stateCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_15

    const-string p0, "finish cannot set invisible as multiple begins called"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->stateCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    iput v1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mWorkspaceBeginScrollX:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mParentScreenId:I

    return-void
.end method

.method public final getMOriginalView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    return-object p0
.end method

.method public final hideFloatingIconView()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_47

    const-string/jumbo v0, "now is floatingiconview animating, set floatingiconviewcontainer alpha and originalview visiable. getCallers: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FloatingIconViewContainer"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_33

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-eqz v0, :cond_3a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    :cond_3a
    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    invoke-interface {v0, p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurfaceSafely(Landroid/view/View;)V

    :cond_47
    return-void
.end method

.method public final interruptRecentBySomeReason(ILjava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "runDeferredCallback, reason = "

    const-string v1, ", callback null ?= "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRecentInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRemoteInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    if-nez v1, :cond_1f

    move v2, v3

    :cond_1f
    const-string v1, "FloatingIconViewContainer"

    invoke-static {v0, v2, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-ne p1, v3, :cond_37

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->isCurrentNormalEffect()Z

    move-result v0

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    if-eqz v0, :cond_37

    :cond_30
    const-string/jumbo p0, "runDeferredCallback return as normal effect"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRecentInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    if-eqz v0, :cond_41

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;->run(ILjava/util/function/Consumer;)V

    :cond_41
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRecentInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    :cond_43
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRemoteInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    if-eqz v0, :cond_4e

    if-eqz v0, :cond_4c

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;->run(ILjava/util/function/Consumer;)V

    :cond_4c
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRemoteInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    :cond_4e
    return-void
.end method

.method public final isClosingAppSameAsPendingOpenApp(Ljava/lang/String;IZ)Z
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRecentInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;->isSamePackage(Ljava/lang/String;IZ)Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isClosingAppSameAsPendingOpenApp, openAppPkg = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSamePackage="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatingIconViewContainer"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final isFinished()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    return p0
.end method

.method public final isGestureStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->isGestureStarted:Z

    return p0
.end method

.method public final isRecentAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRecentInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final setBracketSpaceRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->isBracketSpaceRunning:Z

    return-void
.end method

.method public final setInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRecentInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iput-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->isGestureStarted:Z

    return-void
.end method

.method public final setMOriginalView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    return-void
.end method

.method public final setRemoteInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mRemoteInterruptOpts:Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->isBracketSpaceRunning:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setWindowAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mCurrentWindowAlpha:F

    return-void
.end method
