.class public Landroidx/recyclerview/widget/COUIRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""

# interfaces
.implements Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;,
        Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;,
        Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;,
        Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field public static final CENTER_ALIGN:I = 0x2

.field private static final COUI_DEBUG:Z

.field private static final CUSTOM_TOUCH_SLOP:I = 0x2

.field private static final DEBUG_PAINT_TEXT_OFFSET_Y:I = 0x32

.field private static final DEBUG_PAINT_TEXT_SIZE:I = 0x1e

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE:F = 20.0f

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD:I = 0x9c4

.field private static final DEGREE_TO_ARC_CONSTANT:D = 0.017453292519943295

.field private static final FLING_SCROLL_THRESHOLD:I = 0x5dc

.field private static final FLING_SCROLL_THRESHOLD_WHILE_OVER_SCROLLING:I = 0x1770

.field private static final HORIZONTAL_SPRING_BACK_TENSION_MULTIPLE:F = 3.2f

.field private static final INVALID_POINTER:I = -0x1

.field private static final OVER_SCROLL_TOUCH_DURATION_THRESHOLD:I = 0x64

.field private static final OVER_SCROLL_TOUCH_OFFSET_THRESHOLD:I = 0xa

.field private static final SLOW_SCROLL_THRESHOLD:I = 0x9c4

.field public static final START_ALIGN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "COUIRecyclerView"

.field private static final VERTICAL_SPRING_BACK_TENSION_MULTIPLE:F = 2.15f


# instance fields
.field public final FLING:I

.field public final OVER_FLING:I

.field public final OVER_SCROLLING:I

.field private final SCROLLBARS_NONE:I

.field private final SCROLLBARS_VERTICAL:I

.field public final SCROLLING:I

.field private mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

.field private mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

.field private mClickVelocityX:F

.field private mClickVelocityY:F

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDispatchEventVelocityThreshold:I

.field private mEnableDispatchEventWhileOverScrolling:Z

.field private mEnableDispatchEventWhileScrolling:Z

.field private mEnableFlingSpeedIncrease:Z

.field private mEnableOptimizedScroll:Z

.field private mEnablePointerDown:Z

.field private mEnableVibrator:Z

.field private mFixScrollTypeForOverScrolling:Z

.field private mFlingRatio:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mIsOverScrollingReverseFling:Z

.field private mIsTouchDownWhileOverScrolling:Z

.field private mIsTouchDownWhileSlowScrolling:Z

.field private mIsUseNativeOverScroll:Z

.field private mItemClickableWhileOverScrolling:Z

