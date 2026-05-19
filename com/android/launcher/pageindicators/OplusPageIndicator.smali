.class public Lcom/android/launcher/pageindicators/OplusPageIndicator;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;
.implements Lcom/android/launcher3/SystemWindowInsettable;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher/IPropertyAnimation;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;


# static fields
.field public static final ALL_INDICATOR_STATE:I = 0x4

.field private static final ALPHA_0:F = 0.0f

.field private static final ALPHA_1:F = 1.0f

.field private static final ALPHA_MAX:I = 0xff

.field private static final AT_LEAST_COUNT_OF_INDICATORS:I = 0x4

.field private static final BEHINDANIMATOR_DURATION:J = 0x78L

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_BACKGROUND:I = -0x7f680835

.field private static final DEBUG_NORMAL:Z = false

.field public static final FIXED_INDICATOR_STATE:I = 0x2

.field private static final MAX_SUPPORT_PAGE_COUNT:I = 0x16

.field private static final MIN_CONTENT_SCALE:F = 0.85f

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3

.field private static final NUM_4:I = 0x4

.field private static final NUM_5:I = 0x5

.field public static final SEARCH_ENTRY_STATE:I = 0x1

.field private static final SHOWEXITANIMATOR_DURATION:J = 0xc8L

.field private static final STROKE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OplusPageIndicator"

.field private static final TEXT_FORMAT_COUNT:I = 0xc


# instance fields
.field private mActiveBrightColor:I

.field private mActiveDeltaAlpha:F

.field private mActiveIndex:I

.field private mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mActiveLeft:F

.field private mActivePage:I

.field private mActiveRight:F

.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mAdjacentTrackRectF:Landroid/graphics/RectF;

.field private mAnimColorNormalAlpha:I

.field private mAnimColorPressedAlpha:I

.field private mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

.field private mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mAssistPaint:Landroid/graphics/Paint;

.field private mAtLeastSearchEntryWidth:I

.field private mAutoPlay:Z

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRadius:I

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBgOffset:F

.field private mBright:Z

.field private mBrightColor:I

.field private mCalculatePages:I

.field private mCurrentColorAlpha:I

.field private mCurrentState:I

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDrawablePaint:Landroid/graphics/Paint;

.field private mDuration:I

.field private mFixedMaxPagesCount:I

.field private mIndicatorContentAlpha:F

.field private mIndicatorContentScale:F

.field private mIndicatorItemHeight:I

.field private mIndicatorItemSpacing:I

.field private mIndicatorItemWidth:I

.field private mIndicatorScrollX:F

.field private mInterpolation:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsFirst:Z

.field private mIsFolderHost:Z

.field private mIsPathIndicator:Z

.field private mIsRtl:Z

.field private mIsSupportAssistIndicator:Z

.field private mLastActiveIndex:I

.field private mLastActivePage:I

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mLeftFadeOutBorder:F

.field private mNeedAnimate:Z

.field private mNeedScrollX:Z

.field private mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field public mNumPages:I

.field private mPageChanged:Z

.field private mPageNumChangedAnimRunner:Ljava/lang/Runnable;

.field private mPressFeedbackHelper:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

.field private mRadius:F

.field private mRectInWindow:Landroid/graphics/Rect;

.field private mRightFadeOutBorder:F

.field private mScrolled:Z

.field private mSearchContentAlpha:F

.field private mSearchContentScale:F

.field private mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

.field private mSearchEntryBgWidth:I

.field private mSearchIcon:Landroid/graphics/drawable/Drawable;

.field private mSearchIconPadding:I

.field private mSearchIconSize:I

.field private mSearchText:Ljava/lang/String;

.field private mSearchTextPaint:Landroid/text/TextPaint;

.field public mSelectIndicatorColor:I

.field private mShowAssistScreenPoint:Z

.field private mShowBackground:Z

.field private mShowExitAnimator:Landroid/animation/ValueAnimator;

.field private mSlideLeftToRight:Z

.field private mStartTime:J

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTempBgHeight:I

.field private mTempBgWidth:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchInteractive:Z

.field private mTrackAnimator:Landroid/animation/ValueAnimator;

.field private mTrackRectF:Landroid/graphics/RectF;

.field private mTrackStartAlpha:F

.field private mTrackStartScrollX:F

