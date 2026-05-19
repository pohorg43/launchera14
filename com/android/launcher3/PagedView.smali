.class public abstract Lcom/android/launcher3/PagedView;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/PagedView$PageScrollsResult;,
        Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final ACTION_MOVE_ALLOW_EASY_FLING:I = 0xfe

.field public static final DEBUG:Z = false

.field public static final DEBUG_FAILED_QUICKSWITCH:Z = false

.field public static final INVALID_PAGE:I = -0x1

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field public static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.25f

.field public static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field private static final SIGNIFICANT_MOVE_THRESHOLD_RECENT_VIEW:F = 0.25f

.field public static final SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

.field public static final SNAP_MAX_DURATION:I = 0x3e8

.field public static final SNAP_MIN_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "PagedView"


# instance fields
.field public deltaInSpecialCondition:F

.field public mActivePointerId:I

.field public mAllowEasyFling:Z

.field public mAllowOverScroll:Z

.field public mCurrentPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public mCurrentPageScrollDiff:I

.field public mCurrentScrollOverPage:I

.field private mDownMotionPrimary:F

.field public mDownMotionX:F

.field public mDownMotionY:F

.field public mEasyFlingThresholdVelocity:I

.field public mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

.field public mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

.field public mFirstLayout:Z

.field public mFlingThresholdVelocity:I

.field public mFreeScroll:Z

.field public final mInsets:Landroid/graphics/Rect;

.field public mIsBeingDragged:Z

.field public mIsLayoutValid:Z

.field public mIsPageInTransition:Z

.field public mIsRtl:Z

.field public mIsScrollToAssitScreenInSpring:Z

.field public mLastMotion:F

.field public mLastMotionRemainder:F