.field private mItemClickableWhileSlowScrolling:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mNestedOffsets:[I

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

.field private mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOverScrollEnable:Z

.field private mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollType:I

.field private mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

.field private mScrollbars:I

.field private mScrollbarsSize:I

.field private mSlowScrollThreshold:I

.field private mSmoothScrollFlag:Z

.field private mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

.field private mStyle:I

.field private mTouchSlop:I

.field private mTouchTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalSpringOverTension:F

.field private mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "COUIRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->SCROLLBARS_NONE:I

    const/16 v1, 0x200

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->SCROLLBARS_VERTICAL:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFixScrollTypeForOverScrolling:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->SCROLLING:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->FLING:I

    const/4 v3, 0x2

    iput v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->OVER_SCROLLING:I

    const/4 v4, 0x3

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->OVER_FLING:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsOverScrollingReverseFling:Z

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenHeight:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenWidth:I

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileSlowScrolling:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileOverScrolling:Z

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableFlingSpeedIncrease:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableOptimizedScroll:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileScrolling:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileOverScrolling:Z

    const/16 v4, 0x9c4

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDispatchEventVelocityThreshold:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbars:I

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSlowScrollThreshold:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    const/4 v5, -0x1

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    new-array v5, v3, [I

    iput-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    new-array v3, v3, [I

    iput-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    const v3, 0x4009999a  # 2.15f

    iput v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVerticalSpringOverTension:F

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnablePointerDown:Z

    const/high16 v3, 0x3f800000  # 1.0f

    iput v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableVibrator:Z

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/COUIRecyclerView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->initViewFlinger()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->initOnItemTouchListeners()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setSlowScrollThreshold(I)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->initProperty(Landroid/content/Context;)V

    sget-boolean p2, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz p2, :cond_98

    const-string p2, "COUIRecyclerView: overscroll_mode: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mOverScrollEnable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    const-string v2, "COUIRecyclerView"

    invoke-static {p2, p3, v2}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_98
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->initOverScroller(Landroid/content/Context;)V

    new-instance p2, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-direct {p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    iput-object p0, p2, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p2, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenWidth:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenHeight:I

    iget p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbars:I

    if-ne p2, v1, :cond_de

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->createCOUIScrollDelegate(Landroid/content/Context;)V

    iget p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarsSize:I

    if-eqz p1, :cond_d5

    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    iget-object p3, p2, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->h(I)Z

    :cond_d5
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_de

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g(Landroid/graphics/drawable/Drawable;)V

    :cond_de
    return-void
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->lambda$onSizeChanged$0()V

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/COUIRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    return p0
.end method

.method public static synthetic access$1000(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->initOverScroller(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$102(Landroidx/recyclerview/widget/COUIRecyclerView;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    return p1
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    return p0
.end method

.method public static synthetic access$202(Landroidx/recyclerview/widget/COUIRecyclerView;I)I
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    return p1
.end method

.method public static synthetic access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->performFeedback()V

    return-void
.end method

.method public static synthetic access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    return p0
.end method

.method public static synthetic access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    return p0
.end method

.method public static synthetic access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    return-object p0
.end method

.method public static synthetic access$702(Landroidx/recyclerview/widget/COUIRecyclerView;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    return p1
.end method

.method public static synthetic access$802(Landroidx/recyclerview/widget/COUIRecyclerView;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    return p1
.end method

.method public static synthetic access$900(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    return-object p0
.end method

.method private cancelScroll()V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->resetScroll()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    invoke-static {p0, v0}, Lcom/coui/appcompat/view/ViewNative;->b(Landroid/view/View;I)V

    invoke-static {p0, v0}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    return-void
.end method

.method private changeStateAndVibrate(Z)V
    .registers 2

    if-nez p1, :cond_5

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->performFeedback()V

    :cond_5
    iget p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    :cond_f
    return-void
.end method

.method private createCOUIScrollDelegate(Landroid/content/Context;)V
    .registers 2

    new-instance p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;-><init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->a()Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    return-void
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

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_11
    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1e

    if-ne p1, v1, :cond_21

    :cond_1e
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_21
    return v1
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_26

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x3

    if-eq v0, v5, :cond_23

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_26
    return v2
.end method

.method private findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 12

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->isClickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object v3, v1

    :goto_14
    if-ltz v2, :cond_7e

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_7b

    :cond_26
    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v5, :cond_65

    invoke-direct {p0, v4, v6}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchClickEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_65

    move-object v3, v4

    :cond_65
    sget-boolean v5, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz v5, :cond_7b

    if-ne v4, v3, :cond_77

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const-string v6, "#80FF0000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_78

    :cond_77
    move-object v5, v1

    :goto_78
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7b
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_7e
    return-object v3
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_26

    return-object p2

    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVelocityAlongScrollableDirection()F
    .registers 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result p0

    return p0

    :cond_17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p0, :cond_26

    invoke-interface {p0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result p0

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private hookIfNeedInterceptMoveEvent(FF)Z
    .registers 7

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileScrolling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isOverScrolling()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    return v1

    :cond_11
    :goto_11
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_17

    return v1

    :cond_17
    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v2, 0x3fd657184ae74487L  # 0.3490658503988659

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    cmpl-double p0, p0, v2

    if-lez p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    return v1
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    if-eqz p2, :cond_f

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    goto :goto_11

    :cond_f
    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    :goto_11
    if-eqz p1, :cond_42

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIRecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRecyclerView_couiScrollbars:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbars:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRecyclerView_couiScrollbarSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarsSize:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRecyclerView_couiScrollbarThumbVertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRecyclerView_couiRecyclerViewEnableVibrator:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableVibrator:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_42
    return-void
.end method

.method private initOnItemTouchListeners()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    :cond_b
    return-void
.end method

.method private initOverScroller(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-nez v0, :cond_20

    const v0, 0x4009999a  # 2.15f

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVerticalSpringOverTension:F

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    new-instance v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setIsUseNativeOverScroll(Z)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableFlingSpeedIncrease:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setEnableFlingSpeedIncrease(Z)V

    :cond_20
    return-void
.end method

.method private initProperty(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    return-void
.end method

.method private initViewFlinger()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    :cond_b
    return-void
.end method

.method private isClickEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr p1, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchTime:J

    sub-long/2addr v0, v2

    sget-boolean p0, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz p0, :cond_45

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent: ACTION_UP. touchDuration = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", offset = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "COUIRecyclerView"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const-wide/16 v2, 0x64

    cmp-long p0, v0, v2

    if-gez p0, :cond_51

    const/16 p0, 0xa

    if-ge p1, p0, :cond_51

    const/4 p0, 0x1

    goto :goto_52

    :cond_51
    const/4 p0, 0x0

    :goto_52
    return p0
.end method

.method private isOverScrolling()Z
    .registers 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isOverScrollingInScrollableDirection()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private isOverScrollingInScrollableDirection()Z
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    if-eqz p0, :cond_22

    move v1, v2

    :cond_22
    return v1

    :cond_23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p0

    if-eqz p0, :cond_32

    move v1, v2

    :cond_32
    return v1

    :cond_33
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    if-eqz p0, :cond_42

    move v1, v2

    :cond_42
    return v1
.end method

.method private lambda$onSizeChanged$0()V
    .registers 2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    iget v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b:I

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e()V

    :cond_9
    return-void
.end method

.method private needLocate()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_31

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    :cond_31
    return-void
.end method

.method private performFeedback()V
    .registers 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableVibrator:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_9
    return-void
.end method

.method private performOverScrollingReverseFling(FF)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsOverScrollingReverseFling:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->a(IIII)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->changeStateAndVibrate(Z)V

    return-void
.end method

.method private performSpringBack(Z)V
    .registers 9

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/scroll/SpringOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->changeStateAndVibrate(Z)V

    :cond_17
    return-void
.end method

.method private resetScroll()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method private stopScrollersInternal()V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->initViewFlinger()V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->stop()V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_f
    return-void
.end method


# virtual methods
.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->initOnItemTouchListeners()V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public awakenScrollBars()Z
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a()Z

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    :goto_d
    return p0
.end method

.method public cancelHorizontalItemAlign()V
    .registers 2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b:I

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public computeScroll()V
    .registers 16

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsOverScrollingReverseFling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    if-nez v0, :cond_45

    if-nez v12, :cond_45

    neg-int v3, v0

    neg-int v4, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move v5, v0

    move v6, v12

    invoke-virtual/range {v2 .. v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v12}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsOverScrollingReverseFling:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->getCurrVelocityX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->getCurrVelocityY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v3}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->fling(II)Z

    return-void

    :cond_45
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_a0

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_51

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a0

    :cond_51
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v14

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->getCOUICurrX()I

    move-result v4

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->getCOUICurrY()I

    move-result v5

    if-ne v3, v4, :cond_6d

    if-eq v14, v5, :cond_8a

    :cond_6d
    sub-int v6, v4, v3

    sub-int v7, v5, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    const/4 v13, 0x0

    move-object v4, p0

    move v5, v6

    move v6, v7

    move v7, v3

    move v8, v14

    move v11, v12

    invoke-virtual/range {v4 .. v13}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3, v14}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    :cond_8a
    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->isCOUIFinished()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    goto :goto_97

    :cond_94
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    :goto_97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_a0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_a0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz v0, :cond_9d

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOverScrolling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isOverScrolling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x42480000  # 50.0f

    sub-float/2addr v3, v4

    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: FlingVelX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ClickVelX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mClickVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y: FlingVelY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ClickVelY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mClickVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v4

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9d
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_a4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c(Landroid/graphics/Canvas;)V

    :cond_a4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileScrolling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_40

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_f
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getVelocityAlongScrollableDirection()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2c

    iget v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDispatchEventVelocityThreshold:I

    int-to-float v2, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_2c

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScroll()V

    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_39

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_40

    :cond_39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->performSpringBack(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_53

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnablePointerDown:Z

    if-nez v0, :cond_53

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_53
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public fling(II)Z
    .registers 10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_12

    return v1

    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_26

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_27

    :cond_26
    move p1, v1

    :cond_27
    if-eqz v2, :cond_31

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_32

    :cond_31
    move p2, v1

    :cond_32
    if-nez p1, :cond_37

    if-nez p2, :cond_37

    return v1

    :cond_37
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_7d

    const/4 v5, 0x1

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    if-nez v0, :cond_49

    if-eqz v2, :cond_47

    goto :goto_49

    :cond_47
    move v6, v1

    goto :goto_4a

    :cond_49
    :goto_49
    move v6, v5

    :goto_4a
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    if-eqz v3, :cond_58

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_58

    return v5

    :cond_58
    if-eqz v6, :cond_7d

    if-eqz v2, :cond_5e

    or-int/lit8 v0, v0, 0x2

    :cond_5e
    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_7d
    return v1
.end method

.method public getCOUIScrollDelegate()Lcom/coui/appcompat/scrollbar/COUIScrollBar;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    return-object p0
.end method

.method public getCOUIScrollableView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getHorizontalItemAlign()I
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    iget p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b:I

    return p0
.end method

.method public getIsUseNativeOverScroll()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    return p0
.end method

.method public getMaxFlingVelocity()I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    return p0
.end method

.method public getNativeOverScroller()Lcom/coui/appcompat/scroll/COUILocateOverScroller;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    return-object p0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-object p0
.end method

.method public getScrollState()I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    return p0
.end method

.method public getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    return-object p0
.end method

.method public invalidateParentIfNeeded()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method public isEnableFlingSpeedIncrease()Z
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->e:Z

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e()Z

    :cond_d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    :cond_11
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->f(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    if-eqz v0, :cond_15

    return v2

    :cond_15
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    return v2

    :cond_27
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2c

    return v1

    :cond_2c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_40

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_40
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-static {p1, v5}, Lcom/coui/appcompat/uiutil/UIUtil;->b(Landroid/view/MotionEvent;I)I

    move-result v5

    const-string v6, "COUIRecyclerView"

    const/high16 v7, 0x3f000000  # 0.5f

    const/4 v8, 0x2

    if-eqz v4, :cond_102

    if-eq v4, v2, :cond_f8

    if-eq v4, v8, :cond_97

    const/4 v0, 0x3

    if-eq v4, v0, :cond_92

    const/4 v0, 0x5

    if-eq v4, v0, :cond_6c

    const/4 v0, 0x6

    if-eq v4, v0, :cond_67

    goto/16 :goto_1f6

    :cond_67
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1f6

    :cond_6c
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnablePointerDown:Z

    if-nez p1, :cond_1f6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    :cond_92
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    goto/16 :goto_1f6

    :cond_97
    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_ad

    const-string p1, "Error processing scroll; pointer index for id "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-static {p1, p0, v0, v6}, Landroidx/core/widget/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_ad
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eq v4, v2, :cond_1f6

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    sub-int v4, v5, v4

    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_db

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v0, v7, :cond_db

    int-to-float v0, v6

    int-to-float v7, v4

    invoke-direct {p0, v0, v7}, Landroidx/recyclerview/widget/COUIRecyclerView;->hookIfNeedInterceptMoveEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_db

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    move v0, v2

    goto :goto_dc

    :cond_db
    move v0, v1

    :goto_dc
    if-eqz v3, :cond_f1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v3, v5, :cond_f1

    int-to-float v3, v4

    int-to-float v4, v6

    invoke-direct {p0, v3, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->hookIfNeedInterceptMoveEvent(FF)Z

    move-result v3

    if-eqz v3, :cond_f1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    move v0, v2

    :cond_f1
    if-eqz v0, :cond_1f6

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    goto/16 :goto_1f6

    :cond_f8
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    goto/16 :goto_1f6

    :cond_102
    iget-boolean v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_108

    iput-boolean v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    :cond_108
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v5, 0x0

    if-eqz v4, :cond_112

    invoke-interface {v4}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v4

    goto :goto_113

    :cond_112
    move v4, v5

    :goto_113
    iget-object v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v9, :cond_11c

    invoke-interface {v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v9

    goto :goto_11d

    :cond_11c
    move v9, v5

    :goto_11d
    iget v10, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x44bb8000  # 1500.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12c

    move v10, v2

    goto :goto_12d

    :cond_12c
    move v10, v1

    :goto_12d
    iget v12, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v11, v12, v11

    if-lez v11, :cond_139

    move v11, v2

    goto :goto_13a

    :cond_139
    move v11, v1

    :goto_13a
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v12, v12, v5

    if-lez v12, :cond_14f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSlowScrollThreshold:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_14f

    if-nez v10, :cond_164

    :cond_14f
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v5, v10, v5

    if-lez v5, :cond_166

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v10, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSlowScrollThreshold:I

    int-to-float v10, v10

    cmpg-float v5, v5, v10

    if-gez v5, :cond_166

    if-eqz v11, :cond_166

    :cond_164
    move v5, v2

    goto :goto_167

    :cond_166
    move v5, v1

    :goto_167
    iput-boolean v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileSlowScrolling:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isOverScrolling()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileOverScrolling:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchTime:J

    sget-boolean v5, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz v5, :cond_1bc

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mClickVelocityX:F

    iput v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mClickVelocityY:F

    const-string/jumbo v5, "onInterceptTouchEvent: ACTION_DOWN, isOverScrolling = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileOverScrolling:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", scrollVelocityX = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mFlingVelocityX = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", scrollVelocityY = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mFlingVelocityY = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bc
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    iget p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne p1, v8, :cond_1e7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :cond_1e7
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v3, :cond_1f1

    or-int/lit8 v0, v0, 0x2

    :cond_1f1
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    :cond_1f6
    :goto_1f6
    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne p0, v2, :cond_1fb

    move v1, v2

    :cond_1fb
    return v1
.end method

.method public onOverScrolled(IIZZ)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_66

    :cond_c
    sget-boolean p3, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz p3, :cond_2f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onOverScrolled: scrollX: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " scrollY: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "COUIRecyclerView"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_4f

    add-int/lit8 p1, p1, 0x0

    add-int/lit8 p2, p2, 0x0

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenWidth:I

    const/4 p4, 0x0

    invoke-static {p4, p1, p3}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->a(III)I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenHeight:I

    invoke-static {p4, p2, p3}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->a(III)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr p2, p3

    float-to-int p2, p2

    :cond_4f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->b(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->c(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    :cond_66
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenWidth:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenHeight:I

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    if-eqz p1, :cond_23

    new-instance p1, Landroidx/recyclerview/widget/a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->f(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_28e

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_17

    goto/16 :goto_28e

    :cond_17
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    return v1

    :cond_21
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_26

    return v2

    :cond_26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3a
    iget-boolean v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v4, :cond_43

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_43
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-static {p1, v6}, Lcom/coui/appcompat/uiutil/UIUtil;->b(Landroid/view/MotionEvent;I)I

    move-result v6

    if-nez v5, :cond_5b

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aput v2, v7, v1

    aput v2, v7, v2

    :cond_5b
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v8, v7, v2

    int-to-float v8, v8

    aget v7, v7, v1

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v5, :cond_240

    if-eq v5, v1, :cond_187

    const/4 v8, 0x2

    if-eq v5, v8, :cond_a4

    const/4 v0, 0x3

    if-eq v5, v0, :cond_9b

    const/4 v0, 0x5

    if-eq v5, v0, :cond_7f

    const/4 v0, 0x6

    if-eq v5, v0, :cond_7a

    goto/16 :goto_27f

    :cond_7a
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_27f

    :cond_7f
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    goto/16 :goto_27f

    :cond_9b
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-boolean v1, p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    goto/16 :goto_27f

    :cond_a4
    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v6, v5, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v6, :cond_b3

    iget-boolean v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableOptimizedScroll:Z

    if-eqz v6, :cond_b3

    check-cast v5, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v5}, Lcom/coui/appcompat/scroll/SpringOverScroller;->f()V

    :cond_b3
    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_d8

    const-string p1, "Error processing scroll; pointer index for id "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_d8
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    sub-int/2addr v5, v6

    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    sub-int v13, v7, p1

    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v10, v2

    aput v2, v10, v1

    iget-object v11, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    move-object v7, p0

    move v8, v5

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v7

    if-eqz v7, :cond_122

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v7, v2

    sub-int/2addr v5, v8

    aget v7, v7, v1

    sub-int/2addr v13, v7

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v8, v7, v2

    int-to-float v8, v8

    aget v7, v7, v1

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v8, v7, v2

    iget-object v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v10, v9, v2

    add-int/2addr v8, v10

    aput v8, v7, v2

    aget v8, v7, v1

    aget v9, v9, v1

    add-int/2addr v8, v9

    aput v8, v7, v1

    :cond_122
    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eq v7, v1, :cond_14d

    if-eqz v0, :cond_137

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v7, v8, :cond_137

    if-lez v5, :cond_134

    sub-int/2addr v5, v8

    goto :goto_135

    :cond_134
    add-int/2addr v5, v8

    :goto_135
    move v7, v1

    goto :goto_138

    :cond_137
    move v7, v2

    :goto_138
    if-eqz v3, :cond_148

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_148

    if-lez v13, :cond_146

    sub-int/2addr v13, v9

    goto :goto_147

    :cond_146
    add-int/2addr v13, v9

    :goto_147
    move v7, v1

    :cond_148
    if-eqz v7, :cond_14d

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    :cond_14d
    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne v7, v1, :cond_27f

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v8, v7, v2

    sub-int/2addr v6, v8

    iput v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    aget v6, v7, v1

    sub-int/2addr p1, v6

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz p1, :cond_163

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_163
    if-eqz v0, :cond_167

    move p1, v5

    goto :goto_168

    :cond_167
    move p1, v2

    :goto_168
    if-eqz v3, :cond_16c

    move v0, v13

    goto :goto_16d

    :cond_16c
    move v0, v2

    :goto_16d
    invoke-virtual {p0, p1, v0, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_17a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_17a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz p1, :cond_27f

    if-nez v5, :cond_182

    if-eqz v13, :cond_27f

    :cond_182
    invoke-virtual {p1, p0, v5, v13}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_27f

    :cond_187
    iget-boolean v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez v5, :cond_192

    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move v5, v1

    goto :goto_193

    :cond_192
    move v5, v2

    :goto_193
    iget-object v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v6, 0x0

    if-eqz v0, :cond_1aa

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_1ab

    :cond_1aa
    move v0, v6

    :goto_1ab
    if-eqz v3, :cond_1b7

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_1b8

    :cond_1b7
    move v3, v6

    :goto_1b8
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isOverScrolling()Z

    move-result v7

    iget-boolean v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileSlowScrolling:Z

    if-eqz v8, :cond_1c6

    iget-boolean v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileSlowScrolling:Z

    if-eqz v8, :cond_1c6

    move v8, v1

    goto :goto_1c7

    :cond_1c6
    move v8, v2

    :goto_1c7
    iget-boolean v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileOverScrolling:Z

    if-eqz v9, :cond_1d3

    iget-boolean v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileOverScrolling:Z

    if-eqz v9, :cond_1d3

    if-eqz v7, :cond_1d3

    move v9, v1

    goto :goto_1d4

    :cond_1d3
    move v9, v2

    :goto_1d4
    if-nez v8, :cond_1d8

    if-eqz v9, :cond_1db

    :cond_1d8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    :cond_1db
    if-eqz v7, :cond_228

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x45bb8000  # 6000.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1f9

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v7, v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityX(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1f9

    move v7, v1

    goto :goto_1fa

    :cond_1f9
    move v7, v2

    :goto_1fa
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v8, v10, v8

    if-lez v8, :cond_212

    iget-object v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v8, v3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    cmpg-float v6, v8, v6

    if-gez v6, :cond_212

    move v7, v1

    :cond_212
    if-eqz v7, :cond_218

    invoke-direct {p0, v0, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->performOverScrollingReverseFling(FF)V

    goto :goto_224

    :cond_218
    if-eqz v9, :cond_221

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->isClickEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_221

    move v2, v1

    :cond_221
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->performSpringBack(Z)V

    :goto_224
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_23b

    :cond_228
    cmpl-float p1, v0, v6

    if-nez p1, :cond_230

    cmpl-float p1, v3, v6

    if-eqz p1, :cond_238

    :cond_230
    float-to-int p1, v0

    float-to-int v0, v3

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->fling(II)Z

    move-result p1

    if-nez p1, :cond_23b

    :cond_238
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    :cond_23b
    :goto_23b
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->resetScroll()V

    move v2, v5

    goto :goto_27f

    :cond_240
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    if-eqz p1, :cond_26a

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->isCOUIFinished()Z

    move-result p1

    if-nez p1, :cond_278

    :cond_26a
    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz p1, :cond_278

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    :cond_278
    if-eqz v3, :cond_27c

    or-int/lit8 v0, v0, 0x2

    :cond_27c
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_27f
    :goto_27f
    if-nez v2, :cond_28a

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez p1, :cond_28a

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_28a
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v1

    :cond_28e
    :goto_28e
    return v2
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_f

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    :cond_f
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_20

    if-nez p2, :cond_20

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e()Z

    :cond_20
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e()Z

    :cond_c
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .registers 10

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    const/4 p5, 0x0

    if-gez p3, :cond_7

    if-gtz p1, :cond_b

    :cond_7
    if-lez p3, :cond_c

    if-gez p1, :cond_c

    :cond_b
    move p1, p5

    :cond_c
    if-gez p4, :cond_10

    if-gtz p2, :cond_14

    :cond_10
    if-lez p4, :cond_15

    if-gez p2, :cond_15

    :cond_14
    move p2, p5

    :cond_15
    invoke-virtual {p0, p1, p2, p5, p5}, Landroidx/recyclerview/widget/COUIRecyclerView;->onOverScrolled(IIZZ)V

    return p5
.end method

.method public refresh()V
    .registers 7

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_11

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    const-string/jumbo v2, "style"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIRecyclerView:[I

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :cond_2d
    if-eqz v1, :cond_3a

    sget v0, Lcom/support/appcompat/R$styleable;->COUIRecyclerView_couiScrollbarThumbVertical:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3a
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbars:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_79

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4a

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g(Landroid/graphics/drawable/Drawable;)V

    goto :goto_79

    :cond_4a
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    iget-object v1, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_53

    goto :goto_79

    :cond_53
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_5d

    goto :goto_79

    :cond_5d
    iget-object v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/support/appcompat/R$color;->coui_scrollbar_color:I

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d(Landroid/graphics/drawable/StateListDrawable;II)V

    iget-object v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d(Landroid/graphics/drawable/StateListDrawable;II)V

    :cond_79
    :goto_79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_c
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollBy(II)V
    .registers 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_1f

    if-eqz v1, :cond_2c

    :cond_1f
    const/4 v2, 0x0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move p1, v2

    :goto_24
    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    move p2, v2

    :goto_28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_2c
    return-void
.end method

.method public scrollByInternal(IILandroid/view/MotionEvent;)Z
    .registers 22

    move-object/from16 v10, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_6c

    if-nez v8, :cond_15

    if-eqz v9, :cond_6c

    :cond_15
    iget-boolean v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_3e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-gez v0, :cond_21

    if-gtz v9, :cond_39

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-lez v0, :cond_29

    if-ltz v9, :cond_39

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-gez v0, :cond_31

    if-gtz v8, :cond_39

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-lez v0, :cond_3e

    if-gez v8, :cond_3e

    :cond_39
    move v0, v13

    move v1, v0

    move v2, v1

    move v3, v2

    goto :goto_51

    :cond_3e
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    aput v13, v0, v12

    invoke-virtual {v10, v8, v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    aget v0, v0, v12

    sub-int v2, v8, v1

    sub-int v3, v9, v0

    :goto_51
    sget-boolean v4, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz v4, :cond_65

    const-string/jumbo v4, "scrollByInternal: y: "

    const-string v5, " consumedY: "

    const-string v6, " unconsumedY: "

    invoke-static {v4, v9, v5, v0, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "COUIRecyclerView"

    invoke-static {v4, v3, v5}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_65
    move v14, v0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_72

    :cond_6c
    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_72
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_7d
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v7, v13

    aput v13, v7, v12

    iget-object v5, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    sub-int v1, v16, v1

    aget v0, v0, v12

    sub-int v0, v17, v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iget-object v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v4, v3, v13

    sub-int/2addr v2, v4

    iput v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    aget v4, v3, v12

    sub-int/2addr v2, v4

    iput v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    if-eqz v11, :cond_b6

    aget v2, v3, v13

    int-to-float v2, v2

    aget v3, v3, v12

    int-to-float v3, v3

    invoke-virtual {v11, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_b6
    iget-object v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v3, v2, v13

    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v5, v4, v13

    add-int/2addr v3, v5

    aput v3, v2, v13

    aget v3, v2, v12

    aget v4, v4, v12

    add-int/2addr v3, v4

    aput v3, v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a6

    if-eqz v11, :cond_1a6

    iget-boolean v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v2, :cond_1a6

    const/16 v2, 0x1002

    invoke-static {v11, v2}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-nez v2, :cond_e5

    const/16 v2, 0x2002

    invoke-static {v11, v2}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_1a6

    :cond_e5
    if-nez v0, :cond_e9

    if-eqz v1, :cond_eb

    :cond_e9
    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_eb
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-nez v2, :cond_109

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_109

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_109

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_109

    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_109
    if-nez v0, :cond_115

    if-nez v14, :cond_115

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_115

    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_115
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-nez v2, :cond_133

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_133

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_133

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_133

    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_133
    if-nez v1, :cond_13f

    if-nez v15, :cond_13f

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_13f

    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_13f
    iget-boolean v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFixScrollTypeForOverScrolling:Z

    if-eqz v2, :cond_151

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    if-nez v2, :cond_14f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_151

    :cond_14f
    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_151
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v0, v4, v2}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    int-to-float v0, v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v1, v3, v2}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v1

    int-to-float v1, v1

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-gez v4, :cond_173

    if-gtz v9, :cond_177

    :cond_173
    if-lez v4, :cond_182

    if-gez v9, :cond_182

    :cond_177
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v9, v3, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    int-to-float v0, v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_182
    move v2, v0

    if-gez v3, :cond_187

    if-gtz v8, :cond_18b

    :cond_187
    if-lez v3, :cond_197

    if-gez v8, :cond_197

    :cond_18b
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v8, v3, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v0

    int-to-float v0, v0

    iget v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    :cond_197
    if-nez v2, :cond_19b

    if-eqz v1, :cond_1a6

    :cond_19b
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v7, v8

    invoke-virtual/range {v0 .. v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    :cond_1a6
    if-nez v15, :cond_1aa

    if-eqz v14, :cond_1ad

    :cond_1aa
    invoke-virtual {v10, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_1ad
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_1b6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1b6
    if-nez v15, :cond_1bc

    if-eqz v14, :cond_1bb

    goto :goto_1bc

    :cond_1bb
    move v12, v13

    :cond_1bc
    :goto_1bc
    return v12
.end method

.method public setCustomTouchSlop(I)V
    .registers 4

    const-string/jumbo v0, "setTouchSlop: set touchSlop from "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    return-void
.end method

.method public setDispatchEventWhileOverScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileOverScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrollingThreshold(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDispatchEventVelocityThreshold:I

    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .registers 2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->c(Z)V

    :cond_7
    return-void
.end method

.method public setEnablePointerDownAction(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnablePointerDown:Z

    return-void
.end method

.method public setEnableVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableVibrator:Z

    return-void
.end method

.method public setFlingRatio(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    return-void
.end method

.method public setHorizontalFlingFriction(F)V
    .registers 2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a(F)V

    return-void
.end method

.method public setHorizontalItemAlign(I)V
    .registers 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->needLocate()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setIsUseNativeOverScroll(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    iput p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b:I

    iget-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_15
    return-void
.end method

.method public setIsUseNativeOverScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    goto :goto_d

    :cond_9
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    :goto_d
    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableOptimizedScroll:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileOverScrolling:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileSlowScrolling:Z

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const p1, 0x404ccccd  # 3.2f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->e(F)V

    goto :goto_1b

    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVerticalSpringOverTension:F

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->e(F)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setNativeOverScroller(Lcom/coui/appcompat/scroll/COUILocateOverScroller;)V
    .registers 3

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    if-eqz v0, :cond_8

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    :cond_8
    return-void
.end method

.method public setNewCOUIScrollDelegate(Lcom/coui/appcompat/scrollbar/COUIScrollBar;)V
    .registers 2

    if-eqz p1, :cond_8

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e()Z

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "setNewCOUIScrollDelegate must NOT be NULL."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOverScrollEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    return-void
.end method

.method public setOverScrollingFixed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFixScrollTypeForOverScrolling:Z

    return-void
.end method

.method setScrollState(I)V
    .registers 3

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScrollersInternal()V

    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_31

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUIRecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2a
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    goto :goto_37

    :cond_31
    :goto_31
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    :goto_37
    return-void
.end method

.method public setSlowScrollThreshold(I)V
    .registers 4

    const-string v0, "Slow scroll threshold set to "

    const-string v1, "COUIRecyclerView"

    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSlowScrollThreshold:I

    return-void
.end method

.method public setSpringBackFriction(F)V
    .registers 2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    return-void
.end method

.method public setSpringBackTension(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVerticalSpringOverTension:F

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->e(F)V

    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .registers 2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->l:Z

    return-void
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 5
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .registers 11
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .registers 9
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_18

    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_25

    move p1, v2

    :cond_25
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_2e

    move p2, v2

    :cond_2e
    if-nez p1, :cond_32

    if-eqz p2, :cond_55

    :cond_32
    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/high16 v1, -0x80000000

    if-eq p4, v1, :cond_3d

    if-lez p4, :cond_3b

    goto :goto_3d

    :cond_3b
    move v1, v2

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v1, v0

    :goto_3e
    if-eqz v1, :cond_52

    if-eqz p5, :cond_4c

    if-eqz p1, :cond_45

    move v2, v0

    :cond_45
    if-eqz p2, :cond_49

    or-int/lit8 v2, v2, 0x2

    :cond_49
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_4c
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_55

    :cond_52
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollBy(II)V

    :cond_55
    :goto_55
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public stopScroll()V
    .registers 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public superComputeVerticalScrollExtent()I
    .registers 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public superComputeVerticalScrollOffset()I
    .registers 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public superComputeVerticalScrollRange()I
    .registers 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method public superOnTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
