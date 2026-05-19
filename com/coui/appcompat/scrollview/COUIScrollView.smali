.class public Lcom/coui/appcompat/scrollview/COUIScrollView;
.super Landroid/widget/ScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;
    }
.end annotation


# static fields
.field public static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final DEBUG_PAINT_TEXT_OFFSET_Y:I = 0x32

.field private static final DEBUG_PAINT_TEXT_SIZE:I = 0x1e

.field private static final FLING_SCROLL_THRESHOLD:I = 0x5dc

.field private static final INVALID_POINTER:I = -0x1

.field private static final OVER_SCROLL_TOUCH_DURATION_THRESHOLD:I = 0x64

.field private static final OVER_SCROLL_TOUCH_OFFSET_THRESHOLD:I = 0xa

.field private static final SLOW_SCROLL_THRESHOLD:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "COUIScrollView"

.field private static final VERTICAL_SPRING_BACK_TENSION_MULTIPLE:F = 2.15f


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mEnableOptimizedScroll:Z

.field private mEnableVibrator:Z

.field private mFillViewport:Z

.field private mFlingStrictSpan:Z

.field private mFlingVelocityY:F

.field private mInitialTouchY:I

.field private mIsBeingDragged:Z

.field private mIsColorDevice:Z

.field private mIsLayoutDirty:Z

.field private mIsTouchDownWhileOverScrolling:Z

.field private mIsTouchDownWhileSlowScrolling:Z

.field private mItemClickableWhileOverScrolling:Z

.field private mItemClickableWhileSlowScrolling:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

.field private mScreenHeight:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Z

.field private mSmoothScrollingEnabled:Z