.field public mLastPageScrolls:[I

.field public mMaxScroll:I

.field public mMaximumVelocity:I

.field public mMinFlingVelocity:I

.field public mMinScroll:I

.field public mMinSnapVelocity:I

.field public mNeedUpdateCurrentPageScroll:Z

.field public mNextPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public final mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageTransitionEndCallback:Ljava/lang/Runnable;

.field public mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public mPageIndicator:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mPageIndicatorViewId:I

.field public mPageScrolls:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mPageSlop:I

.field public mPageSnapAnimationDuration:I

.field public mPageSpacing:I

.field public mPreviousPageScrollsResult:Lcom/android/launcher3/PagedView$PageScrollsResult;

.field public mScrollUpX:F

.field public mScroller:Lcom/android/launcher3/util/OverScroller;

.field public mTmpIntPair:[I

.field public mTotalMotion:F

.field public mTotalTouchMoved:F

.field public mTotalViewMoved:F

.field public mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public velocityInSpecialCondition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/t2;->a:Lcom/android/launcher3/t2;

    sput-object v0, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mNeedUpdateCurrentPageScroll:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    iput v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    iput v1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mTmpIntPair:[I

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    new-instance v3, Lcom/android/launcher3/PagedView$PageScrollsResult;

    invoke-direct {v3}, Lcom/android/launcher3/PagedView$PageScrollsResult;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mPreviousPageScrollsResult:Lcom/android/launcher3/PagedView$PageScrollsResult;

    iput v0, p0, Lcom/android/launcher3/PagedView;->velocityInSpecialCondition:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/PagedView;->deltaInSpecialCondition:F

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mLastPageScrolls:[I

    sget-object v2, Lcom/android/launcher3/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    new-instance p2, Lcom/android/launcher3/util/OverScroller;

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Lcom/android/launcher3/util/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/OverScroller;->setCaller(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateVelocityValues()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->initEdgeEffect()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/PagedView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;->lambda$onTouchEvent$4(II)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/PagedView;Ljava/util/function/Consumer;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;->lambda$forEachVisiblePage$1(Ljava/util/function/Consumer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/PagedView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->lambda$onViewRemoved$2()V

    return-void
.end method

.method private ensureWithinScrollBounds(I)I
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    move v2, p1

    :goto_c
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const-string v4, "PagedView"

    if-ge v1, v3, :cond_22

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-gt v3, v1, :cond_20

    const-string/jumbo v1, "validateNewPage: failed to find a page > mMinScrollX"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_20
    move v1, v3

    goto :goto_c

    :cond_22
    :goto_22
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v1, v3, :cond_36

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-lt v3, v1, :cond_34

    const-string/jumbo v0, "validateNewPage: failed to find a page < mMaxScrollX"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_34
    :goto_34
    move v1, v3

    goto :goto_22

    :cond_36
    :goto_36
    if-eq p1, v2, :cond_a9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ensureWithinScrollBounds; page: "

    const-string v3, " > "

    const-string v4, "; mIsRtl: "

    invoke-static {v1, p1, v3, v2, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mMinScroll: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mMaxScroll: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mPageScrolls: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; pageCount: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; caller: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    return v2
.end method

.method public static synthetic f(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/PagedView;->lambda$static$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/android/launcher3/PagedView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;->lambda$onTouchEvent$5(II)V

    return-void
.end method

.method private getExtraPageScrollFactor()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p0

    rem-int/2addr p0, v0

    sub-int p0, v0, p0

    rem-int/2addr p0, v0

    return p0
.end method

.method private getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    const/16 v2, 0x11

    if-ne p1, v2, :cond_f

    sub-int p1, v1, v0

    goto :goto_15

    :cond_f
    const/16 v2, 0x42

    if-ne p1, v2, :cond_26

    add-int p1, v1, v0

    :goto_15
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    if-ne p1, v1, :cond_21

    new-instance p0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object p0

    :cond_21
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0

    :cond_26
    new-instance p0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object p0
.end method

.method private getPageIndices(I)Lcom/android/launcher3/util/IntSet;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result p1

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p0

    move v2, p1

    :goto_12
    add-int v3, p1, v1

    if-ge v2, v3, :cond_1e

    if-ge v2, p0, :cond_1e

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/IntSet;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1e
    return-object v0
.end method

.method private getPageWidthSize(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    div-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static synthetic h(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;IILjava/lang/Integer;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->lambda$addFocusables$3(Ljava/util/ArrayList;IILjava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$addFocusables$3(Ljava/util/ArrayList;IILjava/lang/Integer;)V
    .registers 5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$forEachVisiblePage$1(Ljava/util/function/Consumer;Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$onTouchEvent$4(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    return-void
.end method

.method private synthetic lambda$onViewRemoved$2()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    return-void
.end method

.method private static synthetic lambda$static$0(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private onPageScrollsInitialized()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_16
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_82

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_63

    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPrimaryVelocity()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000  # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_33

    iput v1, p0, Lcom/android/launcher3/PagedView;->velocityInSpecialCondition:I

    :cond_33
    iget v1, p0, Lcom/android/launcher3/PagedView;->deltaInSpecialCondition:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/PagedView;->deltaInSpecialCondition:F

    const-string/jumbo v1, "onSecondaryPointerUp(), delta="

    const-string v3, ", velocityInSpecialCondition="

    invoke-static {v1, v2, v3}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->velocityInSpecialCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mActivePointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deltaInSpecialCondition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->deltaInSpecialCondition:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PagedView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    if-nez v0, :cond_67

    const/4 v0, 0x1

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    :goto_68
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_82

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_82
    return-void
.end method

.method private scrollMove(Landroid/view/MotionEvent;)Z
    .registers 12

    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/PagedView;->getFoldScreenDirection(FF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->calculateCurrentTouchMoved(F)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v8, v6, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v9, v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v6, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->calculateTotalMotion(F)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    invoke-virtual {p0, v5, v8, v0}, Lcom/android/launcher3/PagedView;->calculateCurrentViewMoved(FIF)F

    move-result v3

    iput v4, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    float-to-int v4, v3

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/PagedView;->calculateLastMotionRemainder(FI)F

    move-result v5

    iput v5, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_e6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isInterceptPageViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_6e

    const-string p0, "PagedView"

    const-string/jumbo p1, "onTouchEvent ACTION_MOVE isInterceptPageViewTouchEvent: true"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_6e
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canScrollByTouch()Z

    move-result p1

    if-eqz p1, :cond_8f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isUseAbsoluteScrollX()Z

    move-result p1

    if-eqz p1, :cond_7e

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->onSwipeUpScrollXChanged(I)V

    goto :goto_92

    :cond_7e
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v6, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {p1, p0, v6, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v4, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne p1, v4, :cond_92

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->onSwipeUpScrollXChanged(I)V

    goto :goto_92

    :cond_8f
    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/PagedView;->notifyCurrentScrollChange(IZ)V

    :cond_92
    :goto_92
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz p1, :cond_e9

    add-float/2addr v2, v3

    iget p1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_b7

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    neg-float v2, v3

    int-to-float v3, v8

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_d2

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_d2

    :cond_b7
    iget p1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_d2

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    int-to-float v2, v8

    div-float/2addr v3, v2

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_d2

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_d2
    :goto_d2
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_e2

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_e9

    :cond_e2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_e9

    :cond_e6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    :cond_e9
    :goto_e9
    return v1
.end method


# virtual methods
.method public abortScrollerAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    return-void
.end method

.method public abortScrollerAnimation(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->abortAnimation()V

    if-eqz p1, :cond_d

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_d
    return-void
.end method

.method public acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(I)Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_b
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/launcher3/PagedView;->getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/v2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/v2;-><init>(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;II)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public announcePageForAccessibility()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method public calculateCurrentTouchMoved(F)F
    .registers 3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iget p0, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    add-float/2addr v0, p0

    sub-float/2addr v0, p1

    return v0
.end method

.method public calculateCurrentViewMoved(FIF)F
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    cmpg-float v0, p1, v2

    if-gez v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_20

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    div-float v3, p1, p2

    invoke-virtual {v0, v3, p3}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    move-result p3

    mul-float/2addr p3, p2

    goto :goto_3f

    :cond_20
    cmpl-float v0, p1, v2

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3e

    neg-int v0, p2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    neg-float v4, p1

    int-to-float p2, p2

    div-float/2addr v4, p2

    sub-float p2, v1, p3

    invoke-virtual {v3, v4, p2}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    move-result p2

    mul-float p3, p2, v0

    goto :goto_3f

    :cond_3e
    move p3, v2

    :goto_3f
    sub-float/2addr p1, p3

    :cond_40
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canScrollByTouch()Z

    move-result p2

    if-eqz p2, :cond_53

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result p0

    cmpg-float p2, p0, v2

    if-gtz p2, :cond_51

    goto :goto_52

    :cond_51
    move v1, p0

    :goto_52
    div-float/2addr p1, v1

    :cond_53
    return p1
.end method

.method public calculateLastMotionRemainder(FI)F
    .registers 3

    int-to-float p0, p2

    sub-float/2addr p1, p0

    return p1
.end method

.method public calculateTotalMotion(F)F
    .registers 4

    iget v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iget p0, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    add-float/2addr v1, p0

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public canAnnouncePageDescription()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public canScroll(FF)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    if-eqz p0, :cond_15

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public canScrollByTouch()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public canUpdateCurrentScroll()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public cancelCurrentPageLongPress()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/w2;->a:Lcom/android/launcher3/w2;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    const-string p0, "PagedView"

    const-string v0, " cancelCurrentPageLongPress."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public computeMaxScroll()I
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_13

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit8 v1, v0, -0x1

    :goto_e
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_13
    return v1
.end method

.method public computeMinScroll()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public computeScroll()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method public computeScrollHelper()Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v2

    if-eq v0, v2, :cond_24

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v4, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    :cond_24
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v3, :cond_5d

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v2, v3, :cond_43

    if-lt v0, v3, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onEdgeAbsorbingScroll()V

    goto :goto_5d

    :cond_43
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v2, v3, :cond_5d

    if-gt v0, v3, :cond_5d

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onEdgeAbsorbingScroll()V

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v3

    invoke-interface {v0, v3, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    if-ne v2, v0, :cond_80

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->abortAnimation()V

    :cond_80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_85
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_ae

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput v3, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    iput v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_a5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_a5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canAnnouncePageDescription()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->announcePageForAccessibility()V

    :cond_ae
    return v1
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const-string v1, "PagedView"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    const-string p0, "determineScrollingStart pointerIndex = -1"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v3, v3

    mul-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v3, 0x1

    if-gt v2, p2, :cond_36

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xfe

    if-ne p1, p2, :cond_34

    goto :goto_36

    :cond_34
    const/4 p1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    move p1, v3

    :goto_37
    const-string p2, "determineScrollingStart moved="

    invoke-static {p2, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_5e

    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iget p1, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget p2, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTotalTouchMoved:F

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5e
    return-void
.end method

.method public dispatchPageCountChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 10

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/16 v1, 0x42

    const/16 v2, 0x11

    if-eqz p1, :cond_17

    if-ne p2, v2, :cond_14

    move p2, v1

    goto :goto_17

    :cond_14
    if-ne p2, v1, :cond_17

    move p2, v2

    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    const v1, 0x7fffffff

    invoke-direct {p0, p2}, Lcom/android/launcher3/PagedView;->getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    move v4, v3

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v6, v5, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v1, v6, :cond_28

    move v4, v5

    move v1, v6

    goto :goto_28

    :cond_43
    if-eq v4, v3, :cond_50

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    return v0

    :cond_50
    const/4 p0, 0x0

    return p0
.end method

.method public distanceInfluenceForSnapDuration(F)F
    .registers 4

    const/high16 p0, 0x3f000000  # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L  # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->drawEdgeEffect(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    return-void
.end method

.method public drawEdgeEffect(Landroid/graphics/Canvas;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_85

    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v3, -0x3d4c0000  # -90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v1, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_4d
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_50
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_85

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v3, 0x42b40000  # 90.0f

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v1, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_82
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_85
    return-void
.end method

.method public fixUpSnapToPageWithVelocityScrollDelta(Ljava/util/function/Supplier;I)I
    .registers 3
    .param p1  # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_7
    if-ne v1, v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_d
    if-ne v1, p0, :cond_10

    return-void

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public forEachVisiblePage(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/model/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/model/b;-><init>(Lcom/android/launcher3/PagedView;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forceFinishScroller()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/OverScroller;->forceFinished(Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "forceFinishScroller,nextPage="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    return-void
.end method

.method public forceLayout()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 1

    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCardSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    move-result-object p0

    return-object p0
.end method

.method public getChildCountOnLayout()I
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getChildGap(II)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getChildOffset(I)I
    .registers 3

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_b

    goto :goto_16

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public getChildVisibleSize(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getCurrentPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return p0
.end method

.method public getCurrentPageDescription()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const p0, 0x7f120202

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDestinationPage()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result p0

    return p0
.end method

.method public getDestinationPage(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result p0

    return p0
.end method

.method public getDisplacementFromScreenCenter(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScreenCenter(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result p0

    return p0
.end method

.method public getDisplacementFromScreenCenter(II)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildVisibleSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result p0

    add-int/2addr p0, v0

    sub-int/2addr p0, p2

    return p0
.end method

.method public getDownMotionX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    return p0
.end method

.method public getDownMotionY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    return p0
.end method

.method public getExpectedHeight()I
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getExpectedWidth()I
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public getFoldScreenDirection(FF)F
    .registers 3

    return p1
.end method

.method public getFooterUpLiftHeight()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2c

    if-gez p1, :cond_e

    goto :goto_2c

    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    :goto_1f
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget p0, p0, p1

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p1

    int-to-float p0, p0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method public getLeftmostVisiblePageForIndex(I)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p0

    rem-int p0, p1, p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getNextPage()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_8

    :cond_6
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_8
    return v0
.end method

.method public getNextPageOfScreen(IZ)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result p0

    return p0
.end method

.method public getNormalChildHeight()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getNormalChildWidth()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getOverDistance()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p0, v0

    const v0, 0x3d8f5c29  # 0.07f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getPageAt(I)Landroid/view/View;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPageCount()I
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getPageIndicator()Landroid/view/View;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    return-object p0
.end method

.method public getPageIndicatorMarkersCount()I
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getPageNearestToCenterOfScreen()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result p0

    return p0
.end method

.method public getPageNearestToCenterOfScreen(I)I
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScreenCenter(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_1e

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_1b

    move v2, v3

    move v1, v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    return v2
.end method

.method public getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .registers 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCountOnLayout()I

    move-result v1

    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_d

    add-int/lit8 v4, v1, -0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    const/4 v5, -0x1

    if-eqz v2, :cond_13

    move v6, v5

    goto :goto_14

    :cond_13
    move v6, v1

    :goto_14
    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v5, 0x1

    :goto_18
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mPreviousPageScrollsResult:Lcom/android/launcher3/PagedView$PageScrollsResult;

    iget-object v2, v2, Lcom/android/launcher3/PagedView$PageScrollsResult;->pagedOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eq v2, v8, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v8, v0, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v8

    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v10, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v9, v0, v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v11, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v10, v0, v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getExtraPageScrollFactor()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getNormalChildWidth()I

    move-result v13

    mul-int/2addr v13, v12

    add-int/2addr v13, v9

    move v14, v13

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_4a
    if-eq v4, v6, :cond_a8

    invoke-virtual {v0, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v3, p3

    invoke-interface {v3, v15}, Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;->shouldIncludeView(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_a0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/PagedView;->isRecommendFolderPageView(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_68

    if-nez v9, :cond_68

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getFooterUpLiftHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v8, v9

    :cond_68
    move/from16 v7, p2

    if-eqz v9, :cond_6e

    move v3, v9

    goto :goto_6f

    :cond_6e
    move v3, v8

    :goto_6f
    invoke-virtual {v0, v15, v14, v3, v7}, Lcom/android/launcher3/PagedView;->getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    move-result-object v3

    iget v15, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->primaryDimension:I

    iget v3, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    move/from16 v17, v6

    iget-boolean v6, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_7f

    sub-int/2addr v3, v10

    goto :goto_81

    :cond_7f
    sub-int v3, v14, v13

    :goto_81
    aget v6, p1, v4

    if-eq v6, v3, :cond_88

    aput v3, p1, v4

    const/4 v12, 0x1

    :cond_88
    add-int v3, v4, v5

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/PagedView;->getChildGap(II)I

    move-result v3

    add-int/2addr v3, v15

    add-int/2addr v14, v3

    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_96

    const/4 v3, 0x0

    goto :goto_98

    :cond_96
    add-int/lit8 v3, v11, -0x1

    :goto_98
    rem-int v6, v4, v11

    if-ne v6, v3, :cond_a4

    iget v3, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v14, v3

    goto :goto_a4

    :cond_a0
    move/from16 v7, p2

    move/from16 v17, v6

    :cond_a4
    :goto_a4
    add-int/2addr v4, v5

    move/from16 v6, v17

    goto :goto_4a

    :cond_a8
    const/4 v3, 0x1

    if-le v11, v3, :cond_be

    const/4 v4, 0x0

    :goto_ac
    if-ge v4, v1, :cond_be

    invoke-virtual {v0, v4}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v5

    aget v5, p1, v5

    aget v6, p1, v4

    if-eq v6, v5, :cond_bb

    aput v5, p1, v4

    move v12, v3

    :cond_bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_ac

    :cond_be
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mPreviousPageScrollsResult:Lcom/android/launcher3/PagedView$PageScrollsResult;

    iget-object v0, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v1, v12, v2, v0}, Lcom/android/launcher3/PagedView$PageScrollsResult;->update(ZZLcom/android/launcher3/touch/PagedOrientationHandler;)V

    return v12
.end method

.method public getPageSpacing()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    return p0
.end method

.method public getPanelCount()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getPrimaryVelocity()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {v1, v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getScreenCenter(I)I
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p0, v2

    sub-float/2addr p0, v1

    div-float/2addr p0, v0

    add-float/2addr p0, p1

    add-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getScrollForPage(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, p0

    if-ge p1, v0, :cond_11

    if-gez p1, :cond_e

    goto :goto_11

    :cond_e
    aget p0, p0, p1

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return p0
.end method

.method public getScrollProgress(ILandroid/view/View;I)F
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int v2, p3, v0

    if-gez p1, :cond_1c

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_22

    :cond_1c
    if-lez p1, :cond_24

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_24

    :cond_22
    sub-int v2, p3, v0

    :cond_24
    if-ltz v2, :cond_39

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_2b

    goto :goto_39

    :cond_2b
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p0

    sub-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    goto :goto_43

    :cond_39
    :goto_39
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget p0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    mul-int/2addr p0, v0

    :goto_43
    int-to-float p1, p1

    int-to-float p0, p0

    const/high16 p2, 0x3f800000  # 1.0f

    mul-float/2addr p0, p2

    div-float/2addr p1, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, -0x40800000  # -1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getSwipeUpScrollX()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getVisibleChildrenRange()[I
    .registers 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_25

    cmpl-float v3, v2, v1

    if-lez v3, :cond_25

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v1, v3, v1

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-static {v0, v3, v2, v3}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result v0

    :cond_25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v6, v4

    move v7, v6

    :goto_2e
    if-ge v5, v2, :cond_59

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float/2addr v10, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v10, v9

    cmpg-float v9, v10, v0

    if-gtz v9, :cond_56

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v10, v8

    cmpl-float v8, v10, v1

    if-ltz v8, :cond_56

    if-ne v6, v4, :cond_55

    move v6, v5

    :cond_55
    move v7, v5

    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_59
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mTmpIntPair:[I

    aput v6, p0, v3

    const/4 v0, 0x1

    aput v7, p0, v0

    return-object p0
.end method

.method public getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public handleGenericMotionEvent(Landroid/view/MotionEvent;Z)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public initEdgeEffect()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    return-void
.end method

.method public initParentViews(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_14

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorMarkersCount()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    :cond_14
    return-void
.end method

.method public interceptUpEventWhenDragged(IIFIZZZ)Z
    .registers 8

    const/4 p0, 0x0

    return p0
.end method

.method public isHandlingTouch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    return p0
.end method

.method public isInterceptPageViewTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isPageInTransition()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    return p0
.end method

.method public isPageOrderFlipped()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isRecommendFolderPageView(Landroid/view/View;)Z
    .registers 2

    instance-of p0, p1, Lcom/android/launcher3/CellLayout;

    return p0
.end method

.method public isSignificantMove(FIZ)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_10

    int-to-float p2, p2

    const p3, 0x3ecccccd  # 0.4f

    mul-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_e

    goto :goto_f

    :cond_e
    move p0, v0

    :goto_f
    return p0

    :cond_10
    int-to-float p2, p2

    const/high16 p3, 0x3e800000  # 0.25f

    mul-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_19

    goto :goto_1a

    :cond_19
    move p0, v0

    :goto_1a
    return p0
.end method

.method public isSnapToPageStart()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isUseAbsoluteScrollX()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isVisible(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result p1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isVisible(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result p0

    return p0
.end method

.method public modifyDirection(I)I
    .registers 2

    return p1
.end method

.method public notifyCurrentScrollChange(IZ)V
    .registers 3

    return-void
.end method

.method public notifyPageSwitchListener(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateVelocityValues()V

    return-void
.end method

.method public onEdgeAbsorbingScroll()V
    .registers 1

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    goto :goto_6e

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_2e

    :cond_23
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    :goto_2e
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/PagedView;->canScroll(FF)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3e

    return v5

    :cond_3e
    cmpl-float v4, v2, v3

    if-nez v4, :cond_46

    cmpl-float v6, v0, v3

    if-eqz v6, :cond_6e

    :cond_46
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_53

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5c

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5a

    goto :goto_5c

    :cond_53
    if-gtz v4, :cond_5c

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5a

    goto :goto_5c

    :cond_5a
    move v0, v5

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v0, v1

    :goto_5d
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->handleGenericMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    if-nez p1, :cond_64

    return v5

    :cond_64
    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    goto :goto_6d

    :cond_6a
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    :goto_6d
    return v1

    :cond_6e
    :goto_6e
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    const/4 v1, 0x1

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p0

    if-le p0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageOrderFlipped()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_47

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_5d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-eq v1, v3, :cond_5d

    :cond_47
    if-eqz v0, :cond_4c

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_4e

    :cond_4c
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_4e
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_58

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_5a

    :cond_58
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_5a
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_5d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-gtz v3, :cond_6f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_85

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-eq v1, v3, :cond_85

    :cond_6f
    if-eqz v0, :cond_74

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_76

    :cond_74
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_76
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p0, :cond_80

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_82

    :cond_80
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :goto_82
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_85
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v1, "PagedView"

    const/4 v2, 0x0

    if-gtz v0, :cond_10

    const-string/jumbo p0, "onInterceptTouchEvent: getChildCount() <= 0"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_29

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v5, :cond_29

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    const-string/jumbo p0, "onInterceptTouchEvent: (action == MotionEvent.ACTION_MOVE) && mIsBeingDragged"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_29
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_5b

    if-eq v0, v4, :cond_51

    if-eq v0, v3, :cond_3f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    const/4 v1, 0x6

    if-eq v0, v1, :cond_38

    goto :goto_89

    :cond_38
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto :goto_89

    :cond_3f
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_89

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_89

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_89

    :cond_51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mScrollUpX:F

    :cond_57
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto :goto_89

    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->deltaInSpecialCondition:F

    iput v2, p0, Lcom/android/launcher3/PagedView;->velocityInSpecialCondition:I

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTotalTouchMoved:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    :cond_89
    :goto_89
    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCountOnLayout()I

    move-result p2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher/mode/LauncherModeManager;->isSupportSimpleModeSpeedDialWidget()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2b

    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p3

    instance-of p5, p3, Lcom/android/launcher3/Launcher;

    if-eqz p5, :cond_2b

    check-cast p3, Lcom/android/launcher3/Launcher;

    sget-object p5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p3, p5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p3

    if-eqz p3, :cond_2b

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2b

    iput p4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :cond_2b
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result p5

    if-nez p5, :cond_37

    new-array p3, p2, [I

    move p5, p1

    goto :goto_38

    :cond_37
    move p5, p4

    :goto_38
    if-nez p2, :cond_3b

    return-void

    :cond_3b
    sget-object v0, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    invoke-virtual {p0, p3, p1, v0}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    move-result p1

    or-int/2addr p1, p5

    iget-object p5, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    iput-object p5, p0, Lcom/android/launcher3/PagedView;->mLastPageScrolls:[I

    iput-object p3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p3

    if-eqz p3, :cond_85

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "-"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p5, "mPageScrolls amend result: "

    invoke-static {p5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p3

    if-eqz p3, :cond_a0

    invoke-virtual {p3}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p5

    if-eqz p5, :cond_a0

    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->getExtraPageScrollFactor()I

    move-result p5

    if-nez p5, :cond_a0

    new-instance p5, Lcom/android/launcher3/PagedView$1;

    invoke-direct {p5, p0}, Lcom/android/launcher3/PagedView$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {p3, p5}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_a3

    :cond_a0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateMinAndMaxScrollX()V

    :goto_a3
    iget-boolean p3, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-nez p3, :cond_ab

    iget-boolean p3, p0, Lcom/android/launcher3/PagedView;->mNeedUpdateCurrentPageScroll:Z

    if-eqz p3, :cond_b8

    :cond_ab
    iget p3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz p3, :cond_b8

    if-ge p3, p2, :cond_b8

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    iput-boolean p4, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    iput-boolean p4, p0, Lcom/android/launcher3/PagedView;->mNeedUpdateCurrentPageScroll:Z

    :cond_b8
    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mPreviousPageScrollsResult:Lcom/android/launcher3/PagedView$PageScrollsResult;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->setCurrentPageIfNeed(ZLcom/android/launcher3/PagedView$PageScrollsResult;)V

    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_46

    if-nez v2, :cond_1f

    goto :goto_46

    :cond_1f
    if-lez v1, :cond_42

    if-gtz v3, :cond_24

    goto :goto_42

    :cond_24
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->getPageWidthSize(I)I

    move-result p1

    const/high16 p2, 0x40000000  # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_42
    :goto_42
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_46
    :goto_46
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onNotSnappingToPageInFreeScroll()V
    .registers 1

    return-void
.end method

.method public onPageBeginTransition()V
    .registers 1

    return-void
.end method

.method public onPageEndTransition()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendScrollFinishedEventToTest(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    :cond_1f
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_8

    :cond_6
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public onScrollChanged(IIII)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result p1

    if-ltz p1, :cond_18

    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    if-eq p1, p2, :cond_18

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollOverPageChanged()V

    :cond_18
    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 1

    return-void
.end method

.method public onScrollInteractionEnd()V
    .registers 1

    return-void
.end method

.method public onScrollInteractionEnd(F)V
    .registers 2

    return-void
.end method

.method public onScrollOverPageChanged()V
    .registers 1

    return-void
.end method

.method public onSwipeUpScrollXChanged(I)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 33

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const-string v9, "PagedView"

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_35b

    const/4 v3, -0x1

    if-eq v1, v10, :cond_143

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_32

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2a

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_23

    goto/16 :goto_3a4

    :cond_23
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    iput-boolean v10, v8, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    goto/16 :goto_3a4

    :cond_2a
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_3a4

    :cond_32
    iget-boolean v0, v8, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/android/launcher3/r1;

    invoke-direct {v0, v8}, Lcom/android/launcher3/r1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    :cond_3e
    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_3a4

    :cond_4d
    iget-boolean v1, v8, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v1, :cond_137

    iget v1, v8, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v3, :cond_5a

    return v10

    :cond_5a
    iget-object v3, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v5, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v4, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v5

    iget v6, v8, Lcom/android/launcher3/PagedView;->mLastMotion:F

    invoke-virtual {v8, v5, v6}, Lcom/android/launcher3/PagedView;->getFoldScreenDirection(FF)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/launcher3/PagedView;->calculateCurrentTouchMoved(F)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    iget-object v13, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v13, v7, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v13

    iget-object v14, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v14, v4, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v1

    iget-object v4, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, v7, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v8, v5}, Lcom/android/launcher3/PagedView;->calculateTotalMotion(F)F

    move-result v4

    iput v4, v8, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    invoke-virtual {v8, v6, v13, v1}, Lcom/android/launcher3/PagedView;->calculateCurrentViewMoved(FIF)F

    move-result v4

    iput v5, v8, Lcom/android/launcher3/PagedView;->mLastMotion:F

    float-to-int v5, v4

    invoke-virtual {v8, v4, v5}, Lcom/android/launcher3/PagedView;->calculateLastMotionRemainder(FI)F

    move-result v6

    iput v6, v8, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_132

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->isInterceptPageViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b9

    const-string/jumbo v0, "onTouchEvent ACTION_MOVE isInterceptPageViewTouchEvent: true"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->canScrollByTouch()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->isUseAbsoluteScrollX()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-virtual {v8, v5}, Lcom/android/launcher3/PagedView;->onSwipeUpScrollXChanged(I)V

    goto :goto_dd

    :cond_c9
    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v0, v8, v2, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-ne v0, v2, :cond_dd

    invoke-virtual {v8, v11}, Lcom/android/launcher3/PagedView;->onSwipeUpScrollXChanged(I)V

    goto :goto_dd

    :cond_da
    invoke-virtual {v8, v5, v10}, Lcom/android/launcher3/PagedView;->notifyCurrentScrollChange(IZ)V

    :cond_dd
    :goto_dd
    iget-boolean v0, v8, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_3a4

    add-float/2addr v3, v4

    iget v0, v8, Lcom/android/launcher3/PagedView;->mMinScroll:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_102

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    neg-float v2, v4

    int-to-float v3, v13

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_11d

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_11d

    :cond_102
    iget v0, v8, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_11d

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    int-to-float v2, v13

    div-float/2addr v4, v2

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_11d

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_11d
    :goto_11d
    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_12d

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3a4

    :cond_12d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto/16 :goto_3a4

    :cond_132
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    goto/16 :goto_3a4

    :cond_137
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    iget-boolean v1, v8, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v1, :cond_3a4

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->scrollMove(Landroid/view/MotionEvent;)Z

    goto/16 :goto_3a4

    :cond_143
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->isInterceptPageViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_150

    const-string/jumbo v0, "onTouchEvent ACTION_UP isInterceptPageViewTouchEvent=true"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v8, Lcom/android/launcher3/PagedView;->mScrollUpX:F

    const-string/jumbo v1, "onTouchEvent ACTION_UP mIsBeingDragged="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, v8, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,mIsScrollToAssitScreenInSpring="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v8, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    invoke-static {v1, v4, v9}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, v8, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v1, :cond_174

    iget-boolean v1, v8, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    if-eqz v1, :cond_34d

    :cond_174
    iget v1, v8, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v3, :cond_17d

    return v10

    :cond_17d
    iget-object v3, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPrimaryVelocity()I

    move-result v3

    iget-object v4, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v5, v8, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, v8, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {v4, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v8, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    sub-float v5, v1, v5

    instance-of v6, v8, Lcom/android/quickstep/views/RecentsView;

    const/high16 v12, 0x3f000000  # 0.5f

    if-eqz v6, :cond_1e8

    const/16 v6, 0x2002

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1e8

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP, delta="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", velocity="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", deltaInSpecialCondition="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/launcher3/PagedView;->deltaInSpecialCondition:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", velocityInSpecialCondition="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/launcher3/PagedView;->velocityInSpecialCondition:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_1e5

    iget v0, v8, Lcom/android/launcher3/PagedView;->velocityInSpecialCondition:I

    move v3, v0

    :cond_1e5
    iget v0, v8, Lcom/android/launcher3/PagedView;->deltaInSpecialCondition:F

    add-float/2addr v5, v0

    :cond_1e8
    move v13, v3

    move v14, v5

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v3, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v8, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1fb

    iget v3, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v8, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1fc

    :cond_1fb
    move-object v3, v8

    :goto_1fc
    invoke-interface {v0, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v15, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v8, v0, v15, v11}, Lcom/android/launcher3/PagedView;->isSignificantMove(FIZ)Z

    move-result v16

    invoke-virtual {v8, v1}, Lcom/android/launcher3/PagedView;->calculateTotalMotion(F)F

    move-result v0

    iput v0, v8, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget-boolean v1, v8, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    if-nez v1, :cond_225

    iget v1, v8, Lcom/android/launcher3/PagedView;->mPageSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_223

    goto :goto_225

    :cond_223
    move v6, v11

    goto :goto_226

    :cond_225
    :goto_225
    move v6, v10

    :goto_226
    if-eqz v6, :cond_231

    invoke-virtual {v8, v13}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result v0

    if-eqz v0, :cond_231

    move/from16 v17, v10

    goto :goto_233

    :cond_231
    move/from16 v17, v11

    :goto_233
    iget-boolean v0, v8, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_23c

    cmpl-float v1, v14, v2

    if-lez v1, :cond_243

    goto :goto_240

    :cond_23c
    cmpg-float v1, v14, v2

    if-gez v1, :cond_243

    :goto_240
    move/from16 v18, v10

    goto :goto_245

    :cond_243
    move/from16 v18, v11

    :goto_245
    if-eqz v0, :cond_24a

    if-lez v13, :cond_24f

    goto :goto_24c

    :cond_24a
    if-gez v13, :cond_24f

    :goto_24c
    move/from16 v19, v10

    goto :goto_251

    :cond_24f
    move/from16 v19, v11

    :goto_251
    move-object/from16 v0, p0

    move v1, v13

    move v2, v4

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/PagedView;->interceptUpEventWhenDragged(IIFIZZZ)Z

    move-result v0

    if-eqz v0, :cond_268

    const-string/jumbo v0, "onTouchEvent: interceptUpEventWhenDragged"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_268
    iget-boolean v0, v8, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v0, :cond_2dd

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v15

    const/high16 v2, 0x3e800000  # 0.25f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_289

    int-to-float v0, v13

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_289

    if-eqz v17, :cond_289

    move v0, v10

    goto :goto_28a

    :cond_289
    move v0, v11

    :goto_28a
    if-eqz v16, :cond_290

    if-nez v18, :cond_290

    if-eqz v17, :cond_294

    :cond_290
    if-eqz v17, :cond_2aa

    if-nez v19, :cond_2aa

    :cond_294
    iget v1, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v1, :cond_2aa

    if-eqz v0, :cond_29b

    goto :goto_2a0

    :cond_29b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    sub-int/2addr v1, v0

    :goto_2a0
    new-instance v0, Lcom/android/launcher3/u2;

    invoke-direct {v0, v8, v1, v13, v11}, Lcom/android/launcher3/u2;-><init>(Lcom/android/launcher3/PagedView;III)V

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto/16 :goto_34d

    :cond_2aa
    if-eqz v16, :cond_2b0

    if-eqz v18, :cond_2b0

    if-eqz v17, :cond_2b4

    :cond_2b0
    if-eqz v17, :cond_2d3

    if-eqz v19, :cond_2d3

    :cond_2b4
    iget v1, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v10

    if-ge v1, v2, :cond_2d3

    if-eqz v0, :cond_2c2

    iget v0, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_2c9

    :cond_2c2
    iget v0, v8, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2c9
    new-instance v1, Lcom/android/launcher3/u2;

    invoke-direct {v1, v8, v0, v13, v10}, Lcom/android/launcher3/u2;-><init>(Lcom/android/launcher3/PagedView;III)V

    invoke-virtual {v8, v1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto/16 :goto_34d

    :cond_2d3
    new-instance v0, Lcom/android/launcher3/t1;

    invoke-direct {v0, v8}, Lcom/android/launcher3/t1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto/16 :goto_34d

    :cond_2dd
    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2e8

    invoke-virtual {v8, v10}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_2e8
    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iget v5, v8, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    iget v4, v8, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-lt v0, v5, :cond_2f8

    if-nez v19, :cond_2fe

    if-eqz v17, :cond_2fe

    :cond_2f8
    if-gt v0, v4, :cond_30e

    if-eqz v19, :cond_2fe

    if-nez v17, :cond_30e

    :cond_2fe
    iget-object v1, v8, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/util/OverScroller;->springBack(IIIIII)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/PagedView;->mNextPage:I

    goto :goto_34a

    :cond_30e
    neg-int v1, v13

    iget-object v2, v8, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    const v6, 0x3d8f5c29  # 0.07f

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v20, v2

    move/from16 v21, v0

    move/from16 v23, v1

    move/from16 v25, v4

    move/from16 v26, v5

    invoke-virtual/range {v20 .. v30}, Lcom/android/launcher3/util/OverScroller;->fling(IIIIIIIIII)V

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/PagedView;->mNextPage:I

    new-instance v0, Lcom/android/launcher3/s1;

    invoke-direct {v0, v8}, Lcom/android/launcher3/s1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v8, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    :goto_34a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_34d
    :goto_34d
    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, v8, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto :goto_3a4

    :cond_35b
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->isInterceptPageViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_368

    const-string/jumbo v0, "onTouchEvent: isInterceptPageViewTouchEvent"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_368
    iget-object v1, v8, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_373

    invoke-virtual {v8, v11}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_373
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v8, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v8, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    iget-object v1, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, v0, v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, v8, Lcom/android/launcher3/PagedView;->mLastMotion:F

    iput v1, v8, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    iput v11, v8, Lcom/android/launcher3/PagedView;->velocityInSpecialCondition:I

    iput v2, v8, Lcom/android/launcher3/PagedView;->deltaInSpecialCondition:F

    iput v2, v8, Lcom/android/launcher3/PagedView;->mLastMotionRemainder:F

    iput v2, v8, Lcom/android/launcher3/PagedView;->mTotalTouchMoved:F

    iput v2, v8, Lcom/android/launcher3/PagedView;->mTotalViewMoved:F

    iput v2, v8, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iput-boolean v11, v8, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    iget-boolean v0, v8, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_3a4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    :cond_3a4
    :goto_3a4
    return v10
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    new-instance p1, Lcom/android/launcher3/r0;

    invoke-direct {p1, p0}, Lcom/android/launcher3/r0;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    return-void
.end method

.method public oplusScrollTo(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public pageBeginTransition()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    :cond_a
    return-void
.end method

.method public pageEndTransition()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput v2, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_72

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string/jumbo v0, "pageEndTransition mCurrentPage=%s mNextPage=%s prevPage=%s getPageCount()=%s "

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    :cond_75
    return-void
.end method

.method public pageScrollsInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_d

    array-length v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ne v0, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageOrderFlipped()Z

    move-result p2

    const/16 v1, 0x1000

    if-eq p1, v1, :cond_44

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_34

    packed-switch p1, :pswitch_data_56

    goto :goto_54

    :pswitch_18  #0x1020049
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez p1, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result p0

    return p0

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result p0

    return p0

    :pswitch_26  #0x1020048
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez p1, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result p0

    return p0

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result p0

    return p0

    :cond_34
    if-eqz p2, :cond_3d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result p0

    if-eqz p0, :cond_54

    goto :goto_43

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result p0

    if-eqz p0, :cond_54

    :goto_43
    return v0

    :cond_44
    if-eqz p2, :cond_4d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result p0

    if-eqz p0, :cond_54

    goto :goto_53

    :cond_4d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result p0

    if-eqz p0, :cond_54

    :goto_53
    return v0

    :cond_54
    :goto_54
    const/4 p0, 0x0

    return p0

    :pswitch_data_56
    .packed-switch 0x1020048
        :pswitch_26  #01020048
        :pswitch_18  #01020049
    .end packed-switch
.end method

.method public releaseVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p2

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p2, v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_2b
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p2}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    if-eqz p3, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public resetTouchState()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsScrollToAssitScreenInSpring:Z

    return-void
.end method

.method public runOnPageScrollsInitialized(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->getRestoreToFirstPage()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_1a

    :cond_12
    const-string p0, "PagedView"

    const-string p1, "Wait for initial page scroll to run callback."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/LayoutRestoreHelper;->setRestoreToFirstPage(Z)V

    :goto_21
    return-void
.end method

.method public scrollLeft()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    const/4 p0, 0x1

    return p0

    :cond_14
    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return p0
.end method

.method public scrollRight()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return v2

    :cond_19
    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return p0
.end method

.method public scrollTo(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->oplusScrollTo(II)V

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_7

    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_7
    return-void
.end method

.method public sendScrollAccessibilityEvent()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isObservedEventType(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    if-eq v0, v2, :cond_34

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-interface {v1, v0, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_34
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(II)V

    return-void
.end method

.method public setCurrentPage(II)V
    .registers 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    move v0, p2

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setCurrentPage but child count=0 ,currentPage="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " overridePrevPage="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagedView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3f
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setCurrentPageIfNeed(ZLcom/android/launcher3/PagedView$PageScrollsResult;)V
    .registers 4
    .param p2  # Lcom/android/launcher3/PagedView$PageScrollsResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;->setCurrentPageIfNeed(ZZLcom/android/launcher3/PagedView$PageScrollsResult;)Z

    return-void
.end method

.method public setCurrentPageIfNeed(ZZLcom/android/launcher3/PagedView$PageScrollsResult;)Z
    .registers 7
    .param p3  # Lcom/android/launcher3/PagedView$PageScrollsResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCurrentPageIfNeed mScroller."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "isFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",pageScrollChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_30

    const-string v2, ",orientationChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p3, Lcom/android/launcher3/PagedView$PageScrollsResult;->orientationChange:Z

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_30
    const-string p3, ",forceUpdate="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    if-eqz v0, :cond_4b

    if-nez p1, :cond_4d

    :cond_4b
    if-eqz p2, :cond_56

    :cond_4d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    const/4 p0, 0x1

    return p0

    :cond_56
    const-string/jumbo p2, "setCurrentPageIfNeed mScroller.isFinished="

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ,pageScrollChanged="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagedView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEnableFreeScroll(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_28

    :cond_11
    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_28
    :goto_28
    return-void
.end method

.method public setEnableOverscroll(Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return-void
.end method

.method public setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V
    .registers 3
    .param p1  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_b

    if-nez p1, :cond_7

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    :cond_b
    :goto_b
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    :goto_d
    return-void
.end method

.method public setPageSpacing(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    return-void
.end method

.method public shouldFlingForVelocity(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/launcher3/PagedView;->mEasyFlingThresholdVelocity:I

    goto :goto_9

    :cond_7
    iget p0, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    :goto_9
    int-to-float p0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public snapToDestination()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    return-void
.end method

.method public snapToPage(I)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result p0

    return p0
.end method

.method public snapToPage(II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;->snapToPage(IIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPage(III)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPage(IIIZ)Z
    .registers 13

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    return v1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->awakenScrollBars(I)Z

    if-eqz p4, :cond_16

    move v7, v1

    goto :goto_1d

    :cond_16
    if-nez p3, :cond_1c

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    :cond_1c
    move v7, p3

    :goto_1d
    if-eqz v7, :cond_22

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    :cond_22
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_2d
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    if-eqz p4, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_50

    const/4 v1, 0x1

    :cond_50
    return v1
.end method

.method public snapToPage(IIZ)Z
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPageImmediately(I)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(IIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPageWithVelocity(II)Z
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v2, v3, :cond_26

    iget p2, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result p0

    return p0

    :cond_26
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v2, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v0, 0x447a0000  # 1000.0f

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/launcher3/PagedView;->snapToPage(III)Z

    move-result p0

    return p0
.end method

.method public superRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public superScrollTo(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public updateCurrentPageScroll()V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v1, 0x0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_15

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v2, p0, v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v4}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v2, v3, v1, v0, v1}, Lcom/android/launcher3/util/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    return-void
.end method

.method public updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_24

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_22

    goto :goto_24

    :cond_22
    move v0, v2

    goto :goto_25

    :cond_24
    :goto_24
    move v0, v3

    :goto_25
    if-eqz v0, :cond_53

    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    :cond_3f
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_50

    :cond_4f
    move v2, v3

    :cond_50
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    goto :goto_55

    :cond_53
    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    :goto_55
    const-string/jumbo v1, "updateIsBeingDraggedOnTouchDown mIsBeingDragged= "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " finishedScrolling= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    :cond_a1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    :cond_ae
    return-void
.end method

.method public updateMinAndMaxScrollX()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMinScroll()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScroll()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    return-void
.end method

.method public updatePageIndicator()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_12

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p0

    div-int/2addr v1, p0

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    :cond_12
    return-void
.end method

.method public updateVelocityValues()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07080e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    const v1, 0x7f0707e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mEasyFlingThresholdVelocity:I

    const v1, 0x7f070ac5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    const v1, 0x7f070ac6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    return-void
.end method

.method public validateNewPage(I)I
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->ensureWithinScrollBounds(I)I

    move-result p1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isSupportSimpleModeSpeedDialWidget()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_2a

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-gt v0, v1, :cond_2a

    return p1

    :cond_2a
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    if-le v0, v1, :cond_3e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result p1

    :cond_3e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    const-string/jumbo p0, "validateNewPage mCurrentPage ref validateNewPage newPage=%s, this=%s, caller=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PagedView"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    return p1
.end method
