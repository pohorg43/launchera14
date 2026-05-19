.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPendingCardRecyclerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PendingCardRecyclerView.kt\ncom/android/launcher3/popup/pendingcard/PendingCardRecyclerView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1384:1\n1#2:1385\n342#3:1386\n342#3:1387\n*S KotlinDebug\n*F\n+ 1 PendingCardRecyclerView.kt\ncom/android/launcher3/popup/pendingcard/PendingCardRecyclerView\n*L\n934#1:1386\n938#1:1387\n*E\n"
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA_MAX_VALUE:I = 0xff

.field private static final BACKGROUND_ALPHA_OUT_DELAY:J = 0xc8L

.field private static final BACKGROUND_MASK_INTI_ALPHA:I = 0x33

.field private static final CARD_BACKGROUND_ALPHA_IN_DURATION:J = 0x190L

.field private static final CARD_BACKGROUND_ALPHA_OUT_DURATION:J = 0x190L

.field private static final CARD_RESTORE_DURATION:I = 0xfa

.field private static final CARD_SETTLED_THRESHOLD:F = 0.5f

.field public static final CLIP_ARRAY_BOTTOM_INDEX:I = 0x3

.field public static final CLIP_ARRAY_DIMENSION:I = 0x6

.field private static final CLIP_ARRAY_RADIUS_X_INDEX:I = 0x4

.field private static final CLIP_ARRAY_RADIUS_Y_INDEX:I = 0x5

.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;

.field private static final DOWN:I = 0x1

.field private static final GUIDE_SHOW_DELAY:J = 0x2bcL

.field private static final INDICATOR_ALPHA_IN_DURATION:J = 0x15eL

.field private static final INDICATOR_ALPHA_IN_START_OFFSET:J = 0x96L

.field private static final INDICATOR_ALPHA_OUT_DURATION:J = 0x64L

.field private static final INDICATOR_ROTATION_DEGREE:F = 90.0f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MILLISECONDS_PER_SECOND:F = 1000.0f

.field private static final MIN_ALPHA:I = 0x0

.field private static final PIN_ALPHA_IN_ANIM_DURATION:J = 0x64L

.field private static final PIN_ALPHA_OUT_ANIM_DURATION:J = 0x64L

.field private static final PIN_MIN_SCALE_VALUE:F = 0.9f

.field private static final PIN_SCALE_ANIM_DURATION:J = 0xe6L

.field private static final REDIRECT_TO_CAR_STORE_DELAY:J = 0x32L

.field private static final SLIDE_DOWN_GUIDE_ROTATION_DEGREE:F = 180.0f

.field private static final TAG:Ljava/lang/String; = "PendingCardRecyclerView"

.field private static final UP:I = -0x1

.field private static final VALUE_HALF_1:F = 0.5f


# instance fields
.field private mCardBounds:Landroid/graphics/RectF;

.field private mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

.field private mClipPathRect:Landroid/graphics/RectF;

.field private mCompletelyVisibleView:Landroid/view/View;

.field private mCurPosition:I

.field private mCurScrollState:I

