.class public Lcom/oplus/quickstep/dock/DockView;
.super Lcom/android/launcher/OplusPagedViewImpl;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dock/DockContract$Dock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dock/DockView$LinkScrollState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Lcom/android/launcher/OplusPagedViewImpl;",
        "Lcom/oplus/quickstep/dock/DockContract$Dock;"
    }
.end annotation


# static fields
.field public static final ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final ALPHA_CHANGE_FACTOR:I = 0xa

.field private static final ALPHA_OFFSET_FACTOR:F = 3.0f

.field private static final CALLER_DEPTH:I = 0x3

.field public static final DOCK_ICON_TRANSLATION_X:F = -100.0f

.field public static final DOCK_ICON_VIEW_TRANSLATION_Z:F = 0.1f

.field public static final ENTER_ANIMATION_DURATION:J = 0x190L

.field public static final ENTER_ANIMATION_START_DELAY:J = 0x32L

.field public static final EXITANIMATION_DURATION:J = 0xc8L

.field public static final FLAG_EXIT_ANOMATOR_CANCEL:I = 0x8

.field public static final FLAG_EXIT_ANOMATOR_END:I = 0x4

.field public static final FLAG_EXIT_ANOMATOR_START:I = 0x2

.field public static final FOLD_MIN_ANIMATE_COUNT:I = 0x8

.field public static final ICON_VIEW_POOL_INITIALSIZE:I = 0xa

.field public static final ICON_VIEW_POOL_MAXSIZE:I = 0x14

.field public static final MAXIMUM_VELOCITY_SCALE:F = 0.4f

.field public static final MIN_ANIMATE_COUNT:I = 0x5

.field private static final OVER_SCROLL_SCALE:F = 1.5f

.field public static final TABLE_HORIZONTAL_MIN_ANIMATE_COUNT:I = 0xa

.field public static final TABLE_VERTICAL_MIN_ANIMATE_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "DockView"

.field private static final TIMEOUT_TO_RESET_TOUCH_MS:J = 0x5dcL

.field public static final TRANSLATION_X_FACTOR_1:F = 1.0f

.field public static final TRANSLATION_X_FACTOR_2:F = 2.0f

.field public static final TRANSLATION_X_FACTOR_3:F = 3.0f


# instance fields
.field private isExitAnimating:Z

.field public final mActivity:Lcom/android/launcher3/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdjacentPageOffset:F

.field private mCanScrollByTouch:Z

.field private mDockIconDisplacementFactor:F

.field private mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

.field private mDownTime:Ljava/lang/Long;

.field private mDownX:I

.field private mDownY:I

.field private mFlagExitAnimator:I

.field private final mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

.field private final mIconViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/oplus/quickstep/dock/DockIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPortrait:Z

.field private mIsInMultiWindowMode:Z

.field private mIsRecentsViewPortrait:Z

.field private mIsScaleMaxinumVelocity:Z

.field private mIsScrolling:Z

.field private mLastButtonToOverviewAnimator:Landroid/animation/Animator;

.field private mLastState:Lcom/android/launcher3/LauncherState;

.field private mLastTargetState:Lcom/android/launcher3/states/OPlusBaseState;

.field private final mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

.field private mLocationY:I

.field private mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private mRecoveryTouchTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

.field private mScrollScale:F

.field private final mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

.field private mScrollXOnTouched:I

.field private final mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

.field public final mTempRect:Landroid/graphics/Rect;

.field private mTouchDownToStartHome:Z

.field private mTouchedDockIconViewInScrolling:Lcom/oplus/quickstep/dock/DockIconView;

.field private mUpdatePageOnRotationChanged:Z