.field private mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollConsumed:[I

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileSlowScrolling:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileOverScrolling:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mDebugPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableOptimizedScroll:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Z

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initCOUIScrollView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    const/4 v0, 0x2

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollConsumed:[I

    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileSlowScrolling:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileOverScrolling:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mDebugPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableOptimizedScroll:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Z

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initCOUIScrollView(Landroid/content/Context;)V

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIScrollView_couiScrollViewEnableVibrator:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private canScroll()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v3

    if-ge v2, p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method private static clamp(III)I
    .registers 4

    if-ge p1, p2, :cond_c

    if-gez p0, :cond_5

    goto :goto_c

    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_b

    sub-int/2addr p2, p1

    return p2

    :cond_b
    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method private dispatchClickEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x2

    new-array v0, p0, [I

    fill-array-data v0, :array_18

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, p0, :cond_17

    aget v3, v0, v2

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    and-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return v1

    :array_18
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private doScrollY(I)V
    .registers 4

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->smoothCOUIScrollBy(II)V

    goto :goto_e

    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_e
    :goto_e
    return-void
.end method

.method private endDrag()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->recycleVelocityTracker()V

    iget-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    if-eqz v1, :cond_c

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    :cond_c
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_d
    if-ge v3, v0, :cond_53

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    const/4 v8, 0x1

    if-ge p2, v7, :cond_50

    if-ge v6, p3, :cond_50

    if-ge p2, v6, :cond_28

    if-ge v7, p3, :cond_28

    move v9, v8

    goto :goto_29

    :cond_28
    move v9, v1

    :goto_29
    if-nez v2, :cond_2e

    move-object v2, v5

    move v4, v9

    goto :goto_50

    :cond_2e
    if-eqz p1, :cond_36

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v6, v10, :cond_3e

    :cond_36
    if-nez p1, :cond_40

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v7, v6, :cond_40

    :cond_3e
    move v6, v8

    goto :goto_41

    :cond_40
    move v6, v1

    :goto_41
    if-eqz v4, :cond_48

    if-eqz v9, :cond_50

    if-eqz v6, :cond_50

    goto :goto_4f

    :cond_48
    if-eqz v9, :cond_4d

    move-object v2, v5

    move v4, v8

    goto :goto_50

    :cond_4d
    if-eqz v6, :cond_50

    :goto_4f
    move-object v2, v5

    :cond_50
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_53
    return-object v2
.end method

.method private findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 11

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isClickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_67

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_64

    :cond_25
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v4, :cond_64

    invoke-direct {p0, v3, v5}, Lcom/coui/appcompat/scrollview/COUIScrollView;->dispatchClickEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_64

    move-object v1, v3

    :cond_64
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "findViewToDispatchClickEvent: target: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_8

    if-lez p1, :cond_15

    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_17

    if-gez p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fling(I)V

    :cond_28
    return-void
.end method

.method private getScrollRange()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_22
    return v1
.end method

.method private inChild(II)Z
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge p2, v2, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    if-ge p1, p0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method private initCOUIScrollView(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const v1, 0x4009999a  # 2.15f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->e(F)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->d(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->setEnableFlingSpeedIncrease(Z)V

    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mMinimumVelocity:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mMaximumVelocity:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVerticalScrollFactor:F

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Z

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isClickEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    mul-int/2addr p1, p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long p0, v0, v2

    if-gez p0, :cond_23

    const/16 p0, 0xa

    if-ge p1, p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isOverScrolling()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p0

    if-le v0, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    if-gt p1, p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_2d

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_2d
    return-void
.end method

.method private performFeedback()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->performHapticFeedback(I)Z

    :cond_9
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    if-ne p1, v4, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v2

    :goto_12
    invoke-direct {p0, v4, p2, p3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_19

    move-object v5, p0

    :cond_19
    if-lt p2, v1, :cond_1e

    if-gt p3, v0, :cond_1e

    goto :goto_28

    :cond_1e
    if-eqz v4, :cond_22

    sub-int/2addr p2, v1

    goto :goto_24

    :cond_22
    sub-int p2, p3, v0

    :goto_24
    invoke-direct {p0, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->doScrollY(I)V

    move v2, v3

    :goto_28
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eq v5, p0, :cond_31

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_31
    return v2
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    if-eqz v1, :cond_15

    if-eqz p2, :cond_12

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_15

    :cond_12
    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->smoothCOUIScrollBy(II)V

    :cond_15
    :goto_15
    return v1
.end method

.method private scrollToWithClamp(II)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_46

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->clamp(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_43

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_46

    :cond_43
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollTo(II)V

    :cond_46
    return-void
.end method


# virtual methods
.method public arrowScroll(I)Z
    .registers 9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->doScrollY(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_74

    :cond_36
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_48

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_48

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    goto :goto_6a

    :cond_48
    if-ne p1, v4, :cond_6a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6a

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v1, v6

    if-ge v1, v2, :cond_6a

    move v2, v1

    :cond_6a
    :goto_6a
    if-nez v2, :cond_6d

    return v3

    :cond_6d
    if-ne p1, v4, :cond_70

    goto :goto_71

    :cond_70
    neg-int v2, v2

    :goto_71
    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->doScrollY(I)V

    :goto_74
    if-eqz v0, :cond_91

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    :cond_91
    const/4 p0, 0x1

    return p0
.end method

.method public computeScroll()V
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v1

    if-ne v4, v0, :cond_20

    if-eq v5, v1, :cond_31

    :cond_20
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v7

    sub-int v2, v0, v4

    sub-int v3, v1, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    const/4 v10, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/coui/appcompat/scrollview/COUIScrollView;->overScrollBy(IIIIIIIIZ)Z

    :cond_31
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_42

    :cond_3b
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_42
    :goto_42
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_3d

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_2a

    const/4 p1, 0x0

    :cond_2a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3d

    if-eq p1, p0, :cond_3d

    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 v1, 0x1

    :cond_3d
    return v1

    :cond_3e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_81

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v0, v3, :cond_72

    const/16 v3, 0x14

    if-eq v0, v3, :cond_62

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_57

    goto :goto_81

    :cond_57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_5e

    move v2, v4

    :cond_5e
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->pageScroll(I)Z

    goto :goto_81

    :cond_62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6d

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_81

    :cond_6d
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_81

    :cond_72
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_7d

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_81

    :cond_7d
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fullScroll(I)Z

    move-result v1

    :cond_81
    :goto_81
    return v1
.end method

.method public fling(I)V
    .registers 16

    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingVelocityY:F

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    div-int/lit8 v13, v0, 0x2

    move v7, p1

    invoke-interface/range {v3 .. v13}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIIIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-nez p1, :cond_41

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_41
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_44
    return-void
.end method

.method public fullScroll(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_34

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_34
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public getScrollableRange()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public invalidateParentIfNeeded()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method public isEnableFlingSpeedIncrease()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->e:Z

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isFillViewport()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFillViewport:Z

    return p0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    return p0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    :cond_a
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_10
    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    goto :goto_4d

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_27

    :cond_17
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz v0, :cond_4d

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int v0, v2, v0

    if-gez v0, :cond_3e

    const/4 v1, 0x0

    goto :goto_42

    :cond_3e
    if-le v0, v1, :cond_41

    goto :goto_42

    :cond_41
    move v1, v0

    :goto_42
    if-eq v1, v2, :cond_4d

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_4d
    :goto_4d
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    iget-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_d

    return v2

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v2

    :cond_14
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_bd

    const/4 v4, -0x1

    if-eq v0, v2, :cond_97

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_97

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    goto/16 :goto_13e

    :cond_29
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_13e

    :cond_2e
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    goto/16 :goto_13e

    :cond_37
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    if-ne v0, v4, :cond_3d

    goto/16 :goto_13e

    :cond_3d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v4, :cond_60

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13e

    :cond_60
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_13e

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v4

    and-int/2addr v1, v4

    if-nez v1, :cond_13e

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    if-nez p1, :cond_8c

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    :cond_8c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_13e

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_13e

    :cond_97
    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->recycleVelocityTracker()V

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v9

    invoke-interface/range {v3 .. v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_b8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_b8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_13e

    :cond_bd
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v4, 0x0

    if-eqz v0, :cond_c7

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    goto :goto_c8

    :cond_c7
    move v0, v4

    :goto_c8
    iget v5, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingVelocityY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x44bb8000  # 1500.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d7

    move v5, v2

    goto :goto_d8

    :cond_d7
    move v5, v3

    :goto_d8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v6, v4

    if-lez v4, :cond_ee

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x437a0000  # 250.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_ee

    if-eqz v5, :cond_ee

    move v0, v2

    goto :goto_ef

    :cond_ee
    move v0, v3

    :goto_ef
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsTouchDownWhileSlowScrolling:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOverScrolling()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsTouchDownWhileOverScrolling:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->inChild(II)Z

    move-result v4

    if-nez v4, :cond_113

    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->recycleVelocityTracker()V

    goto :goto_13e

    :cond_113
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz p1, :cond_13b

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    if-nez p1, :cond_13b

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    :cond_13b
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    :cond_13e
    :goto_13e
    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_15

    invoke-static {p2, p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToDescendant(Landroid/view/View;)V

    :cond_15
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result p4

    if-nez p4, :cond_5c

    iget-object p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    if-eqz p4, :cond_29

    iget p4, p4, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;->a:I

    invoke-static {p0, p4}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    :cond_29
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_38

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_39

    :cond_38
    move p2, p1

    :goto_39
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p2, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    if-le p3, p2, :cond_53

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    goto :goto_5c

    :cond_53
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p2

    if-gez p2, :cond_5c

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    :cond_5c
    :goto_5c
    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToWithClamp(II)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_58

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v1, p0, :cond_58

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v2, v0}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->measure(II)V

    :cond_58
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    if-nez p4, :cond_8

    float-to-int p1, p3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->flingWithNestedDispatch(I)V

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public onOverScrolled(IIZZ)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_c

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_93

    :cond_c
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOverScrolling()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2a

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz p3, :cond_2a

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    if-lt p2, p3, :cond_22

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    goto :goto_23

    :cond_22
    move p3, p4

    :goto_23
    sub-int/2addr p2, p3

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    invoke-static {p3, p2, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->a(III)I

    move-result p2

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_46

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_52

    invoke-virtual {p0, p4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollableRange()I

    move-result v0

    if-gt p3, v0, :cond_52

    :cond_46
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_52
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    if-ltz p3, :cond_68

    if-gez p2, :cond_68

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz p3, :cond_68

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->performFeedback()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    invoke-virtual {p3, p2, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_68
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    if-gt p3, p4, :cond_8a

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    if-le p2, p3, :cond_8a

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz p3, :cond_8a

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->performFeedback()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    invoke-virtual {p3, p2, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_8a
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    :cond_93
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/16 p1, 0x82

    goto :goto_b

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/16 p1, 0x21

    :cond_b
    :goto_b
    if-nez p2, :cond_17

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1f
    const/4 v1, 0x0

    if-nez v0, :cond_23

    return v1

    :cond_23
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v1

    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;->a:I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    if-ne p0, p1, :cond_1c

    goto :goto_36

    :cond_1c
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_36

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->doScrollY(I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initVelocityTrackerIfNotExists()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    :cond_14
    iget v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v3, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_280

    const/4 v4, -0x1

    if-eq v1, v13, :cond_184

    if-eq v1, v3, :cond_84

    const/4 v2, 0x3

    if-eq v1, v2, :cond_56

    const/4 v2, 0x5

    if-eq v1, v2, :cond_41

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2f

    goto/16 :goto_2bd

    :cond_2f
    invoke-direct/range {p0 .. p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    goto/16 :goto_2bd

    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    goto/16 :goto_2bd

    :cond_56
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2bd

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2bd

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_7d
    iput v4, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->endDrag()V

    goto/16 :goto_2bd

    :cond_84
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v3, :cond_93

    iget-boolean v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableOptimizedScroll:Z

    if-eqz v3, :cond_93

    check-cast v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->f()V

    :cond_93
    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_ac

    const-string v0, "Invalid pointerId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    const-string v2, " in onTouchEvent"

    const-string v3, "COUIScrollView"

    invoke-static {v0, v1, v2, v3}, Landroidx/core/widget/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2bd

    :cond_ac
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    sub-int/2addr v1, v0

    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    invoke-virtual {v10, v2, v1, v3, v4}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_d4

    iget-object v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollConsumed:[I

    aget v2, v2, v13

    sub-int/2addr v1, v2

    iget-object v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v2, v2, v13

    int-to-float v2, v2

    invoke-virtual {v11, v12, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v3, v3, v13

    add-int/2addr v2, v3

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    :cond_d4
    iget-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_f4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_f4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_e9

    invoke-interface {v2, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e9
    iput-boolean v13, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-lez v1, :cond_f1

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    sub-int/2addr v1, v2

    goto :goto_f4

    :cond_f1
    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    add-int/2addr v1, v2

    :cond_f4
    :goto_f4
    move v14, v1

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_2bd

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_11c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    invoke-static {v14, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    goto :goto_135

    :cond_11c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_137

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    invoke-static {v14, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    :goto_135
    move v2, v0

    goto :goto_138

    :cond_137
    move v2, v14

    :goto_138
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coui/appcompat/scrollview/COUIScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_156

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v0

    if-nez v0, :cond_156

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v15

    sub-int v4, v14, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_2bd

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v2, v1, v13

    sub-int/2addr v0, v2

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    aget v0, v1, v13

    int-to-float v0, v0

    invoke-virtual {v11, v12, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    goto/16 :goto_2bd

    :cond_184
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOverScrolling()Z

    move-result v1

    iget-boolean v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileSlowScrolling:Z

    if-eqz v3, :cond_192

    iget-boolean v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsTouchDownWhileSlowScrolling:Z

    if-eqz v3, :cond_192

    move v3, v13

    goto :goto_193

    :cond_192
    move v3, v2

    :goto_193
    iget-boolean v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileOverScrolling:Z

    if-eqz v5, :cond_19e

    iget-boolean v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsTouchDownWhileOverScrolling:Z

    if-eqz v5, :cond_19e

    if-eqz v1, :cond_19e

    move v2, v13

    :cond_19e
    if-nez v3, :cond_1a2

    if-eqz v2, :cond_1a5

    :cond_1a2
    invoke-direct/range {p0 .. p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    :cond_1a5
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_262

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mMinimumVelocity:I

    if-le v1, v2, :cond_22c

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    neg-int v2, v0

    int-to-float v3, v2

    invoke-interface {v1, v3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-gez v1, :cond_1f8

    const/16 v1, -0x5dc

    if-le v0, v1, :cond_1f4

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_249

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_249

    :cond_1f4
    invoke-direct {v10, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->flingWithNestedDispatch(I)V

    goto :goto_249

    :cond_1f8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v3

    if-le v1, v3, :cond_228

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_224

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_249

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_249

    :cond_224
    invoke-direct {v10, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->flingWithNestedDispatch(I)V

    goto :goto_249

    :cond_228
    invoke-direct {v10, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->flingWithNestedDispatch(I)V

    goto :goto_249

    :cond_22c
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_249

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_249
    :goto_249
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_259

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_25c

    :cond_259
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->performFeedback()V

    :cond_25c
    iput v4, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->endDrag()V

    goto :goto_2bd

    :cond_262
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2bd

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_2bd

    :cond_280
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_287

    return v2

    :cond_287
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_298

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_298

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_298
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_2ab

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz v1, :cond_2ab

    iput-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_2ab
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v10, v3}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    :cond_2bd
    :goto_2bd
    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2c4

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2c4
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    return v13
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    :cond_11
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .registers 10

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onOverScrolled(IIZZ)V

    return p1
.end method

.method public pageScroll(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-eqz v2, :cond_38

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_49

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_49

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_49

    :cond_38
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_49

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_10

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToDescendant(Landroid/view/View;)V

    goto :goto_12

    :cond_10
    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->recycleVelocityTracker()V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/ScrollView;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_34

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-eq v0, p2, :cond_34

    :cond_12
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Z

    if-eqz v2, :cond_28

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->b(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    goto :goto_2b

    :cond_28
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :goto_2b
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_34

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_34
    return-void
.end method

.method public scrollToDescendant(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1d

    :cond_1b
    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->c(Z)V

    :cond_7
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableOptimizedScroll:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileOverScrolling:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileSlowScrolling:Z

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->l:Z

    return-void
.end method

.method public final smoothCOUIScrollBy(II)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_4b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v0

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    invoke-interface {p2, v2, v0, v1, p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_61

    :cond_4b
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_5e

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_5e
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    :goto_61
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothCOUIScrollTo(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->smoothCOUIScrollBy(II)V

    return-void
.end method