.field private final mEndClipArea:[F

.field private mEvaluator:Landroid/animation/FloatArrayEvaluator;

.field private mFirstCardBounds:Landroid/graphics/RectF;

.field private mFirstCardSize:Landroid/graphics/Point;

.field private mFirstVisibleView:Landroid/view/View;

.field private mFirstVisualCardOldOffset:F

.field private final mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

.field private mFourSpanXBg:Landroid/widget/ImageView;

.field private mFourSpanXBgAlpha:I

.field private mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

.field private mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

.field private mHasInitLayout:Z

.field private mHorizontalSizeChangePosition:I

.field private mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

.field private mInvalidateStart:Z

.field private mIsCardChange:Z

.field private mIsExistSpanFourCard:Z

.field private mIsFourSpanXBgAnimIn:Z

.field private mIsIndicatorAlphaOut:Z

.field private mIsNeedShowGuide:Z

.field private mIsOverSlide:Z

.field private mIsPinAnimOut:Z

.field private mIsReadingClose:Z

.field private mIsRedirectedToCardStore:Z

.field private final mIsRtl:Z

.field private mIsStartFakeAlphaAnim:Z

.field private mIsTwoSpanXBgAnimIn:Z

.field private mLastTouchY:I

.field private mLastVisibleView:Landroid/view/View;

.field private mLastVisualCardOldOffset:F

.field private final mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

.field private mLongPressGuide:Lcom/android/launcher/guide/PendingCardGuide;

.field private final mMaxFlingVelocity:F

.field private mNextCardSize:Landroid/graphics/Point;

.field private final mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

.field private final mOutPath:Landroid/graphics/Path;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

.field private mPinAlphaAnim:Landroid/animation/ValueAnimator;

.field private final mPinOffsetY:I

.field private mPinScaleAnim:Landroid/animation/ValueAnimator;

.field private mPinTip:Lcom/android/launcher/guide/PendingCardGuide;

.field public mPopupContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

.field private mProhibitOverSlide:Z

.field private mPullDown:Z

.field private mPullUp:Z

.field private mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

.field private mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

.field private mScrollPointerId:I

.field private mScrolled:I

.field private mSlideUpGuide:Lcom/android/launcher/guide/PendingCardGuide;

.field private mSnapHelper:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

.field private final mStartClipArea:[F

.field private mStartY:F

.field private mTotalScrollDistance:I

.field private final mTouchSlop:I

.field private mTwoSpanXBgAlpha:I

.field private mTwoSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

.field private mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityY:F

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mVerticalSizeChangePosition:I

.field private final mVerticalSpaceCompensate:I

.field private final mVisualAreaRadius:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTouchSlop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070cd4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070cd5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070cd0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x6

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cd3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mMaxFlingVelocity:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    new-array p1, p1, [F

    invoke-direct {v1, p1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEvaluator:Landroid/animation/FloatArrayEvaluator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mInvalidateStart:Z

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/popup/pendingcard/d;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/c;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/popup/pendingcard/c;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTouchSlop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cd4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f070cd5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cd0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x6

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070cd3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x447a0000  # 1000.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mMaxFlingVelocity:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/animation/FloatArrayEvaluator;

    new-array p1, p1, [F

    invoke-direct {v0, p1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEvaluator:Landroid/animation/FloatArrayEvaluator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mInvalidateStart:Z

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/d;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/popup/pendingcard/d;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/c;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/popup/pendingcard/c;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTouchSlop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cd4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const p3, 0x7f070cd5

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cd0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x6

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070cd3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x447a0000  # 1000.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mMaxFlingVelocity:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    sget-object p3, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardBounds:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    new-instance p3, Landroid/animation/FloatArrayEvaluator;

    new-array p1, p1, [F

    invoke-direct {p3, p1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    iput-object p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEvaluator:Landroid/animation/FloatArrayEvaluator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mInvalidateStart:Z

    new-instance p1, Landroidx/core/app/a;

    invoke-direct {p1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroidx/core/widget/a;

    invoke-direct {p1, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition$lambda$41$lambda$40(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMCardBounds$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getMCardContainer$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

.method public static final synthetic access$getMCardTransformer$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    return-object p0
.end method

.method public static final synthetic access$getMFirstVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardOldOffset:F

    return p0
.end method

.method public static final synthetic access$getMHorizontalSizeChangePosition$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    return p0
.end method

.method public static final synthetic access$getMIsOverSlide$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    return p0
.end method

.method public static final synthetic access$getMIsRedirectedToCardStore$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    return p0
.end method

.method public static final synthetic access$getMIsStartFakeAlphaAnim$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsStartFakeAlphaAnim:Z

    return p0
.end method

.method public static final synthetic access$getMLastVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardOldOffset:F

    return p0
.end method

.method public static final synthetic access$getMTotalScrollDistance$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTotalScrollDistance:I

    return p0
.end method

.method public static final synthetic access$getMVisualAreaRadius$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    return p0
.end method

.method public static final synthetic access$getPinAndIndicatorOffsetX(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getPinAndIndicatorOffsetX(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$locateIndicatorX(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locateIndicatorX(I)V

    return-void
.end method

.method public static final synthetic access$locateIndicatorY(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locateIndicatorY()V

    return-void
.end method

.method public static final synthetic access$locatePinY(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locatePinY()V

    return-void
.end method

.method public static final synthetic access$onCardChanged(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->onCardChanged()V

    return-void
.end method

.method public static final synthetic access$onCardSettled(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->onCardSettled(I)V

    return-void
.end method

.method public static final synthetic access$setFourSpanXBgAlpha(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    return-void
.end method

.method public static final synthetic access$setMFirstVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardOldOffset:F

    return-void
.end method

.method public static final synthetic access$setMFourSpanXBgAlpha$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlpha:I

    return-void
.end method

.method public static final synthetic access$setMIsFourSpanXBgAnimIn$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    return-void
.end method

.method public static final synthetic access$setMIsRedirectedToCardStore$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    return-void
.end method

.method public static final synthetic access$setMIsStartFakeAlphaAnim$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsStartFakeAlphaAnim:Z

    return-void
.end method

.method public static final synthetic access$setMLastVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardOldOffset:F

    return-void
.end method

.method public static final synthetic access$setMScrolled$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrolled:I

    return-void
.end method

.method public static final synthetic access$setMTotalScrollDistance$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTotalScrollDistance:I

    return-void
.end method

.method private final animFourSpanXBgAlphaByPosition(Z)V
    .registers 9

    const-wide/16 v0, 0x190

    iget-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsStartFakeAlphaAnim:Z

    if-nez v2, :cond_76

    iget-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsReadingClose:Z

    if-eqz v2, :cond_b

    goto :goto_76

    :cond_b
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1f

    new-instance v4, Lh4/j;

    iget v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlpha:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_37

    :cond_1f
    iget-boolean v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    if-eqz v4, :cond_24

    return-void

    :cond_24
    iput-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    new-instance v4, Lh4/j;

    iget v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlpha:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_37
    iget-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3e
    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, v4, Lh4/j;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    aput v6, v5, v3

    iget-object v3, v4, Lh4/j;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/folder/recommend/view/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/view/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;-><init>(ZLcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    :cond_76
    :goto_76
    return-void
.end method

.method private static final animFourSpanXBgAlphaByPosition$lambda$41$lambda$40(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlpha:I

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    if-nez v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    :cond_1f
    return-void
.end method

.method private final animTwoSpanXBgAlphaByPosition(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsReadingClose:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x190

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    iput-boolean v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    new-instance p1, Lh4/j;

    iget v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlpha:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p1, v4, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_35

    :cond_1d
    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    if-eqz p1, :cond_22

    return-void

    :cond_22
    iput-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    new-instance p1, Lh4/j;

    iget v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlpha:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p1, v4, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_35
    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3c
    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v4, v3

    iget-object p1, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aput p1, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private static final animTwoSpanXBgAlphaByPosition$lambda$43$lambda$42(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlpha:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable$lambda$2(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim$lambda$30$lambda$29(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final calculateInitStartAndEndValues(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 12

    iget-object p1, p1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getCardList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    if-eqz p1, :cond_123

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardSize:Landroid/graphics/Point;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt p1, v5, :cond_8e

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object p1

    sget-object v7, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v7, p1

    if-eq p1, v4, :cond_82

    if-eq p1, v5, :cond_77

    if-eq p1, v3, :cond_6a

    if-eq p1, v2, :cond_69

    move p1, v6

    move v7, p1

    goto :goto_94

    :cond_69
    return-void

    :cond_6a
    iget p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    goto :goto_94

    :cond_77
    iget p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float p1, p1

    int-to-float v7, v5

    mul-float/2addr p1, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    goto :goto_94

    :cond_82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    mul-int/2addr v7, v5

    int-to-float v7, v7

    sub-float v7, p1, v7

    goto :goto_93

    :cond_8e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float v7, p1

    :goto_93
    move p1, v6

    :goto_94
    iget-object v8, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    if-eq v8, v4, :cond_d3

    if-eq v8, v5, :cond_c8

    if-eq v8, v3, :cond_b1

    if-eq v8, v2, :cond_b0

    move v1, v6

    move v8, v1

    goto :goto_e8

    :cond_b0
    return-void

    :cond_b1
    iget-boolean v8, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v8, :cond_b7

    move v8, v6

    goto :goto_bd

    :cond_b7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    :goto_bd
    iget-boolean v9, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v9, :cond_c2

    goto :goto_e8

    :cond_c2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    :goto_c6
    int-to-float v1, v1

    goto :goto_e8

    :cond_c8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    const/high16 v9, 0x40000000  # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v1, v8

    goto :goto_e8

    :cond_d3
    iget-boolean v8, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v8, :cond_de

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    goto :goto_df

    :cond_de
    move v8, v6

    :goto_df
    iget-boolean v9, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v9, :cond_e8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    goto :goto_c6

    :cond_e8
    :goto_e8
    iget-object v9, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    aput v6, v9, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    aput v6, v9, v5

    iget v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    aput v5, v9, v2

    const/4 v2, 0x5

    aput v5, v9, v2

    aput p1, v9, v4

    aput v7, v9, v3

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    array-length p1, p1

    :goto_101
    if-ge v0, p1, :cond_10e

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    iget-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    aget v5, v5, v0

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    :cond_10e
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    iput v8, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    aget v2, v0, v4

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    aget v0, v0, v3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_123
    return-void
.end method

.method private final canOverPullDown()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    :goto_b
    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    const/4 v2, 0x0

    if-nez v1, :cond_38

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    if-nez v0, :cond_25

    goto :goto_38

    :cond_25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_34

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    goto :goto_35

    :cond_34
    move p0, v2

    :goto_35
    if-ltz p0, :cond_38

    move v2, v1

    :cond_38
    :goto_38
    return v2
.end method

.method private final canOverPullUp()Z
    .registers 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    goto :goto_1a

    :cond_18
    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    :goto_1a
    iget v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    if-ne v4, v0, :cond_48

    if-lt v3, v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    :cond_28
    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    sub-int/2addr v3, p0

    if-gt v0, v3, :cond_48

    move v1, v2

    :cond_48
    return v1
.end method

.method private final cardRestoreAnim()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    aput v4, v3, v2

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/anim/q;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/anim/q;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3f
    return-void
.end method

.method private static final cardRestoreAnim$lambda$26$lambda$25(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_30

    :cond_1a
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    :cond_30
    :goto_30
    return-void
.end method

.method private final closeGuides()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSlideUpGuide:Lcom/android/launcher/guide/PendingCardGuide;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinTip:Lcom/android/launcher/guide/PendingCardGuide;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLongPressGuide:Lcom/android/launcher/guide/PendingCardGuide;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :cond_18
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition$lambda$43$lambda$42(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim$lambda$28$lambda$27(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim$lambda$36$lambda$35(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic findCompletelyVisibleView$default(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;ILjava/lang/Object;)Landroid/view/View;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCompletelyVisibleView(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable$lambda$1(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void
.end method

.method private final getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getCardList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method private final getPinAndIndicatorOffsetX(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    if-eqz v0, :cond_20

    if-eqz p1, :cond_1e

    iget-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    sub-float/2addr p0, p1

    goto :goto_43

    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_41

    :cond_1e
    const/4 p0, 0x0

    goto :goto_44

    :cond_20
    if-nez p2, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    :cond_2d
    const-string/jumbo p0, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter.PendingCardHolder"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getCardWidth()I

    move-result p1

    :goto_41
    int-to-float p1, p1

    add-float/2addr p0, p1

    :goto_43
    float-to-int p0, p0

    :goto_44
    return p0
.end method

.method private final getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic h(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim$lambda$32$lambda$31(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final hasEnterScrollState()Z
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-eq v0, v2, :cond_26

    :cond_e
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-eq v0, v2, :cond_26

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getCardCount()I

    move-result p0

    if-le p0, v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method public static synthetic i(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->cardRestoreAnim$lambda$26$lambda$25(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final indicatorAlphaAnim(Z)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_53

    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, v2

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/keyguardservice/b;

    invoke-direct {v1, p1}, Lcom/android/keyguardservice/b;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$indicatorAlphaAnim$1$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$indicatorAlphaAnim$1$2;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    goto :goto_9a

    :cond_53
    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    if-eqz p1, :cond_58

    return-void

    :cond_58
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_72

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_72
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, v2

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher/download/s;

    invoke-direct {v2, p1}, Lcom/android/launcher/download/s;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator2;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    :cond_9a
    :goto_9a
    return-void
.end method

.method private static final indicatorAlphaAnim$lambda$28$lambda$27(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$indicator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static final indicatorAlphaAnim$lambda$30$lambda$29(Lcom/coui/appcompat/indicator/COUIPageIndicator2;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$indicator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final isCardSizeChanged(IZ)Z
    .registers 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_49

    add-int/lit8 v4, p1, 0x1

    if-ge v4, v1, :cond_49

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    if-eqz p2, :cond_44

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    if-ne p1, p0, :cond_49

    goto :goto_48

    :cond_44
    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    if-ne p1, p0, :cond_49

    :goto_48
    move v3, v0

    :cond_49
    return v3
.end method

.method private final isInActiveArea(Landroid/view/MotionEvent;)Z
    .registers 3

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private final isNeedShowGuide()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-nez p0, :cond_1a

    if-eqz v0, :cond_1a

    instance-of p0, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method private final isNeedStartAnimPinAndIndicator()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisibleView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    if-ne v0, v2, :cond_1f

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-eq p0, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method private final isShowFourSpanXBgForStartDrag(I)Z
    .registers 5

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_19

    if-lt p1, v0, :cond_19

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_33

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-ne p1, v0, :cond_33

    :cond_19
    iget p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    if-ne p1, v2, :cond_32

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardSize:Landroid/graphics/Point;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    if-ne p1, p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :cond_33
    :goto_33
    return v1
.end method

.method private final isShowingGuides()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSlideUpGuide:Lcom/android/launcher/guide/PendingCardGuide;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinTip:Lcom/android/launcher/guide/PendingCardGuide;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    if-nez v0, :cond_31

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLongPressGuide:Lcom/android/launcher/guide/PendingCardGuide;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->isShowing()Z

    move-result p0

    if-ne p0, v1, :cond_2c

    move p0, v1

    goto :goto_2d

    :cond_2c
    move p0, v2

    :goto_2d
    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :cond_31
    :goto_31
    return v1
.end method

.method public static synthetic j(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->redirectToCardStore$lambda$13(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void
.end method

.method public static synthetic k(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim$lambda$38$lambda$37(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic l(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim$lambda$34$lambda$33(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final locateIndicatorX(I)V
    .registers 5

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v0

    if-eqz v0, :cond_46

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    const v2, 0x7f070cc9

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v1, p0

    goto :goto_43

    :cond_34
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    add-float v1, p1, p0

    :goto_43
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_46
    return-void
.end method

.method private final locateIndicatorY()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v3

    if-eqz v3, :cond_6f

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-boolean v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_4a

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_33

    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_33
    if-eqz v6, :cond_37

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_37
    int-to-float p0, v5

    sub-float/2addr v1, p0

    sub-float/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x42b40000  # 90.0f

    invoke-virtual {v3, p0}, Landroid/view/View;->setRotation(F)V

    goto :goto_6f

    :cond_4a
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_59

    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_59
    if-eqz v6, :cond_5d

    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_5d
    int-to-float p0, v5

    sub-float/2addr v1, p0

    sub-float/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr p0, v0

    invoke-virtual {v3, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, -0x3d4c0000  # -90.0f

    invoke-virtual {v3, p0}, Landroid/view/View;->setRotation(F)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private final locatePin(I)V
    .registers 6

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    const v3, 0x7f070cce

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    neg-float p1, p1

    goto :goto_2f

    :cond_23
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    :goto_2f
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private final locatePinY()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private static final mFourSpanXBgAnimOutRunnable$lambda$1(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    return-void
.end method

.method private static final mTwoSpanXBgAnimOutRunnable$lambda$2(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    return-void
.end method

.method private final onCardChanged()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    const-string/jumbo v1, "onCardChanged: "

    const-string v2, "PendingCardRecyclerView"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsCardChange:Z

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isNeedStartAnimPinAndIndicator()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim(Z)V

    :cond_20
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isNeedStartAnimPinAndIndicator()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim(Z)V

    :cond_29
    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_63

    if-ne v3, v0, :cond_63

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v3, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-ne v0, v3, :cond_5c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_43

    const-string p0, "animFourSpanXBgAlphaByPosition reject show four spanX bg "

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :cond_43
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    goto :goto_96

    :cond_5c
    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    goto :goto_96

    :cond_63
    if-eq v3, v5, :cond_96

    add-int/2addr v3, v1

    if-ne v3, v0, :cond_96

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-ne v0, v2, :cond_83

    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsStartFakeAlphaAnim:Z

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_77
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_93

    :cond_83
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    :goto_93
    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    :cond_96
    :goto_96
    return-void
.end method

.method private final onCardSettled(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsCardChange:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "onCardSettled: "

    const-string v1, "PendingCardRecyclerView"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsCardChange:Z

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateStateOnScrollEnd()V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim(Z)V

    :cond_25
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    if-eqz v0, :cond_2c

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim(Z)V

    :cond_2c
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_3e

    iget v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    if-eq v2, v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    if-eqz v0, :cond_3e

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    :cond_3e
    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTotalScrollDistance:I

    return-void
.end method

.method private final pinAlphaAndScaleAnim(Z)V
    .registers 11

    const-wide/16 v0, 0xe6

    const-wide/16 v2, 0x64

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_6f

    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    if-eqz p1, :cond_d7

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1d
    iget-object v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_24

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_24
    new-array v7, v4, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v8

    aput v8, v7, v6

    const/high16 v8, 0x3f800000  # 1.0f

    aput v8, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v2, p1}, Lcom/android/launcher/pageindicators/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v4, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v3

    aput v3, v2, v6

    aput v8, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/keyguardservice/b;

    invoke-direct {v0, p1}, Lcom/android/keyguardservice/b;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    goto :goto_d7

    :cond_6f
    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    if-eqz p1, :cond_74

    return-void

    :cond_74
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7b
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinScaleAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_82
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object p1

    new-array v7, v4, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v8

    aput v8, v7, v6

    const/4 v8, 0x0

    aput v8, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher/download/s;

    invoke-direct {v2, p1}, Lcom/android/launcher/download/s;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v4, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v3

    aput v3, v2, v6

    const v3, 0x3f666666  # 0.9f

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v0, p1}, Lcom/android/launcher/batchdrag/a;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    :cond_d7
    :goto_d7
    return-void
.end method

.method private static final pinAlphaAndScaleAnim$lambda$32$lambda$31(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private static final pinAlphaAndScaleAnim$lambda$34$lambda$33(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private static final pinAlphaAndScaleAnim$lambda$36$lambda$35(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private static final pinAlphaAndScaleAnim$lambda$38$lambda$37(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private final redirectToCardStore()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/c1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final redirectToCardStore$lambda$13(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->startCardStoreActivity(Lcom/android/launcher/Launcher;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    return-void
.end method

.method private final setFourSpanXBgAlpha(I)V
    .registers 8

    int-to-float v0, p1

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000  # 255.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    if-nez p0, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_15
    return-void
.end method

.method private final setTwoOrFourSpanXBgAlpha()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mInvalidateStart:Z

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->onCardSettled(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mInvalidateStart:Z

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0xff

    if-ge v1, v2, :cond_28

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateClipPath(FZ)[F

    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    goto :goto_2e

    :cond_28
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private final updateCardSizeChangePosition()V
    .registers 10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v3, :cond_bf

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_bf

    const/4 v4, 0x0

    add-int/lit8 v2, v2, -0x1

    :goto_21
    if-ge v4, v2, :cond_bf

    invoke-virtual {v0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getItemViewType(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_bb

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getItemViewType(I)I

    move-result v7

    if-ne v7, v6, :cond_34

    goto/16 :goto_bb

    :cond_34
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v6}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    const/4 v7, 0x0

    if-eqz v6, :cond_52

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_53

    :cond_52
    move-object v6, v7

    :goto_53
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v8}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    if-eqz v8, :cond_70

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_71

    :cond_70
    move-object v8, v7

    :goto_71
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    iput v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    :cond_79
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v5}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    if-eqz v5, :cond_96

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_97

    :cond_96
    move-object v5, v7

    :goto_97
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v6}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    if-eqz v6, :cond_b3

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b3
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bb

    iput v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    :cond_bb
    :goto_bb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_21

    :cond_bf
    return-void
.end method

.method public static synthetic updateClipPath$default(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;FZILjava/lang/Object;)[F
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateClipPath(FZ)[F

    move-result-object p0

    return-object p0
.end method

.method private final updateHorizontalVisualEdge()Lh4/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh4/j<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_53

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 p0, 0x4

    if-eq v0, p0, :cond_20

    move p0, v2

    goto :goto_71

    :cond_20
    const/4 p0, 0x0

    return-object p0

    :cond_22
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v0, :cond_27

    goto :goto_33

    :cond_27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    move v2, v0

    :goto_33
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v0, :cond_3c

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_40

    :cond_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    :goto_40
    int-to-float p0, p0

    goto :goto_71

    :cond_42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float v2, v0, v1

    int-to-float p0, p0

    add-float/2addr p0, v2

    goto :goto_71

    :cond_53
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v0, :cond_63

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    move v2, v0

    :cond_63
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    goto :goto_40

    :cond_6c
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_40

    :goto_71
    new-instance v0, Lh4/j;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final updateStateOnScrollEnd()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getPinAndIndicatorOffsetX(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locatePin(I)V

    :cond_e
    return-void
.end method

.method private final updateVerticalVisualEdge()Lh4/j;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh4/j<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3c

    if-eq v0, v2, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 p0, 0x4

    if-eq v0, p0, :cond_20

    move p0, v3

    goto :goto_47

    :cond_20
    const/4 p0, 0x0

    return-object p0

    :cond_22
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float p0, p0

    sub-float p0, v0, p0

    goto :goto_47

    :cond_30
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float v0, v0

    int-to-float v1, v2

    mul-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    goto :goto_47

    :cond_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    mul-int/2addr p0, v2

    int-to-float p0, p0

    sub-float/2addr v0, p0

    move p0, v0

    :goto_47
    new-instance v0, Lh4/j;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final updateVisualArea([F[F)V
    .registers 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    aget v4, p1, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    array-length p1, p1

    :goto_f
    if-ge v1, p1, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    aget v2, p2, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    return-void
.end method


# virtual methods
.method public final calculateStartAndEndValues(I)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cd3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x6

    new-array v4, v3, [F

    new-array v5, v3, [F

    const/4 v6, 0x1

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isCardSizeChanged(IZ)Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateVerticalVisualEdge()Lh4/j;

    move-result-object v8

    if-nez v8, :cond_21

    return-void

    :cond_21
    iget-object v9, v8, Lh4/j;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    iget-object v8, v8, Lh4/j;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateHorizontalVisualEdge()Lh4/j;

    move-result-object v10

    if-nez v10, :cond_38

    return-void

    :cond_38
    iget-object v11, v10, Lh4/j;->a:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    iget-object v10, v10, Lh4/j;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v12

    const-string/jumbo v13, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {v12}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getData()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v1, v14, :cond_6a

    if-eq v1, v13, :cond_6a

    goto :goto_70

    :cond_6a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v8, v1

    move v9, v12

    :goto_70
    new-array v1, v3, [F

    const/4 v15, 0x0

    aput v11, v1, v15

    const/16 v16, 0x2

    aput v10, v1, v16

    aput v2, v1, v13

    const/16 v17, 0x5

    aput v2, v1, v17

    aput v9, v1, v6

    aput v8, v1, v14

    new-array v8, v3, [F

    aput v11, v8, v15

    aput v10, v8, v16

    aput v2, v8, v13

    aput v2, v8, v17

    aput v12, v8, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v8, v14

    move v2, v15

    :goto_97
    if-ge v2, v3, :cond_a0

    aget v6, v1, v2

    aput v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_a0
    :goto_a0
    if-ge v15, v3, :cond_b0

    if-eqz v7, :cond_a9

    aget v2, v8, v15

    aput v2, v5, v15

    goto :goto_ad

    :cond_a9
    aget v2, v1, v15

    aput v2, v5, v15

    :goto_ad
    add-int/lit8 v15, v15, 0x1

    goto :goto_a0

    :cond_b0
    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateVisualArea([F[F)V

    return-void
.end method

.method public final changeOverSlideState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->setIsOverSlide(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->setOverSlideAndScrollEnabled(Z)V

    :cond_e
    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPullUp:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPullDown:Z

    if-eqz v0, :cond_31

    :cond_18
    if-nez p1, :cond_31

    iget p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2e

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    goto :goto_31

    :cond_2e
    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    :cond_31
    :goto_31
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_de

    const/4 v4, 0x0

    if-eq v0, v3, :cond_95

    const/4 v5, 0x2

    if-eq v0, v5, :cond_28

    goto/16 :goto_134

    :cond_28
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_32

    return v2

    :cond_32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartY:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastTouchY:I

    sub-int v5, v0, v5

    if-lez v5, :cond_48

    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    goto :goto_4a

    :cond_48
    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    :goto_4a
    iput-object v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTouchSlop:I

    if-le v5, v6, :cond_58

    iget-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    :cond_58
    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastTouchY:I

    cmpl-float v0, v1, v4

    if-lez v0, :cond_66

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->canOverPullDown()Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v3

    goto :goto_67

    :cond_66
    move v0, v2

    :goto_67
    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPullDown:Z

    cmpg-float v0, v1, v4

    if-gez v0, :cond_74

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->canOverPullUp()Z

    move-result v0

    if-eqz v0, :cond_74

    move v2, v3

    :cond_74
    iput-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPullUp:Z

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPullDown:Z

    if-nez v0, :cond_7c

    if-eqz v2, :cond_134

    :cond_7c
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mProhibitOverSlide:Z

    if-nez v0, :cond_134

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_134

    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->changeOverSlideState(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoOrFourSpanXBgAlpha()V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    if-eqz v0, :cond_134

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->viewIsOverSlide(F)V

    goto/16 :goto_134

    :cond_95
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9e

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mMaxFlingVelocity:F

    invoke-virtual {v0, v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_9e
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_b5

    :cond_b4
    move v0, v4

    :goto_b5
    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityY:F

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_c2

    move v2, v3

    :cond_c2
    if-nez v2, :cond_cb

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSnapHelper:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    if-eqz v0, :cond_cb

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->snapToTargetExistingView()V

    :cond_cb
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    if-eqz v0, :cond_d2

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->redirectToCardStore()V

    :cond_d2
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    if-eqz v0, :cond_134

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->overScrollRecover()V

    goto :goto_134

    :cond_de
    iput-boolean v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mInvalidateStart:Z

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mProhibitOverSlide:Z

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isShowingGuides()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->closeGuides()V

    :cond_ed
    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isInActiveArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_102

    goto :goto_139

    :cond_102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartY:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_134

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->reset()V

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastTouchY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollPointerId:I

    :cond_134
    :goto_134
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_139
    :goto_139
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->drawTwoSpanXBackground(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_23

    :cond_20
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    :goto_23
    return-void
.end method

.method public final drawTwoSpanXBackground(Landroid/graphics/Canvas;)V
    .registers 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    if-eqz v0, :cond_1f

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    if-lez v1, :cond_3d

    iget-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    if-eqz v1, :cond_4d

    iget-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPullDown:Z

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4d

    :cond_3d
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardBounds:Landroid/graphics/RectF;

    goto :goto_46

    :cond_44
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    :goto_46
    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4d
    return-void
.end method

.method public final findCenterView()Landroid/view/View;
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findCompletelyVisibleView(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;)Landroid/view/View;
    .registers 10

    const-string/jumbo v0, "scrollDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    :goto_1d
    if-ge v3, v4, :cond_65

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_62

    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_57

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4c

    const/4 v7, 0x3

    if-eq v6, v7, :cond_37

    goto :goto_62

    :cond_37
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ne v6, v1, :cond_62

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ne v6, v2, :cond_62

    return-object v5

    :cond_4c
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ne v6, v1, :cond_62

    return-object v5

    :cond_57
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ne v6, v2, :cond_62

    return-object v5

    :cond_62
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_65
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findFirstVisibleView()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findLastVisibleView()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getCardCenterX()F
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    goto :goto_23

    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    :goto_23
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_43

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3b

    goto :goto_4a

    :cond_3b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float v0, p0, v1

    goto :goto_4a

    :cond_43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float v0, p0, v0

    :goto_4a
    return v0
.end method

.method public final getClipPathRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getCurCard()Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter.PendingCardHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public final getCurOverSlideView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_b

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final getMCompletelyVisibleView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCompletelyVisibleView:Landroid/view/View;

    return-object p0
.end method

.method public final getMFirstVisibleView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisibleView:Landroid/view/View;

    return-object p0
.end method

.method public final getMFirstVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    return-object p0
.end method

.method public final getMHasInitLayout()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    return p0
.end method

.method public final getMLastVisibleView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisibleView:Landroid/view/View;

    return-object p0
.end method

.method public final getMLastVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    return-object p0
.end method

.method public final getMLayoutManager()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    return-object p0
.end method

.method public final getMPopupContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPopupContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string/jumbo p0, "mPopupContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPendingCardTouchHandler()Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    return-object p0
.end method

.method public final getScrolledDirection()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    return-object p0
.end method

.method public final getVelocity()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityY:F

    return p0
.end method

.method public final init(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 6

    const-string v0, "cardViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "popupContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setMPopupContainer(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of v0, p2, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_24

    check-cast p2, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    goto :goto_25

    :cond_24
    const/4 p2, 0x0

    :goto_25
    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setMLayoutManager(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getPendingCardTouchHandler()Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    invoke-static {p2}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    new-instance p2, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSnapHelper:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getMaxCardSize()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_77

    move p2, v0

    goto :goto_78

    :cond_77
    move p2, p1

    :goto_78
    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsExistSpanFourCard:Z

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMPopupContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->addClosePopupContainerListener(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;)V

    sget-object p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {p2}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p2

    const/16 v1, 0x33

    if-eqz p2, :cond_95

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a0

    :cond_95
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_a0
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRVBackground()Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$init$viewOutlineProvider$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$init$viewOutlineProvider$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateCardSizeChangePosition()V

    return-void
.end method

.method public final initLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    move-object v4, v0

    goto :goto_12

    :cond_11
    move-object v4, v2

    :goto_12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->calculateInitStartAndEndValues(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateClipPath(FZ)[F

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->reMarginShortCut$default(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;[FZZILjava/lang/Object;)V

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getPinAndIndicatorOffsetX(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locatePin(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locateIndicatorX(I)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locateIndicatorY()V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->setCurrentPosition(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    return-void
.end method

.method public final isEventOverActivityArea(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const-string v0, "dl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_27

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public final isPressAnimStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->isPressAnimStarted()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public onDragEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public onPopupContainerClosed()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_20

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_19

    goto :goto_1d

    :cond_19
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_20
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->closeGuides()V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurPosition:I

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5c

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5c

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, -0x1

    if-eq v3, v2, :cond_36

    if-eq v3, v1, :cond_2f

    const/4 v1, 0x3

    if-ne v3, v1, :cond_29

    move v1, v4

    goto :goto_3c

    :cond_29
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_2f
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v1

    goto :goto_3c

    :cond_36
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v1

    :goto_3c
    if-eq v1, v4, :cond_4d

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    if-eq v1, v2, :cond_71

    if-ne p1, v2, :cond_71

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    const/4 v3, 0x0

    if-nez v1, :cond_ac

    if-ne p1, v2, :cond_ac

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->interruptPressAnim()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_89

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    if-eqz v2, :cond_89

    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->setInitialScale(Landroid/view/View;)V

    :cond_89
    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isShowFourSpanXBgForStartDrag(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    goto :goto_ac

    :cond_9e
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    :cond_ac
    :goto_ac
    if-nez p1, :cond_ec

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    if-eq v0, p1, :cond_ec

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateStateOnScrollEnd()V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    if-eqz v0, :cond_da

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_da
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    if-eqz v0, :cond_e9

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsOverSlide:Z

    if-nez v0, :cond_e9

    iput-boolean v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    iput v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlpha:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    :cond_e9
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->cardRestoreAnim()V

    :cond_ec
    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    return-void
.end method

.method public final resetBeforeClosePopupView()Z
    .registers 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_29

    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsReadingClose:Z

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1f
    invoke-direct {p0, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1
.end method

.method public final setMCompletelyVisibleView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCompletelyVisibleView:Landroid/view/View;

    return-void
.end method

.method public final setMFirstVisibleView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisibleView:Landroid/view/View;

    return-void
.end method

.method public final setMHasInitLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    return-void
.end method

.method public final setMLastVisibleView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisibleView:Landroid/view/View;

    return-void
.end method

.method public final setMLayoutManager(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->unregisterOnCardScrollChangeCallback(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;)V

    :cond_11
    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->registerOnCardScrollChangeCallback(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;)V

    :cond_1a
    return-void
.end method

.method public final setMPopupContainer(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPopupContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    return-void
.end method

.method public final setTwoSpanXBgAlpha(I)V
    .registers 8

    int-to-float v0, p1

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000  # 255.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x33

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final updateClipPath(FZ)[F
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEvaluator:Landroid/animation/FloatArrayEvaluator;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    if-eqz p2, :cond_3a

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x1

    aget v2, p1, v1

    iput v2, p2, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x2

    aget v3, p1, v2

    iput v3, p2, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x3

    aget v4, p1, v3

    iput v4, p2, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    aget v0, p1, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    aget v0, p1, v2

    iput v0, p2, Landroid/graphics/RectF;->right:F

    aget v0, p1, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    aget v0, p1, v3

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_41

    :cond_3a
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_41
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    const/4 v1, 0x4

    aget v1, p1, v1

    const/4 v2, 0x5

    aget v2, p1, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    if-eqz p2, :cond_57

    invoke-virtual {p2}, Landroid/widget/ImageView;->invalidateOutline()V

    :cond_57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const-string/jumbo p0, "values"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