.field private mWaitForAnimationCall:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dock/DockView$1;

    const-string v1, "adjacentDockViewOffset"

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dock/DockView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/dock/DockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-direct {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    new-instance v0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-direct {v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockIconDisplacementFactor:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->isExitAnimating:Z

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDownTime:Ljava/lang/Long;

    const/4 v2, -0x1

    iput v2, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollXOnTouched:I

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchedDockIconViewInScrolling:Lcom/oplus/quickstep/dock/DockIconView;

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mCanScrollByTouch:Z

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mLastButtonToOverviewAnimator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mRecoveryTouchTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    new-instance p2, Lcom/android/launcher3/util/ViewPool;

    const v6, 0x7f0d024a

    const/16 v7, 0x14

    const/16 v8, 0xa

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mIconViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScaleMaxinumVelocity:Z

    instance-of p1, p2, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_90

    check-cast p2, Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_90

    move v1, v0

    :cond_90
    iput-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OverScroller;->useFrictionCoefficient(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/dock/DockView;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView;->mAdjacentPageOffset:F

    return p0
.end method

.method public static synthetic access$002(Lcom/oplus/quickstep/dock/DockView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mAdjacentPageOffset:F

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->updatePageOffsets()V

    return-void
.end method

.method public static synthetic access$300(Lcom/oplus/quickstep/dock/DockView;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mLastButtonToOverviewAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/oplus/quickstep/dock/DockView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastButtonToOverviewAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/oplus/quickstep/dock/DockView;Lcom/oplus/quickstep/utils/SimpleCancellableTask;)Lcom/oplus/quickstep/utils/SimpleCancellableTask;
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecoveryTouchTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/oplus/quickstep/dock/DockView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mCanScrollByTouch:Z

    return p1
.end method

.method public static synthetic access$601(Lcom/oplus/quickstep/dock/DockView;II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method private cancelRecoveryTouchTask()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecoveryTouchTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecoveryTouchTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SimpleCancellableTask;->cancel()V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method private computScaleMaxinumVelocity()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScaleMaxinumVelocity:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v0, v0

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScaleMaxinumVelocity:Z

    :cond_11
    return-void
.end method

.method private computeScrollScale()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_30

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->superGetTaskSize(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeScrollScale, mTempRect width:0, rect width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "DockView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->computeScrollScale(I)V

    return-void
.end method

.method private computeScrollScale(I)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    const-string v0, "computeScrollScale: mScrollScale = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " taskWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " taskPageSpacing = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " iconWidth = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pageSpacing = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    const-string p1, "QuickStep"

    const-string v1, "DockView"

    invoke-static {v0, p0, p1, v1}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static findPageIndexByOriginIndex(ILcom/android/launcher3/PagedView;Ljava/util/function/Function;Lcom/android/launcher3/PagedView;Ljava/util/function/Function;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/PagedView;",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Lcom/android/launcher3/PagedView;",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_3b

    if-eqz p3, :cond_3b

    if-eqz p2, :cond_3b

    if-nez p4, :cond_a

    goto :goto_3b

    :cond_a
    invoke-virtual {p1, p0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    if-nez p1, :cond_17

    return v0

    :cond_17
    invoke-virtual {p3, p0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    if-ne p1, p2, :cond_24

    return p0

    :cond_24
    invoke-virtual {p3}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p0

    const/4 p2, 0x0

    :goto_29
    if-ge p2, p0, :cond_3b

    invoke-virtual {p3, p2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    if-ne p1, v1, :cond_38

    return p2

    :cond_38
    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    :cond_3b
    :goto_3b
    return v0
.end method

.method private getIconSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getDockIconSize(Landroid/content/res/Resources;)I

    move-result v1

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d99

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x2

    invoke-static {p1, v1, v2, v0}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v1

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIconSize: visibleWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " outWidth = "

    const-string v3, " outRect = "

    invoke-static {v0, p1, v2, v1, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mPageSpacing = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    const-string p1, "DockView"

    invoke-static {v0, p0, p1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private getTouchedDockIconView(III)Lcom/oplus/quickstep/dock/DockIconView;
    .registers 12

    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, -0x1

    move v5, v2

    :goto_c
    if-ge v5, v1, :cond_26

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v6, :cond_17

    goto :goto_23

    :cond_17
    invoke-virtual {p0, v5, v0}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_23

    move v4, v5

    move v3, v6

    :cond_23
    :goto_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_26
    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    instance-of v3, v0, Lcom/oplus/quickstep/dock/DockIconView;

    const/4 v5, 0x0

    if-eqz v3, :cond_3a

    check-cast v0, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_3b

    :cond_3a
    move-object v0, v5

    :goto_3b
    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_4a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v6

    goto :goto_4b

    :cond_4a
    move v3, v2

    :goto_4b
    if-ne v4, v3, :cond_53

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-le p2, v3, :cond_53

    move v3, v6

    goto :goto_54

    :cond_53
    move v3, v2

    :goto_54
    iget-object v7, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v7}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_5e

    move v7, v2

    goto :goto_63

    :cond_5e
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v7

    sub-int/2addr v7, v6

    :goto_63
    if-ne v4, v7, :cond_6a

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-ge p2, v7, :cond_6a

    move v2, v6

    :cond_6a
    if-nez v3, :cond_70

    if-eqz v2, :cond_6f

    goto :goto_70

    :cond_6f
    move-object v5, v0

    :cond_70
    :goto_70
    const-string v0, "getTouchedDockIconView() touchedChildViewIndex="

    const-string v6, ", primaryScroll="

    const-string v7, ", touchX="

    invoke-static {v0, v4, v6, p1, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", touchY="

    const-string v4, ", validRegions="

    invoke-static {p1, p2, v0, p3, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isRtl="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isTouchCrossRightBorder="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isTouchCrossLeftBorder="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", pagecount="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",childCount="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DockView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private isShouldInterruptAndStartApp()Z
    .registers 3

    const-string v0, "dockview isShouldInterruptAndStartApp: isFinished="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isInFling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x451c4000  # 2500.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_4f

    const/4 p0, 0x1

    goto :goto_50

    :cond_4f
    const/4 p0, 0x0

    :goto_50
    return p0
.end method

.method private synthetic lambda$createIconDismissAnimation$2(ILcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSuccess= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentTaskView= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskKeyId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "DockView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_3f

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p2, :cond_3f

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3f
    return-void
.end method

.method private static synthetic lambda$createIconDismissAnimation$3(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    if-eq p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$createIconDismissAnimation$4(ILcom/android/systemui/shared/recents/model/Task;IIILcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 14

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSuccess= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentTaskView= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskKeyId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "DockView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_88

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p2, :cond_88

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    if-lt p3, p1, :cond_46

    add-int/lit8 p4, p4, -0x1

    if-ne p1, p4, :cond_48

    :cond_46
    add-int/lit8 p1, p1, -0x1

    :cond_48
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_63

    const-string p2, "createIconDismissAnimation --> onAnimationEnd: draggedIndex= "

    const-string p4, ", currentPage= "

    const-string p7, ", mCurrentPage= "

    invoke-static {p2, p3, p4, p5, p7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const-string p4, ", pageToSnapTo= "

    invoke-static {p2, p3, p4, p1}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    invoke-virtual {p0, p6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_73

    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, p2, :cond_73

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    :cond_73
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/dock/DockView;->onLayout(ZIIII)V

    :cond_88
    const/4 p1, 0x0

    invoke-virtual {p6, p1}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    return-void
.end method

.method private synthetic lambda$onRecentsScrollTo$7(Lcom/oplus/quickstep/dock/DockView;II)V
    .registers 4

    invoke-static {p0, p2, p3}, Lcom/oplus/quickstep/dock/DockView;->access$601(Lcom/oplus/quickstep/dock/DockView;II)V

    return-void
.end method

.method private synthetic lambda$setIsRecentsViewPortrait$8(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->onRecentsViewOrientationChange(Z)V

    :cond_c
    return-void
.end method

.method private static synthetic lambda$updateCurrentPage$0(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 2

    instance-of v0, p0, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$updateCurrentPage$1(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 2

    instance-of v0, p0, Lcom/oplus/quickstep/dock/DockIconView;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$updateRecentsCurrentPage$5(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 2

    instance-of v0, p0, Lcom/oplus/quickstep/dock/DockIconView;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$updateRecentsCurrentPage$6(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 2

    instance-of v0, p0, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadVisibleIconData()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v0, -0xa

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v4, v1, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v4, v3

    :goto_18
    if-ge v4, v1, :cond_65

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v5, :cond_23

    goto :goto_62

    :cond_23
    invoke-virtual {v5}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    const/4 v7, 0x1

    if-gt v2, v4, :cond_2e

    if-gt v4, v0, :cond_2e

    move v8, v7

    goto :goto_2f

    :cond_2e
    move v8, v3

    :goto_2f
    if-eqz v8, :cond_4a

    iget-object v8, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v9, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_40

    invoke-virtual {v5, v7}, Lcom/oplus/quickstep/dock/DockIconView;->onIconListVisibilityChanged(Z)V

    :cond_40
    iget-object v5, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_62

    :cond_4a
    iget-object v7, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v8, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-virtual {v5, v3}, Lcom/oplus/quickstep/dock/DockIconView;->onIconListVisibilityChanged(Z)V

    :cond_59
    iget-object v5, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_65
    return-void
.end method

.method private needRefresh()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_22

    :cond_14
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p0, :cond_24

    instance-of v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public static synthetic o(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockView;->lambda$updateCurrentPage$1(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockView;->lambda$updateRecentsCurrentPage$6(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0
.end method

.method private playDockIconEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1, p3, p4}, Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_18

    if-eqz p2, :cond_15

    invoke-interface {p2, p0}, Lcom/android/launcher3/anim/PropertySetter;->add(Landroid/animation/Animator;)V

    goto :goto_18

    :cond_15
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_18
    :goto_18
    return-void
.end method

.method public static synthetic q(Lcom/oplus/quickstep/dock/DockView;ILcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/dock/DockView;->lambda$createIconDismissAnimation$2(ILcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Lcom/oplus/quickstep/dock/DockView;ILcom/android/systemui/shared/recents/model/Task;IIILcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/oplus/quickstep/dock/DockView;->lambda$createIconDismissAnimation$4(ILcom/android/systemui/shared/recents/model/Task;IIILcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void
.end method

.method private refreshIfNeeded()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->needRefresh()Z

    move-result v0

    const-string v1, "DockView"

    const-string v2, "QuickStep"

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "refreshIfNeeded return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void

    :cond_16
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "refreshIfNeeded: isLargeDisplayDevice"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const-string v0, "refreshIfNeeded"

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->playEnterAnimationIfNeeded(Ljava/lang/String;)V

    :cond_2c
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method public static synthetic s(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->lambda$createIconDismissAnimation$3(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private setLocation(Landroid/graphics/Rect;ILcom/android/launcher3/DeviceProfile;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_13

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLocationY:I

    const-string v0, "setInsets: position = "

    const-string v1, " dp.heightPx = "

    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " insets.top = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " getY = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " y = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLocationY:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , ((OplusDeviceProfile)dp).mNavBarHeight: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/OplusDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v1, "DockView"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_7c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result p2

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLocationY:I

    int-to-float v1, v0

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_7c

    int-to-float p2, v0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setY(F)V

    :cond_7c
    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    iget p1, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2, p1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic t(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockView;->lambda$updateRecentsCurrentPage$5(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/oplus/quickstep/dock/DockView;Lcom/oplus/quickstep/dock/DockView;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/dock/DockView;->lambda$onRecentsScrollTo$7(Lcom/oplus/quickstep/dock/DockView;II)V

    return-void
.end method

.method private unloadVisibleTaskData()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/dock/DockView;->getDockIconView(I)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/dock/DockIconView;->onIconListVisibilityChanged(Z)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method private updateCurrentPage(IZZ)Z
    .registers 10

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v1, Lcom/android/launcher3/a;->d:Lcom/android/launcher3/a;

    sget-object v2, Lcom/android/launcher3/icons/i;->d:Lcom/android/launcher3/icons/i;

    invoke-static {p1, v0, v1, p0, v2}, Lcom/oplus/quickstep/dock/DockView;->findPageIndexByOriginIndex(ILcom/android/launcher3/PagedView;Ljava/util/function/Function;Lcom/android/launcher3/PagedView;Ljava/util/function/Function;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_87

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isUnlinkScroll()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    move v1, p3

    move v0, v2

    goto :goto_34

    :cond_19
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v1, p1, :cond_32

    iget-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    if-eqz v1, :cond_32

    :cond_2d
    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    move v0, v2

    move v1, v0

    goto :goto_34

    :cond_32
    move v0, p2

    move v1, p3

    :goto_34
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_77

    const-string v3, "updateCurrentPage(), snap="

    const-string v4, ", setCurrentPage: "

    const-string v5, ", snapToPage: "

    invoke-static {v3, p3, v4, v0, v5}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, ", index="

    const-string v4, ", mCurrentPage="

    invoke-static {p3, v1, v3, p1, v4}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    iget v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUpdatePageOnRotationChanged="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLinkScrollState = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " set = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "QuickStep"

    const-string v3, "DockView"

    invoke-static {p3, v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    if-eqz v0, :cond_7c

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_7c
    if-eqz v1, :cond_81

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    :cond_81
    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    return v2

    :cond_87
    return v0
.end method

.method private updateDeadZoneRects()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_37

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->union(IIII)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    const/16 v0, -0x28

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    :cond_37
    return-void
.end method

.method private updatePageOffsets()V
    .registers 11

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mAdjacentPageOffset:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightEnterRecentsAnimation()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/high16 v1, 0x40a00000  # 5.0f

    goto :goto_1c

    :cond_1a
    const/high16 v1, 0x40400000  # 3.0f

    :goto_1c
    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p0, Lcom/oplus/quickstep/dock/DockView;->mAdjacentPageOffset:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v1, 0x41200000  # 10.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v3, v3, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_40

    neg-float v0, v0

    neg-float v3, v3

    :cond_40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v5

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v6, v7, :cond_7a

    iget-object v6, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    instance-of v8, v6, Lcom/android/launcher3/Launcher;

    if-eqz v8, :cond_7a

    check-cast v6, Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v6

    if-ne v6, v7, :cond_7a

    const/4 v6, 0x0

    :goto_63
    if-ge v6, v4, :cond_7a

    if-ne v6, v5, :cond_69

    move v7, v1

    goto :goto_6e

    :cond_69
    if-ge v6, v5, :cond_6d

    move v7, v3

    goto :goto_6e

    :cond_6d
    neg-float v7, v3

    :goto_6e
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    neg-float v9, v0

    add-float/2addr v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    :cond_7a
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockViewController;->getPageOffsetAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_85
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    return-void
.end method

.method private updateRecentsCurrentPage()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    sget-object v1, Lcom/android/launcher3/model/f2;->c:Lcom/android/launcher3/model/f2;

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v3, Lcom/android/launcher3/icons/h;->d:Lcom/android/launcher3/icons/h;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/oplus/quickstep/dock/DockView;->findPageIndexByOriginIndex(ILcom/android/launcher3/PagedView;Ljava/util/function/Function;Lcom/android/launcher3/PagedView;Ljava/util/function/Function;)I

    move-result v0

    if-ltz v0, :cond_1e

    const-string v1, "updateRecentsCurrentPage:page = "

    const-string v2, "QuickStep"

    const-string v3, "DockView"

    invoke-static {v1, v0, v2, v3}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurrentPage(I)V

    :cond_1e
    return-void
.end method

.method public static synthetic v(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockView;->lambda$updateCurrentPage$0(Landroid/view/View;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/oplus/quickstep/dock/DockView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->lambda$setIsRecentsViewPortrait$8(Z)V

    return-void
.end method


# virtual methods
.method public allowFlingWhenFreeScroll()Z
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public applyLoadPlan(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x8

    const-string v2, "DockView#applyLoadPlan"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->unloadVisibleTaskData()V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/dock/DockView;->updateScrollState(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyLoadPlan: task icon size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    const-string v5, "DockView"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v2, :cond_56

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_35
    if-ge v3, v2, :cond_43

    iget-object v5, p0, Lcom/oplus/quickstep/dock/DockView;->mIconViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {v5}, Lcom/android/launcher3/util/ViewPool;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_43
    :goto_43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_56

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_43

    :cond_56
    const/4 v3, 0x0

    move v5, v3

    :goto_58
    if-ge v5, v2, :cond_9a

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v6}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v7

    if-eqz v7, :cond_8b

    iget-object v7, v6, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz v7, :cond_76

    iget v8, v7, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopTaskId:I

    iget-object v9, v6, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v8, v9, :cond_76

    move v8, v4

    goto :goto_77

    :cond_76
    move v8, v3

    :goto_77
    if-eqz v8, :cond_7c

    iget-object v9, v6, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_7e

    :cond_7c
    iget-object v9, v6, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    :goto_7e
    if-eqz v8, :cond_83

    iget-object v6, v6, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_85

    :cond_83
    iget-object v6, v6, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    :goto_85
    new-instance v8, Lcom/android/quickstep/util/GroupTask;

    invoke-direct {v8, v9, v6, v7}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    move-object v6, v8

    :cond_8b
    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v7, v6}, Lcom/oplus/quickstep/dock/DockIconView;->bind(Lcom/android/quickstep/util/GroupTask;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_9a
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public applyOverScroll()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public calculateLocation(Landroid/graphics/Rect;II)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/dock/DockView;->getIconSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/dock/DockView;->setLocation(Landroid/graphics/Rect;ILcom/android/launcher3/DeviceProfile;)V

    invoke-direct {p0, p3}, Lcom/oplus/quickstep/dock/DockView;->computeScrollScale(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->computScaleMaxinumVelocity()V

    return-void
.end method

.method public clearEnterAnim()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim(Z)V

    return-void
.end method

.method public clearEnterAnim(Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    if-nez v1, :cond_a

    if-eqz v0, :cond_25

    :cond_a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "clearEnterAnim(), mWait="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    const-string v3, ", enterRunning="

    const-string v4, ", caller="

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v2, 0x3

    const-string v3, "DockView"

    invoke-static {v2, v1, v3}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_25
    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockViewController;->endDockViewStateChangeAnimator()V

    :cond_2e
    if-eqz p1, :cond_33

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    :cond_33
    return-void
.end method

.method public computeScrollHelper()Z
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onDockViewScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;)V

    :cond_1e
    invoke-super {p0}, Lcom/android/launcher/OplusPagedViewImpl;->computeScrollHelper()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_2a
    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isDockScroll()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/dock/DockView;->onScrollingChange(Z)V

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_50
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->loadVisibleIconData()V

    :cond_53
    return v0
.end method

.method public createIconDismissAnimation(Lcom/android/quickstep/views/TaskView;ILcom/android/launcher3/anim/PendingAnimation;Ljava/lang/Long;)V
    .registers 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_f8

    iget-object v0, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_13

    goto/16 :goto_f8

    :cond_13
    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v0}, Lcom/oplus/quickstep/dock/DockView;->getDockIconView(I)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object v7

    if-nez v7, :cond_1c

    return-void

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Lcom/oplus/quickstep/dock/g;

    move/from16 v2, p2

    invoke-direct {v0, v8, v2, v3, v7}, Lcom/oplus/quickstep/dock/g;-><init>(Lcom/oplus/quickstep/dock/DockView;ILcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {v9, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-void

    :cond_2d
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_36

    return-void

    :cond_36
    new-array v0, v5, [I

    sget-object v1, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v4, v1}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    new-array v1, v5, [I

    new-instance v6, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v6, v7}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {v8, v1, v4, v6}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    const/4 v6, 0x1

    if-le v5, v6, :cond_55

    aget v6, v0, v6

    aget v10, v0, v4

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto :goto_56

    :cond_55
    move v6, v4

    :goto_56
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v11

    move v12, v4

    :goto_5f
    if-ge v4, v5, :cond_d1

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eq v13, v7, :cond_c4

    iget-boolean v14, v8, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v14, :cond_6d

    move v15, v6

    goto :goto_6e

    :cond_6d
    const/4 v15, 0x0

    :goto_6e
    if-ne v11, v10, :cond_74

    add-int/lit8 v2, v5, -0x1

    if-eq v11, v2, :cond_78

    :cond_74
    add-int/lit8 v2, v11, -0x1

    if-ne v2, v10, :cond_7e

    :cond_78
    if-eqz v14, :cond_7c

    neg-int v2, v6

    goto :goto_7d

    :cond_7c
    move v2, v6

    :goto_7d
    add-int/2addr v15, v2

    :cond_7e
    aget v2, v1, v4

    aget v14, v0, v4

    sub-int/2addr v2, v14

    add-int/2addr v2, v15

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_a0

    const-string v14, "createIconDismissAnimation: , scrollDiffPerPage = "

    move-object/from16 p1, v0

    const-string v0, " offset = "

    move-object/from16 v16, v1

    const-string v1, " scrollDiff = "

    invoke-static {v14, v6, v0, v15, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v14, "DockView"

    invoke-static {v0, v2, v1, v14}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    :cond_a0
    move-object/from16 p1, v0

    move-object/from16 v16, v1

    :goto_a4
    if-eqz v2, :cond_c8

    sget-object v0, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v12, v1, [F

    int-to-float v2, v2

    const/4 v14, 0x0

    aput v2, v12, v14

    invoke-static {v13, v0, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sget-object v12, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v9, v0, v2, v12}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    move v12, v1

    goto :goto_c8

    :cond_c4
    move-object/from16 p1, v0

    move-object/from16 v16, v1

    :cond_c8
    :goto_c8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v1, v16

    goto :goto_5f

    :cond_d1
    if-eqz v12, :cond_db

    new-instance v0, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v0, v8}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    invoke-virtual {v9, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_db
    const v0, -0x42333333  # -0.1f

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationZ(F)V

    new-instance v12, Lcom/oplus/quickstep/dock/f;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v4, v10

    move v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/oplus/quickstep/dock/f;-><init>(Lcom/oplus/quickstep/dock/DockView;ILcom/android/systemui/shared/recents/model/Task;IIILcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {v9, v12}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/oplus/quickstep/dock/DockView$2;

    invoke-direct {v0, v8}, Lcom/oplus/quickstep/dock/DockView$2;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    invoke-virtual {v9, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_f8
    :goto_f8
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p0, "DockView"

    const-string p1, "error on dispatchConfigurationChanged()"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCardSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getDockIconDisplacementFactor()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockIconDisplacementFactor:F

    return p0
.end method

.method public getDockIconSize()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDockIconView(I)Lcom/oplus/quickstep/dock/DockIconView;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v2, :cond_10

    goto :goto_2b

    :cond_10
    check-cast v1, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p1, :cond_2b

    return-object v1

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDockIconView(Lcom/android/systemui/shared/recents/model/Task;)Lcom/oplus/quickstep/dock/DockIconView;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1c

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-ne v3, p1, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method public getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    return-object p0
.end method

.method public getOverDistance()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p0, v0

    const v0, 0x3f51eb85  # 0.82f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getOverScrollAmount(FI)I
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/OplusOverScroll;->INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    const v1, 0x3f51eb85  # 0.82f

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/oplus/quickstep/utils/OplusOverScroll;->dampedScroll(FIZF)I

    move-result p0

    return p0
.end method

.method public getRecentView()Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public getScaleVelocity()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result v0

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getScroller()Lcom/android/launcher3/util/OverScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    return-object p0
.end method

.method public getmLastState()Lcom/android/launcher3/LauncherState;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public isActivityPortrait()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    return p0
.end method

.method public isCurrentSupported()Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    if-eqz v0, :cond_24

    :cond_e
    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_24

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez p0, :cond_24

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public isEnterAnimatorRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->isDockViewEnterRunning()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isInterceptPageViewTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-boolean p0, p0, Lcom/oplus/quickstep/dock/DockView;->mCanScrollByTouch:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLauncherInMultiWindowMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    return p0
.end method

.method public isRecentsViewPortrait()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    return p0
.end method

.method public isScrolling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScrolling:Z

    return p0
.end method

.method public isWaitForAnimationCall()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    return p0
.end method

.method public needFlingWhenTouchUp(ZZ)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->needFlingWhenTouchUp(ZZ)Z

    move-result p0

    return p0

    :cond_9
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0}, Lcom/android/launcher/OplusPagedViewImpl;->getMaxScroll()I

    move-result p1

    if-gt p0, p1, :cond_1e

    invoke-virtual {v0}, Lcom/android/launcher/OplusPagedViewImpl;->getMinScroll()I

    move-result p1

    if-ge p0, p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :goto_1f
    return p0
.end method

.method public notifyPageSwitchListener(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->loadVisibleIconData()V

    return-void
.end method

.method public notifySfAnimatingIfNeed()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v0

    const-string v1, "DockView"

    const-string v2, "QuickStep"

    if-gtz v0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySfAnimatingIfNeed: duration is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", so we are not notify sf"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySfAnimatingIfNeed: notify sf animating, duration is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onButtonToOverviewAnimEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLastButtonToOverviewAnimator:Landroid/animation/Animator;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mCanScrollByTouch:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastButtonToOverviewAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->cancelRecoveryTouchTask()V

    :cond_d
    return-void
.end method

.method public onButtonToOverviewAnimStart(Landroid/animation/Animator;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastButtonToOverviewAnimator:Landroid/animation/Animator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mCanScrollByTouch:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->cancelRecoveryTouchTask()V

    new-instance v0, Lcom/oplus/quickstep/dock/DockView$3;

    invoke-direct {v0, p0, p1}, Lcom/oplus/quickstep/dock/DockView$3;-><init>(Lcom/oplus/quickstep/dock/DockView;Landroid/animation/Animator;)V

    iput-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecoveryTouchTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecoveryTouchTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const-string v0, "DockView"

    :try_start_2
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    move p1, v1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iget-boolean v2, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    if-ne v2, p1, :cond_18

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    :cond_18
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged(), old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result v2

    if-eqz v2, :cond_46

    iput-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    :cond_46
    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsActivityPortrait:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->refreshIfNeeded()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4c

    goto :goto_61

    :catch_4c
    move-exception p0

    const-string p1, "error on onConfigurationChanged() "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->cancelRecoveryTouchTask()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->onDestroy()V

    :cond_d
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getSpring()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getSpring()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    :cond_2f
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    iget p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLocationY:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setY(F)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "onMultiWindowModeChanged, mIsInMultiWindowMode: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isInMultiWindowMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "DockView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    if-eq v0, p1, :cond_31

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsInMultiWindowMode:Z

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz p0, :cond_31

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->updateOnLauncherMultiWindowChange(Z)V

    :cond_31
    return-void
.end method

.method public onPageEndTransition()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher/OplusPagedViewImpl;->onPageEndTransition()V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->updateRecentsCurrentPage()V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showTaskMenuIfNeed()V

    const-string v0, "QuickStep"

    const-string v1, "DockView"

    const-string v2, "onPageEndTransition"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-static {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->access$200(Lcom/oplus/quickstep/dock/DockView$LinkScrollState;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->updateScrollState(I)V

    :cond_21
    return-void
.end method

.method public onParentScrollInteractionBegin()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_e
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/dock/DockView;->updateScrollState(I)V

    iput-boolean v1, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    return-void
.end method

.method public onRecentsScrollTo(II)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_24

    const-string p1, "onRecentsScrollTo mScrollScale invalid. "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DockView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    new-instance v0, Lcom/android/launcher/settings/g;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/g;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    invoke-interface {p2, p0, v0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    :cond_39
    return-void
.end method

.method public onRecentsViewApplyLoadPlanEnd()V
    .registers 2

    const-string v0, "applyLoadPlan"

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->playEnterAnimationIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->updateScrollState(I)V

    const-string p0, "QuickStep"

    const-string v0, "DockView"

    const-string v1, "onScrollInteractionBegin"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollingChange(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScrolling:Z

    if-eq v0, p1, :cond_31

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsScrolling:Z

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeAll()V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    goto :goto_31

    :cond_21
    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openAll()V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onTaskViewRemoved(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 6

    if-eqz p1, :cond_47

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_47

    :cond_f
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->getDockIconView(I)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskViewRemoved(), task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QuickStep"

    const-string v2, "DockView"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_90

    if-eq v2, v5, :cond_62

    const/4 v5, 0x2

    if-eq v2, v5, :cond_32

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2c

    goto/16 :goto_dc

    :cond_2c
    iput-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    iput-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchedDockIconViewInScrolling:Lcom/oplus/quickstep/dock/DockIconView;

    goto/16 :goto_dc

    :cond_32
    iget-boolean v2, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    if-eqz v2, :cond_4b

    iget v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDownX:I

    sub-int/2addr v2, v0

    int-to-double v5, v2

    iget v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDownY:I

    sub-int/2addr v2, v1

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-double v7, v2

    cmpl-double v2, v5, v7

    if-lez v2, :cond_4b

    iput-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    :cond_4b
    iget v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDownX:I

    sub-int/2addr v2, v0

    int-to-double v4, v2

    iget v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDownY:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-double v4, v2

    cmpl-double v0, v0, v4

    if-lez v0, :cond_dc

    iput-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchedDockIconViewInScrolling:Lcom/oplus/quickstep/dock/DockIconView;

    goto/16 :goto_dc

    :cond_62
    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    :cond_6b
    iput-boolean v4, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDownTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_dc

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchedDockIconViewInScrolling:Lcom/oplus/quickstep/dock/DockIconView;

    if-eqz v0, :cond_dc

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    return v5

    :cond_90
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v2

    if-nez v2, :cond_b3

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->updateDeadZoneRects()V

    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v2

    if-eqz v2, :cond_a2

    move v4, v5

    :cond_a2
    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mTaskIconViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_b3

    if-nez v4, :cond_b3

    iput-boolean v5, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    :cond_b3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mDownTime:Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollXOnTouched:I

    invoke-direct {p0, v2, v0, v1}, Lcom/oplus/quickstep/dock/DockView;->getTouchedDockIconView(III)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchedDockIconViewInScrolling:Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v2, :cond_d0

    iput-boolean v5, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchDownToStartHome:Z

    goto :goto_d8

    :cond_d0
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->isShouldInterruptAndStartApp()Z

    move-result v2

    if-nez v2, :cond_d8

    iput-object v3, p0, Lcom/oplus/quickstep/dock/DockView;->mTouchedDockIconViewInScrolling:Lcom/oplus/quickstep/dock/DockIconView;

    :cond_d8
    :goto_d8
    iput v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDownX:I

    iput v1, p0, Lcom/oplus/quickstep/dock/DockView;->mDownY:I

    :cond_dc
    :goto_dc
    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewRemoved(Landroid/view/View;)V

    check-cast p1, Lcom/oplus/quickstep/dock/DockIconView;

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/dock/DockIconView;->unbind()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mIconViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ViewPool;->recycle(Landroid/view/View;)V

    return-void
.end method

.method public overScroll(III)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isInFling()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isInFling()Z

    move-result v1

    if-nez v1, :cond_29

    if-eqz v0, :cond_22

    goto :goto_29

    :cond_22
    if-nez p1, :cond_25

    return-void

    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dampedOverScroll(I)V

    return-void

    :cond_29
    :goto_29
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/PagedView;->superScrollTo(II)V

    return-void
.end method

.method public pageBeginTransition()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->onScrollInteractionBegin()V

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    return-void
.end method

.method public playEnterAnimationIfNeeded(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    const-string v1, "applyLoadPlan"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockViewController;->isDockViewEnterRunning()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockViewController;->getLastEnterParam()Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-ne v2, v3, :cond_30

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->getTotalPage()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eq v1, v2, :cond_31

    :cond_30
    const/4 v0, 0x1

    :cond_31
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEnterAnimationIfNeeded playAnima= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "DockView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    if-eqz v0, :cond_5f

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/oplus/quickstep/dock/DockView;->playDockIconEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method public prepareEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V
    .registers 23

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p6

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->computeScrollScale()V

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v4

    const-string v5, " targetState="

    const-string v6, " mWaitForAnimationCall: "

    const-string v7, ", mLastState="

    const-string v8, " fromGesture: "

    const-string v9, "DockView"

    const-string v10, "QuickStep"

    if-eqz p2, :cond_55

    iget-object v11, v0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    if-ne v11, v1, :cond_55

    sget-object v11, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, v11, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prepareEnterAnimation return toState: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v9, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_55
    iput-object v1, v0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v3, :cond_67

    const/16 v13, 0x40

    invoke-virtual {v3, v13}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v13

    if-eqz v13, :cond_67

    move/from16 v13, p3

    move v14, v12

    goto :goto_6a

    :cond_67
    move/from16 v13, p3

    move v14, v11

    :goto_6a
    invoke-virtual {p0, v13}, Lcom/oplus/quickstep/dock/DockView;->setDockIconDisplacementFactor(F)V

    iput-boolean v11, v0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    sget-object v11, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, v11, :cond_8c

    if-eqz v2, :cond_7a

    iput-object v1, v0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    iput-boolean v12, v0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    goto :goto_8c

    :cond_7a
    iget-object v11, v0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v11}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->needReloadTask()Z

    move-result v11

    if-eqz v11, :cond_84

    if-eqz v14, :cond_8a

    :cond_84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-nez v11, :cond_8c

    :cond_8a
    iput-boolean v12, v0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    :cond_8c
    :goto_8c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_c2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prepareEnterAnimation toState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v9, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    iget-boolean v2, v0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    if-nez v2, :cond_cd

    move-object/from16 v2, p5

    move-object/from16 v4, p7

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oplus/quickstep/dock/DockView;->playDockIconEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    :cond_cd
    return-void
.end method

.method public release()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->unloadVisibleTaskData()V

    return-void
.end method

.method public reset(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->setIsRecentsViewPortrait(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mWaitForAnimationCall:Z

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mUpdatePageOnRotationChanged:Z

    return-void
.end method

.method public resetTaskIconsVisuals()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v2, :cond_11

    goto :goto_1e

    :cond_11
    iget v3, p0, Lcom/oplus/quickstep/dock/DockView;->mFlagExitAnimator:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1b

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/dock/DockIconView;->resetViewStatus(Z)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->resetViewStatus()V

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockView;->loadVisibleIconData()V

    return-void
.end method

.method public resetTaskVisuals(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_34

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/oplus/quickstep/dock/DockIconView;

    if-nez v3, :cond_13

    goto :goto_31

    :cond_13
    check-cast v2, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v3, p1, :cond_31

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/dock/DockIconView;->setDimAlpha(F)V

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_34
    return-void
.end method

.method public scrollBy(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->allowFlingWhenFreeScroll()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->scrollBy(II)V

    return-void
.end method

.method public scrollTo(FF)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isDockScroll()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->isDockScroll()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v1, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollScale:F

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onDockScrollTo(FFF)V

    :cond_1e
    float-to-int p1, p1

    float-to-int p2, p2

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollTo(II)V
    .registers 3

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dock/DockView;->scrollTo(FF)V

    return-void
.end method

.method public setDockIconDisplacementFactor(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mDockIconDisplacementFactor:F

    return-void
.end method

.method public setExitAnmatorFlag(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockView;->mFlagExitAnimator:I

    return-void
.end method

.method public setIsRecentsViewPortrait(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    if-eq v0, p1, :cond_19

    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockView;->mIsRecentsViewPortrait:Z

    const-string v0, "setIsRecentsViewPortrait isPortrait: "

    const-string v1, "DockView"

    invoke-static {v0, p1, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    if-eqz v0, :cond_19

    new-instance v0, Lcom/android/common/util/q;

    invoke-direct {v0, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/oplus/quickstep/dock/DockView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method

.method public setRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method

.method public setupDockViewController(Lcom/oplus/quickstep/dock/DockViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mDockViewController:Lcom/oplus/quickstep/dock/DockViewController;

    return-void
.end method

.method public snapToDestination()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4a

    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v5, 0x408f400000000000L  # 1000.0

    mul-double/2addr v1, v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getOverDistance()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v1, v7

    const-wide v7, 0x407f400000000000L  # 500.0

    cmpg-double v1, v1, v7

    if-gez v1, :cond_37

    const/16 v1, 0x1f4

    goto :goto_4c

    :cond_37
    invoke-virtual {p0}, Lcom/android/launcher/OplusPagedViewImpl;->getOverScrollAmount()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    mul-double/2addr v1, v5

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getOverDistance()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_4c

    :cond_4a
    :goto_4a
    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    :goto_4c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_61

    const-string v2, "snapToDestination(), nearestToCenterOfScreen = "

    const-string v3, ", pageSnapDuration = "

    invoke-static {v2, v0, v3, v1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "DockView"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%s +{scrollX: %d, curPage:%d}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateCurrentPage(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/dock/DockView;->updateCurrentPage(IZ)Z

    move-result p0

    return p0
.end method

.method public updateCurrentPage(IZ)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/dock/DockView;->updateCurrentPage(IZZ)Z

    move-result p0

    return p0
.end method

.method public updateCurveProperties()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_63

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNormalChildWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNormalChildWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_35
    if-ltz v4, :cond_63

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v6

    int-to-float v6, v1

    add-float/2addr v7, v6

    int-to-float v6, v2

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v3

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->setLinearInterpolation(F)V

    check-cast v5, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;

    iget-object v6, p0, Lcom/oplus/quickstep/dock/DockView;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-interface {v5, v6, v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;->onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_35

    :cond_63
    :goto_63
    return-void
.end method

.method public updateLastState(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView;->mLastState:Lcom/android/launcher3/LauncherState;

    return-void
.end method

.method public updateScrollState(I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView;->mLinkScrollState:Lcom/oplus/quickstep/dock/DockView$LinkScrollState;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView$LinkScrollState;->setState(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateScrollState: scrollState "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "DockView"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