.field public mUnSelectIndicatorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAtLeastSearchEntryWidth:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFixedMaxPagesCount:I

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentScale:F

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentAlpha:F

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    const/16 p3, 0xff

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorPressedAlpha:I

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    const/4 p3, 0x4

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTypedValue(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    instance-of p2, p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p2, :cond_9d

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    goto :goto_a1

    :cond_9d
    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    :goto_a1
    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setSize(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060516

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060515

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0807b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120521

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchText:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorPaint(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    sget-boolean p2, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz p2, :cond_f3

    const p2, -0x7f680835

    invoke-virtual {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBackgroundColor(I)V

    :cond_f3
    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_12e

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p2, p3, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p2, 0x7f0705b6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    new-instance p1, Lcom/android/launcher3/search/SearchEntry;

    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/search/SearchEntry;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    new-instance p1, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPressFeedbackHelper:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initViewState()V

    return-void

    :array_12e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->lambda$onPageEndTransition$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/pageindicators/OplusPageIndicator;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->doPageNumChangedAnimIfNeed(II)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackStartAlpha:F

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/launcher/pageindicators/OplusPageIndicator;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateAdjacentTrackRectF(FF)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    return p1
.end method

.method public static synthetic access$1500(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    return p0
.end method

.method public static synthetic access$402(Lcom/android/launcher/pageindicators/OplusPageIndicator;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    return p1
.end method

.method public static synthetic access$500(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackStartScrollX:F

    return p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/launcher/pageindicators/OplusPageIndicator;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    return-void
.end method

.method private autoPlay()V
    .registers 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    if-lt v0, v1, :cond_1f

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-direct {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    invoke-direct {p0, v1, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    :cond_1f
    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    const/high16 v2, 0x437f0000  # 255.0f

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_47

    mul-float v3, v0, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_47
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_51

    mul-float v3, v0, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_51
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_64

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_64

    :cond_5b
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_64

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_64
    :goto_64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->lambda$onPageBeginTransition$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calculateFadeOutBorder()V
    .registers 4

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntryBgWidth()I

    move-result v2

    if-lt v0, v2, :cond_29

    :cond_19
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntryBgWidth()I

    move-result v1

    if-ge v0, v1, :cond_2b

    :cond_29
    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntrySupport()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntryBgWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLeftFadeOutBorder:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRightFadeOutBorder:F

    return-void
.end method

.method private calculateFinalPostion(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    return-void
.end method

.method private calculateParam()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam(Z)V

    return-void
.end method

.method private calculateParam(Z)V
    .registers 3

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_10
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPageChangeAnimating()Z

    move-result p1

    if-eqz p1, :cond_24

    :cond_18
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    :cond_24
    return-void
.end method

.method private calculateSupportIndicatorCount(I)I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr p0, v0

    div-int/2addr p1, p0

    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    const/4 p1, 0x4

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private computeExpandedOffset(FIIII)F
    .registers 8

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p3

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    const/high16 v1, 0x40000000  # 2.0f

    if-ltz p0, :cond_21

    if-nez v0, :cond_11

    return p1

    :cond_11
    add-int/lit8 p4, p4, -0x28

    div-int/lit8 p4, p4, 0xa

    const/high16 p0, 0x41a00000  # 20.0f

    rsub-int/lit8 p1, p3, 0xb

    mul-int/2addr p1, p4

    int-to-float p1, p1

    div-float/2addr p1, v1

    add-float/2addr p1, p0

    mul-int/2addr p4, p2

    int-to-float p0, p4

    add-float/2addr p1, p0

    return p1

    :cond_21
    if-nez v0, :cond_24

    return p1

    :cond_24
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/2addr p0, p5

    div-int/2addr p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v1

    sub-float/2addr p1, p0

    return p1
.end method

.method private doPageNumChangedAnimIfNeed(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isStateBgAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_19

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    :cond_19
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startPageNumChangeAnim(II)V

    return-void
.end method

.method private drawAnimateBitmapIndicator(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_3c

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    move v3, v1

    :goto_11
    if-eqz v3, :cond_18

    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result v4

    goto :goto_1e

    :cond_18
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v4, v2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result v4

    :goto_1e
    invoke-direct {p0, v4, v2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    move-result v5

    sub-float/2addr v5, v4

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iget-boolean v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v6, :cond_31

    if-nez v2, :cond_31

    invoke-direct {p0, p1, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawAssistIndicator(Landroid/graphics/Canvas;F)V

    goto :goto_34

    :cond_31
    invoke-direct {p0, p1, v5, v2, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawUnSelectorIndicator(Landroid/graphics/Canvas;FIZ)V

    :goto_34
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->putPageLeft(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3c
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawSelectorIndicator(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    if-eqz p1, :cond_46

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    :cond_46
    return-void
.end method

.method private drawAssistIndicator(Landroid/graphics/Canvas;F)V
    .registers 11

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40c00000  # 6.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    float-to-int v2, v0

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_16
    const/4 v3, 0x1

    if-gt v2, v3, :cond_56

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput p2, v3, Landroid/graphics/RectF;->left:F

    int-to-float v4, v1

    mul-int/lit8 v5, v2, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iput v4, v3, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x40000000  # 2.0f

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    int-to-float v6, v4

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    mul-float/2addr v6, v7

    invoke-virtual {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    move-result v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_56
    return-void
.end method

.method private drawBackgroundIfNeeded(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getBackgroundAlpha()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowBackground:Z

    if-eq v2, v1, :cond_14

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowBackground:Z

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsColor()V

    :cond_14
    if-lez v0, :cond_82

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getBackgroundPadding()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v4, v1

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v1, v5

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_70

    :cond_58
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v2, v1

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    add-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_70
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_82
    return-void
.end method

.method private drawBitmapIndicator(Landroid/graphics/Canvas;)V
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v0, :cond_b3

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    move v4, v2

    :goto_1a
    if-eqz v4, :cond_21

    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result v5

    goto :goto_27

    :cond_21
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v5, v3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result v5

    :goto_27
    invoke-direct {p0, v5, v3, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    move-result v6

    sub-float/2addr v6, v5

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    float-to-int v6, v6

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-ne v3, v7, :cond_38

    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_43

    :cond_38
    iget-boolean v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v7, :cond_41

    if-nez v3, :cond_41

    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_43

    :cond_41
    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_43
    iget-object v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v8, v4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getAnimAlpha(Z)I

    move-result v4

    const/16 v8, 0xff

    if-ne v4, v8, :cond_57

    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v6, v1, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_72

    :cond_57
    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    mul-int v10, v4, v9

    div-int/2addr v10, v8

    iget v11, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    mul-int v12, v4, v11

    div-int/2addr v12, v8

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v6

    div-int/lit8 v8, v10, 0x2

    sub-int/2addr v9, v8

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    div-int/lit8 v8, v12, 0x2

    sub-int/2addr v11, v8

    add-int/2addr v10, v9

    add-int/2addr v12, v11

    invoke-virtual {v7, v9, v11, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_72
    int-to-float v4, v4

    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    mul-float/2addr v4, v8

    invoke-virtual {p0, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    move-result v8

    mul-float/2addr v8, v4

    float-to-int v4, v8

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    int-to-float v7, v6

    invoke-virtual {v4, v3, v7}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->putPageLeft(IF)V

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v4, v3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getPageSwitchAlpha(I)I

    move-result v4

    if-eqz v4, :cond_af

    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v4, v4

    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    mul-float/2addr v4, v8

    invoke-virtual {p0, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    add-int/2addr v5, v6

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    add-int/2addr v7, v1

    invoke-virtual {v4, v6, v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_af
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    :cond_b3
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    if-eqz p1, :cond_ba

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    :cond_ba
    return-void
.end method

.method private drawIndicatorContent(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFadeOutBorder()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam()V

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v1, :cond_25

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawAnimateBitmapIndicator(Landroid/graphics/Canvas;)V

    goto :goto_28

    :cond_25
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawBitmapIndicator(Landroid/graphics/Canvas;)V

    :goto_28
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawSearchEntryContent(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentScale:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchText:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4f

    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, ""

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4f
    :goto_4f
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v3, v1

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v3, v1

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_bd

    :cond_9b
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_bd
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentAlpha:F

    const/high16 v5, 0x437f0000  # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconPadding:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentAlpha:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-boolean v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v4, :cond_ee

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    goto :goto_fb

    :cond_ee
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    add-int/2addr v4, v1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconPadding:I

    add-int/2addr v4, v1

    :goto_fb
    int-to-float v1, v4

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v1, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawSelectorIndicator(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    move-result v0

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    goto :goto_34

    :cond_25
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    :goto_34
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    move-result v3

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f800000  # 1.0f

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnSelectorIndicator(Landroid/graphics/Canvas;FIZ)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v1, p3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getPageSwitchAlpha(I)I

    move-result p3

    if-eqz p3, :cond_3b

    iget p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    add-float v1, p2, p4

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    int-to-float p3, p3

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    mul-float/2addr p3, v2

    invoke-virtual {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    move-result v2

    mul-float/2addr v2, p3

    float-to-int p3, v2

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    add-float/2addr p2, p3

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6a

    :cond_3b
    iget-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v1, p4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getAnimAlpha(Z)I

    move-result p4

    int-to-float p4, p4

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr p4, v1

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p3

    mul-float/2addr v2, p4

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFadeOutAlpha(F)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    add-float/2addr p2, v1

    int-to-float v0, v0

    mul-float/2addr v1, p4

    iget-object p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_6a
    return-void
.end method

.method private getAnimColor()I
    .registers 4

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private getEndxByPosition(FII)F
    .registers 12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->computeExpandedOffset(FIIII)F

    move-result p0

    return p0
.end method

.method private getFixedMaxPagesCount()I
    .registers 2

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFixedMaxPagesCount:I

    if-lez v0, :cond_5

    goto :goto_d

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntryBgWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateSupportIndicatorCount(I)I

    move-result v0

    :goto_d
    return v0
.end method

.method private getMaxPagesCountOfCurState()I
    .registers 3

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const/16 p0, 0x16

    goto :goto_c

    :cond_8
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    move-result p0

    :goto_c
    return p0
.end method

.method private getPageIndex(Landroid/view/MotionEvent;)I
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    int-to-float v0, v3

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v3, :cond_28

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    :cond_28
    const/4 v1, 0x1

    if-gt p1, v0, :cond_2c

    goto :goto_40

    :cond_2c
    move v3, v1

    :goto_2d
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-ge v3, v2, :cond_40

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    add-int/2addr v2, v0

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v2, v4

    if-lt p1, v0, :cond_3c

    if-gt p1, v2, :cond_3c

    goto :goto_40

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_2d

    :cond_40
    :goto_40
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 p1, p0, -0x1

    if-le v3, p1, :cond_48

    add-int/lit8 v3, p0, -0x1

    :cond_48
    return v3
.end method

.method private getSearchEntryBgWidth()I
    .registers 2

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAtLeastSearchEntryWidth()I

    move-result p0

    return p0
.end method

.method private initBackground(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_a

    const p1, 0x7f06076b

    goto :goto_d

    :cond_a
    const p1, 0x7f06076a

    :goto_d
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorPressedAlpha:I

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    return-void
.end method

.method private initViewState()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->initViewStateIfNeeded()V

    return-void
.end method

.method private synthetic lambda$onPageBeginTransition$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onPageEndTransition$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startTrackAnimation()V
    .registers 7

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackStartAlpha:F

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackStartScrollX:F

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    sub-int/2addr v0, v2

    goto :goto_19

    :cond_17
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    :goto_19
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_2c

    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActiveIndex:I

    sub-int/2addr v2, v4

    if-lt v5, v2, :cond_2c

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v2, v4

    if-lt v0, v2, :cond_36

    :cond_2c
    if-nez v3, :cond_35

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActiveIndex:I

    if-gt v2, v1, :cond_35

    if-le v0, v1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :cond_36
    :goto_36
    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    const-string/jumbo v1, "startTrackAnimation: needScrollX="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedScrollX:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSlideLeftToRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pageChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",ActivePage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",ActiveIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    const-string v3, ", realLastPage="

    const-string v5, ", mLastActiveIndex="

    invoke-static {v1, v2, v3, v0, v5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActiveIndex:I

    const-string v2, "OplusPageIndicator"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_a9

    new-array v0, v4, [F

    fill-array-data v0, :array_b0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_a9
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_b0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private stopTrackAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private updateActiveIndex(I)V
    .registers 8

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    sub-int/2addr v3, v4

    goto :goto_12

    :cond_10
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    :goto_12
    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v1, v2

    sub-int p1, v1, p1

    :cond_19
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_26

    add-int/lit8 v1, v0, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    :cond_26
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    if-eqz v1, :cond_3f

    if-le v3, p1, :cond_3f

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_3f

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int p1, v3, p1

    add-int/2addr p1, v1

    add-int/lit8 v1, v0, -0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    goto :goto_63

    :cond_3f
    if-eqz v1, :cond_50

    if-ge v3, p1, :cond_50

    if-lez v3, :cond_50

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int/2addr p1, v3

    sub-int/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    goto :goto_63

    :cond_50
    if-nez v3, :cond_56

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    goto :goto_63

    :cond_56
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v1, p1, -0x1

    if-ne v3, v1, :cond_63

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    :cond_63
    :goto_63
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result v1

    if-eqz v1, :cond_9f

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    if-eqz v1, :cond_9f

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-le v1, v0, :cond_9f

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    add-int/lit8 v5, v0, -0x2

    if-lt v4, v5, :cond_95

    if-ge v3, v1, :cond_95

    sub-int v2, v3, v5

    neg-int v2, v2

    mul-int/2addr v2, p1

    int-to-float p1, v2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    add-int/lit8 p1, v1, -0x1

    if-ne v3, p1, :cond_9f

    sub-int/2addr v1, v0

    neg-int p1, v1

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    goto :goto_9f

    :cond_95
    if-gt v4, v2, :cond_9f

    if-lez v3, :cond_9f

    sub-int/2addr v3, v2

    neg-int v0, v3

    mul-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    :cond_9f
    :goto_9f
    return-void
.end method

.method private updateAdjacentTrackRectF(FF)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->top:F

    int-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Landroid/graphics/RectF;->left:F

    iput p2, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method private updatePaintsColor()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_d

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    goto :goto_f

    :cond_d
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    :goto_f
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_19

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    goto :goto_1b

    :cond_19
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_25

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    goto :goto_27

    :cond_25
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    :goto_27
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2a
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_31

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    goto :goto_33

    :cond_31
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    :goto_33
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_3d

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    goto :goto_3f

    :cond_3d
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    :goto_3f
    invoke-virtual {v1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private updatePaintsShadowLayer(Z)V
    .registers 2

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_1b

    :cond_16
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_1b
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    goto :goto_3f

    :cond_21
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    goto :goto_3a

    :cond_35
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    :goto_3a
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    :goto_3f
    return-void
.end method

.method private updatePortraitBottomMargin(ILcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;)I
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v1, :cond_21

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p2, :cond_21

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    if-nez p2, :cond_21

    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p2

    iget p3, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p3, p2

    iput p3, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p1, p2

    :cond_21
    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p2, :cond_43

    sget-object p2, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result p3

    if-eqz p3, :cond_43

    invoke-virtual {p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_43

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p1, p0

    const-string p0, "bottomMargin = "

    const-string p2, "OplusPageIndicator"

    const-string p3, "BottomSearchManager"

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_43
    return p1
.end method

.method private updateTrackRectF(FF)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->top:F

    int-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Landroid/graphics/RectF;->left:F

    iput p2, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method


# virtual methods
.method public alphaColor(FZ)V
    .registers 5

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    int-to-float v0, p2

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorPressedAlpha:I

    goto :goto_d

    :cond_8
    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorPressedAlpha:I

    int-to-float v0, p2

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    :goto_d
    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAnimColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBackgroundColor(I)V

    return-void
.end method

.method public cancelPageNumChangeAnim()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageNumChangedAnimRunner:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->cancelPageNumChangeAnim()V

    return-void
.end method

.method public cancelPressDragging()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->cancelPressDragging()V

    return-void
.end method

.method public cancelShowExitAnimator()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public getAtLeastSearchEntryWidth()I
    .registers 2

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAtLeastSearchEntryWidth:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result p0

    return p0
.end method

.method public getBgWidthOffset()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    return p0
.end method

.method public getCalculatePages()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCalculatePages:I

    return p0
.end method

.method public getCurrentState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    return p0
.end method

.method public getFadeOutAlpha(F)F
    .registers 10

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLeftFadeOutBorder:F

    cmpg-float v0, p1, v2

    if-gez v0, :cond_1b

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    int-to-float p0, p0

    sub-float v1, v0, p0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0

    :cond_1b
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v1, v0

    add-float v2, p1, v1

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRightFadeOutBorder:F

    cmpl-float p1, v2, v3

    if-lez p1, :cond_37

    int-to-float p1, v0

    add-float/2addr p1, v3

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    int-to-float p0, p0

    add-float v4, p1, p0

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0

    :cond_37
    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getIndicatorContentAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    return p0
.end method

.method public getIndicatorScrollX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    return p0
.end method

.method public getLeftByPosition(I)F
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    :cond_e
    const/4 v0, 0x0

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_28

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntryBgWidth()I

    move-result v4

    if-lt v2, v4, :cond_3a

    :cond_28
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntryBgWidth()I

    move-result v3

    if-ge v2, v3, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntrySupport()Z

    move-result v2

    if-eqz v2, :cond_59

    if-eqz v1, :cond_59

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntryBgWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    :cond_59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    int-to-float p1, v2

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    sub-float/2addr p1, v1

    add-float/2addr p1, v0

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    add-float/2addr p1, p0

    return p1
.end method

.method public getPageNumChangeAnimRunner()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageNumChangedAnimRunner:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getPressFeedbackHelper()Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPressFeedbackHelper:Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;

    return-object p0
.end method

.method public getSearchContentAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentAlpha:F

    return p0
.end method

.method public getSearchEntry()Lcom/android/launcher3/search/SearchEntry;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    return-object p0
.end method

.method public getSwitchTargetPage(Landroid/view/MotionEvent;)I
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getPageIndex(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return v0

    :cond_8
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v1, :cond_12

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_12
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v2, :cond_19

    add-int/lit8 v2, p1, -0x1

    goto :goto_1a

    :cond_19
    move v2, p1

    :goto_1a
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-eqz v1, :cond_27

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v1, p1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    xor-int/lit8 p0, p0, 0x1

    sub-int p1, v1, p0

    :cond_27
    if-eq v3, p1, :cond_2a

    return v2

    :cond_2a
    return v0
.end method

.method public getTargetScrollXAndRestoreActiveIndex(I)F
    .registers 8

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    const/16 v1, 0x16

    goto :goto_a

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    move-result v1

    :goto_a
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v2, :cond_16

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    sub-int/2addr v2, v3

    goto :goto_18

    :cond_16
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    :goto_18
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    const/4 v4, 0x0

    if-ne p1, v0, :cond_49

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-gt p1, v1, :cond_25

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    :goto_23
    move v3, v4

    goto :goto_79

    :cond_25
    add-int/lit8 v0, v1, -0x2

    if-gt v2, v0, :cond_2c

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    goto :goto_23

    :cond_2c
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int v0, v2, v0

    neg-int v0, v0

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int v5, v3, v4

    mul-int/2addr v5, v0

    int-to-float v0, v5

    add-int/lit8 v5, p1, -0x1

    if-ne v2, v5, :cond_47

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int/2addr p1, v1

    neg-int p0, p1

    add-int/2addr v3, v4

    mul-int/2addr v3, p0

    int-to-float v3, v3

    goto :goto_79

    :cond_47
    move v3, v0

    goto :goto_79

    :cond_49
    add-int/lit8 p1, v1, -0x2

    if-le v2, p1, :cond_79

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    if-gt v0, p1, :cond_59

    sub-int p1, v2, v0

    neg-int p1, p1

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    goto :goto_62

    :cond_59
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int p1, v2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    :goto_62
    add-int/2addr v0, v3

    mul-int/2addr v0, p1

    int-to-float p1, v0

    move v3, p1

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v0, p1, -0x1

    if-ne v2, v0, :cond_79

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int/2addr p1, v1

    neg-int p1, p1

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v0, p0

    mul-int/2addr v0, p1

    int-to-float v3, v0

    :cond_79
    :goto_79
    return v3
.end method

.method public getTargetWidthByPages(I)I
    .registers 4

    const/16 v0, 0x16

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public getTargetWidthByState(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_16

    :cond_7
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAtLeastSearchEntryWidth()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntryBgWidth()I

    move-result p0

    return p0
.end method

.method public getTempBgHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    return p0
.end method

.method public getTempBgWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    return p0
.end method

.method public getTextColor()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    return p0
.end method

.method public getTypedValue(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/R$styleable;->OplusPageIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f05002f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05002e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-nez p1, :cond_3b

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3b

    :cond_39
    move p1, v0

    goto :goto_3c

    :cond_3b
    :goto_3b
    move p1, v2

    :goto_3c
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-nez p2, :cond_49

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_49

    :cond_47
    move p1, v0

    goto :goto_4a

    :cond_49
    :goto_49
    move p1, v2

    :goto_4a
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v0

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "getTypedValue,usePathIndicator : %s, mIsPathIndicator: %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusPageIndicator"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initIndicatorPaint(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_12

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_29

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    :cond_29
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_40

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    :cond_40
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_57

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    :cond_57
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_8c

    :cond_6b
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_77

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    :cond_77
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_82

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    :cond_82
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_8c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsShadowLayer(Z)V

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsColor()V

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initBackground(Z)V

    return-void
.end method

.method public isFolderHost()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    return p0
.end method

.method public isInView(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_25
    const-string v0, "isInView: mRectInWindow="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowEv=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    const-string v2, "OplusPageIndicator"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isPressDragging()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    move-result p0

    return p0
.end method

.method public isSearchEntryEnable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isSearchEntrySupport()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->registerStateChangeListener()V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->registerObserver()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->unregisterStateChangeListener()V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->unRegisterObserver()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawBackgroundIfNeeded(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawSearchEntryContent(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawIndicatorContent(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v2, v6

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePivot()V

    :cond_32
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByPages(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntrySupport()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ca

    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070def

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p2

    if-eqz p2, :cond_43

    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070dec

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    goto :goto_52

    :cond_43
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070deb

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    :goto_52
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070dea

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconPadding:I

    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconSize:I

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchIconPadding:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    add-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    float-to-int p2, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAtLeastSearchEntryWidth:I

    invoke-direct {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateSupportIndicatorCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mFixedMaxPagesCount:I

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v2

    if-eqz v2, :cond_ab

    const v2, 0x7f07114f

    goto :goto_ae

    :cond_ab
    const v2, 0x7f071148

    :goto_ae
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    if-ne v2, p1, :cond_c6

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAtLeastSearchEntryWidth:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p1, v1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    goto :goto_c8

    :cond_c6
    iput v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    :goto_c8
    move v1, p2

    goto :goto_ee

    :cond_ca
    iput v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    if-ne p1, v0, :cond_e1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_ee

    :cond_e1
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int v0, p1, p2

    :goto_ee
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam(Z)V

    return-void
.end method

.method public onPageBeginTransition()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/download/s;

    invoke-direct {v1, p0}, Lcom/android/launcher/download/s;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2f
    return-void
.end method

.method public onPageEndTransition()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/pageindicators/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/pageindicators/a;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    if-ne v1, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorPaint(Z)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public pauseAnimations()V
    .registers 1

    return-void
.end method

.method public requireAnimate()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public resetBgPadding()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->resetBgPadding()V

    return-void
.end method

.method public resetSearchEntryState()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    return-void
.end method

.method public restoreColorAndScale()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimColorNormalAlpha:I

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentColorAlpha:I

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getAnimColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBackgroundColor(I)V

    return-void
.end method

.method public scrollToDefaultScreen(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntrySupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isStateAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->cancelScrollXAnim()V

    :cond_17
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_22

    const/16 v0, 0x16

    goto :goto_26

    :cond_22
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFixedMaxPagesCount()I

    move-result v0

    :goto_26
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v2, :cond_30

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v2, v2, -0x1

    sub-int p1, v2, p1

    :cond_30
    add-int/lit8 v2, v0, -0x2

    if-gt p1, v2, :cond_37

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    goto :goto_51

    :cond_37
    sub-int v1, p1, v2

    neg-int v1, v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int v4, v2, v3

    mul-int/2addr v4, v1

    int-to-float v1, v4

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v4, v1, -0x1

    if-ne p1, v4, :cond_51

    sub-int/2addr v1, v0

    neg-int p1, v1

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    int-to-float p1, v2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    :cond_51
    :goto_51
    return-void
.end method

.method public setActiveMarker(I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-eq v0, v1, :cond_77

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActiveIndex:I

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_17

    move p1, v1

    goto :goto_18

    :cond_17
    move p1, v2

    :goto_18
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateActiveIndex(I)V

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    if-nez p1, :cond_2f

    move p1, v1

    goto :goto_30

    :cond_2f
    move p1, v2

    :goto_30
    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    move-result p1

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPageChangeAnimating()Z

    move-result p1

    if-nez p1, :cond_5b

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz p1, :cond_4b

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-le v0, p1, :cond_51

    goto :goto_4f

    :cond_4b
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-ge v0, p1, :cond_51

    :goto_4f
    move p1, v1

    goto :goto_52

    :cond_51
    move p1, v2

    :goto_52
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->stopTrackAnimation()V

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startTrackAnimation()V

    goto :goto_6f

    :cond_5b
    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_6f
    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-ne v0, p1, :cond_77

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    :cond_77
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-eq p1, v0, :cond_8e

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    move-result p1

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startDragSwitchPageAnim(II)V

    :cond_8e
    return-void
.end method

.method public setAlphaIfNeeded(FZ)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_11

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorAlphaAnim(F)V

    goto :goto_23

    :cond_11
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getIndicatorAlphaAnim()Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_20
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_23
    return-void
.end method

.method public setAnimAlpha(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setAnimScaleX(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    :cond_9
    return-void
.end method

.method public setAnimScaleY(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_9
    return-void
.end method

.method public setAnimTransX(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_9
    return-void
.end method

.method public setAnimTransY(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    return-void
.end method

.method public setAnimVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public setAnimate(Z)V
    .registers 4

    const-string/jumbo v0, "setAnimate,animate :"

    const-string v1, "OplusPageIndicator"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBgAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->setBgAlpha(I)V

    return-void
.end method

.method public setBgWidthOffset(F)V
    .registers 8

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v4, p1, v3

    aget v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v5

    iget v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    add-float/2addr v1, v5

    float-to-int v1, v1

    aget p1, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setCurrentActiveMarker()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActiveMarker(I)V

    return-void
.end method

.method public setFixedIndicatorScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    return-void
.end method

.method public setFolderHost(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->updateContent(Z)V

    return-void
.end method

.method public setIndicatorContentAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    return-void
.end method

.method public setIndicatorScrollX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public setMarkersCount(I)V
    .registers 5

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCalculatePages:I

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-ltz p1, :cond_d

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result p1

    if-nez p1, :cond_23

    const-string/jumbo p1, "setMarkersCount oldNumPages= "

    const-string v1, "; mNumPages = "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    const-string v2, "OplusPageIndicator"

    invoke-static {p1, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_23
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-eq v0, p1, :cond_6d

    if-le v0, p1, :cond_33

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    add-int/lit8 v2, p1, -0x1

    if-le v1, v2, :cond_33

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    :cond_33
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntrySupport()Z

    move-result p1

    if-eqz p1, :cond_69

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    move-result p1

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v1, :cond_49

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    sub-int/2addr v1, v2

    goto :goto_4b

    :cond_49
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    :goto_4b
    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->isStateBgAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_63

    new-instance p1, Lcom/android/launcher/pageindicators/OplusPageIndicator$1;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$1;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageNumChangedAnimRunner:Ljava/lang/Runnable;

    goto :goto_70

    :cond_63
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->doPageNumChangedAnimIfNeed(II)V

    goto :goto_70

    :cond_69
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_70

    :cond_6d
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_70
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    if-nez p1, :cond_81

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntrySupport()Z

    move-result p1

    if-nez p1, :cond_81

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->onPageNumChanged(II)Z

    :cond_81
    return-void
.end method

.method public setScroll(II)V
    .registers 14

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v2, :cond_11

    add-int/lit8 v2, v1, -0x1

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    if-le v2, v0, :cond_1b

    if-lez p2, :cond_1b

    add-int/lit8 v3, v2, -0x1

    div-int v3, p2, v3

    goto :goto_23

    :cond_1b
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    :goto_23
    iget-boolean v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v4, :cond_2c

    sub-int/2addr v2, v0

    div-int v5, p1, v3

    sub-int/2addr v2, v5

    goto :goto_2e

    :cond_2c
    div-int v2, p1, v3

    :goto_2e
    iget-boolean v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v5, :cond_34

    add-int/lit8 v2, v2, 0x1

    :cond_34
    const/4 v5, 0x0

    if-ltz p1, :cond_44

    if-eqz v4, :cond_3e

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-gt v2, v4, :cond_44

    goto :goto_42

    :cond_3e
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-lt v2, v4, :cond_44

    :goto_42
    move v2, v0

    goto :goto_45

    :cond_44
    move v2, v5

    :goto_45
    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v4, v6

    iget-boolean v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    if-nez v6, :cond_d8

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result v6

    if-nez v6, :cond_d8

    rem-int v6, p1, v3

    int-to-float v7, v6

    int-to-float v3, v3

    div-float/2addr v7, v3

    int-to-float v8, p1

    div-float/2addr v8, v3

    int-to-float v3, v4

    mul-float/2addr v8, v3

    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v3, :cond_68

    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v9, v0

    iget v10, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    sub-int/2addr v9, v10

    goto :goto_6a

    :cond_68
    iget v9, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    :goto_6a
    if-nez v3, :cond_72

    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v3, :cond_72

    move v3, v0

    goto :goto_73

    :cond_72
    move v3, v5

    :goto_73
    if-eqz v3, :cond_79

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    sub-int/2addr v3, v0

    goto :goto_7b

    :cond_79
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    :goto_7b
    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getMaxPagesCountOfCurState()I

    move-result v4

    if-eqz v2, :cond_8f

    iget v10, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    add-int/lit8 v4, v4, -0x2

    if-lt v10, v4, :cond_8f

    add-int/lit8 v1, v1, -0x2

    if-ge v9, v1, :cond_8f

    move v1, v0

    goto :goto_90

    :cond_8f
    move v1, v5

    :goto_90
    if-nez v2, :cond_99

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndex:I

    if-gt v4, v0, :cond_99

    if-le v9, v0, :cond_99

    goto :goto_9a

    :cond_99
    move v0, v5

    :goto_9a
    if-nez v1, :cond_9e

    if-eqz v0, :cond_a2

    :cond_9e
    sub-float/2addr v8, v3

    neg-float v0, v8

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    :cond_a2
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateAdjacentTrackRectF(FF)V

    const/4 v0, 0x0

    if-eqz v2, :cond_c5

    if-gt p1, p2, :cond_d5

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float/2addr p1, v7

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_d5

    :cond_c5
    if-ltz v6, :cond_d5

    iput v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAdjacentTrackRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr p2, v1

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_d5
    :goto_d5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_d8
    return-void
.end method

.method public setSearchContentAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentAlpha:F

    return-void
.end method

.method public setSearchContentScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentScale:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setShouldAutoHide(Z)V
    .registers 2

    return-void
.end method

.method public setShowAssistScreenPoint(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    return-void
.end method

.method public setSize(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorSpacingPx:I

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorWidthPx:I

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorHeightPx:I

    if-nez p1, :cond_2c

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    if-ne v0, v3, :cond_2c

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    if-ne v1, v3, :cond_2c

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    if-eq v2, v3, :cond_78

    :cond_2c
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v0, :cond_3d

    int-to-float v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    goto :goto_73

    :cond_3d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080703

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080702

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0807c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_73

    :cond_69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_73
    if-nez p1, :cond_78

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_78
    return-void
.end method

.method public setState(I)V
    .registers 6

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eq p1, v0, :cond_36

    const/4 v0, 0x2

    const/16 v3, 0xff

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11

    goto :goto_43

    :cond_11
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBgAlpha(I)V

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentAlpha:F

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    goto :goto_43

    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    :goto_25
    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBgAlpha(I)V

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetBgPadding()V

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentAlpha:F

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentScale:F

    goto :goto_43

    :cond_36
    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBgOffset:F

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetBgPadding()V

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentAlpha:F

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchContentScale:F

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorContentAlpha:F

    :goto_43
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->isStateAnimRunning()Z

    move-result p1

    if-nez p1, :cond_53

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    :cond_53
    const-string/jumbo p1, "setState mCurrentState="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCurrentState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIndicatorScrollX="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorScrollX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", indicator="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusPageIndicator"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTempBgHeight(F)V
    .registers 2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgHeight:I

    return-void
.end method

.method public setTempBgWidth(F)V
    .registers 2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTempBgWidth:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTouchInteractive(Z)V
    .registers 4

    const-string/jumbo v0, "setTouchInteractive="

    const-string v1, "OplusPageIndicator"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    const v2, 0x7f07114f

    goto :goto_1d

    :cond_1a
    const v2, 0x7f071148

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    const/4 v5, 0x0

    const-string v6, "OplusPageIndicator"

    if-eqz v3, :cond_5e

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_59

    :cond_57
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_59
    const/4 v1, -0x2

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_1bc

    :cond_5e
    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/Launcher;

    sget-object v8, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v4, v8, :cond_8f

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v8, 0x3f800000  # 1.0f

    cmpl-float v4, v4, v8

    if-nez v4, :cond_8f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLpSize(Z)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    goto/16 :goto_1ba

    :cond_8f
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070992

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f071144

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f071150

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_168

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/common/config/ScreenInfo;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f07098d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07098e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07098f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget-object v9, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_12e

    sget-object v4, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v4}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v4

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarStashedHeight(Landroid/content/Context;)I

    move-result v5

    iget v9, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    add-int/2addr v9, v10

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v10

    if-eqz v10, :cond_123

    add-int/2addr v7, v3

    goto :goto_12b

    :cond_123
    if-eqz v4, :cond_128

    add-int v7, v1, v3

    goto :goto_12b

    :cond_128
    add-int/2addr v5, v8

    add-int v7, v5, v3

    :goto_12b
    add-int/2addr v9, v7

    goto/16 :goto_1b6

    :cond_12e
    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v9

    if-eqz v9, :cond_13e

    add-int/2addr v7, v3

    goto :goto_141

    :cond_13e
    add-int/2addr v5, v1

    add-int v7, v5, v4

    :goto_141
    add-int v9, v8, v7

    const-string v3, "  windowInsets.bottom = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , dp.mHotseatMarginBottomPx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  , realNavigationBarHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b6

    :cond_168
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v3, :cond_19a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v4

    sget-object v7, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v4, v7, :cond_19a

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3, v8}, Lcom/android/common/config/ScreenInfo;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusDeviceProfile;->injectBuildDeviceProfileContext(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWindowInsets: windowInsets.bottom=0 but getNavigationMode!=NO_BUTTON new bottom="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19a
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    add-int/2addr v4, v3

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_1a4

    goto :goto_1a6

    :cond_1a4
    iget v5, v0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    :goto_1a6
    add-int/2addr v4, v5

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/OplusDeviceProfile;->getIndicatorSpace(Landroid/content/res/Resources;)I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int v9, v3, v4

    :goto_1b6
    invoke-direct {p0, v9, v0, p1, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePortraitBottomMargin(ILcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;)I

    move-result v1

    :goto_1ba
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_1bc
    const-string/jumbo v1, "setWindowInsets: Indicator marginBottom = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", windowInsets = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", hotseatBarSizePx = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public skipAnimationsToEnd()V
    .registers 1

    return-void
.end method

.method public startAnimation(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/pageindicators/OplusPageIndicator$4;

    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$4;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_b
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    return-void
.end method

.method public startDragWorkspace(Z)V
    .registers 4

    const-string v0, "Start drag workspace, swipeLeft = "

    const-string v1, "OplusPageIndicator"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p1, v0, p1}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZIZ)V

    return-void
.end method

.method public startPressDragging()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTouchInteractive:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveDeltaAlpha:F

    :cond_f
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startPressDragging()V

    return-void
.end method

.method public supportQuickDrag()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateBackground(I)V
    .registers 2

    return-void
.end method

.method public updateInsetForChildrenMode()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setWindowInsets(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method

.method public updatePivot()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v1}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setPivotToScaleWithSelf(Landroid/view/View;)V

    :cond_11
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_43

    :cond_36
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071047

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_43
    move v2, v0

    goto/16 :goto_c2

    :cond_46
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_c2

    :cond_55
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v0, :cond_7c

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_c2

    :cond_6e
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_43

    :cond_7c
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_c2

    :cond_9a
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_43

    :cond_b4
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_43

    :cond_c2
    :goto_c2
    invoke-virtual {v1}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v0

    if-nez v0, :cond_d1

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    int-to-float v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_d1
    const-string/jumbo p0, "updatePivot extraIndicatorPivotY = "

    const-string v0, "OplusPageIndicator"

    invoke-static {p0, v2, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
