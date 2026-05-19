.class public final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;,
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;,
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;,
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;,
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorUpdater;,
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$Companion;,
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$State;,
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$DragState;,
        Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimationState;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCOUIAppListFastScroller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 COUIAppListFastScroller.kt\ncom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1029:1\n107#2:1030\n79#2,22:1031\n*S KotlinDebug\n*F\n+ 1 COUIAppListFastScroller.kt\ncom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller\n*L\n744#1:1030\n744#1:1031,22\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field public static final Companion:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$Companion;

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final HEIGHT_ANIM_HOLDER:Ljava/lang/String; = "HEIGHT_ANIM_HOLDER"

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x7d0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x7d0

.field private static final HIDE_DURATION_MS:I = 0xa0

.field private static final LOCKED_APP_ENTRY_HEAD_COUNT:I = 0x3

.field private static final MEDIUM_FONT:Ljava/lang/String; = "sans-serif-medium"

.field private static final NO_LOCKED_APP_ENTRY_HEAD_COUNT:I = 0x2

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0xa0

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUIAppListFastScroller"

.field private static final THUMB_TRANSLATE_X_HOLDER:Ljava/lang/String; = "THUMB_TRANSLATE_X_HOLDER"

.field private static final TOUCH_SCALE_FACTOR:F = 2.5f

.field private static final WIDTH_ANIM_HOLDER:Ljava/lang/String; = "WIDTH_ANIM_HOLDER"


# instance fields
.field private final context:Landroid/content/Context;

.field private hasLockedAppEntry:Z

.field private mAnimationState:I

.field private mAppList:Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;

.field private final mCommonInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCurrentHeightScale:F

.field private final mCurrentThumbShadowX:F

.field private final mCurrentThumbShadowY:F

.field private mCurrentThumbTranslateScaleX:F

.field private mCurrentThumbTranslateX:F

.field private mCurrentThumbTranslateY:F

.field private mCurrentWidthScale:F

.field private final mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private final mDefaultVerticalMarginEnd:I

.field private final mDefaultVerticalThumbHeight:I

.field private final mDefaultVerticalThumbWidth:I

.field private final mDots:Ljava/lang/String;

.field private mDragState:I

.field private mHeaderCount:I

.field private final mHeightEndScale:F

.field private mHeightScaleHolder:Landroid/animation/PropertyValuesHolder;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mIsReadyDraw:Z

.field private mIsThumbAlwaysShow:Z

.field private mListContentLength:I

.field private mMessage:Ljava/lang/String;

.field private mMessageAlphaAnimatedValue:F

.field private mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mMessageAnimatorUpdateListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;

.field private mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mMessageBackgroundHeight:I

.field private final mMessageBackgroundInternalPadding:I

.field private mMessageBackgroundShadowPaddingEnd:I

.field private mMessageBackgroundShadowPaddingTop:I

.field private final mMessageBackgroundTopOffset:I

.field private final mMessageMarginEnd:I

.field private final mMessageMaximumWidth:I

.field private final mMessageMinimumWidth:I

.field private mMessagePaint:Landroid/text/TextPaint;

.field private final mMessageTextPadding:I

.field private mMessageTextShadowPaddingY:F

.field private mMessageWidth:F

.field private mNeedShowMessage:Z

.field private mNeedVerticalScrollbar:Z

.field private mOffsetY:I

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mPressAnimatorListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;

.field private mPressAnimatorState:I

.field private mPressAnimators:Landroid/animation/AnimatorSet;

.field private mRealDy:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScaleEndThumbTranslateX:F

.field private final mScaleEndThumbTranslateY:F

.field private final mScaleEndVerticalThumbHeight:I

.field private final mScaleEndVerticalThumbWidth:I

.field private final mScrollbarMinimumRange:I

.field private final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field private mTargetPosition:I

.field private mTextWidth:F

.field private mTextX:F

.field private mTextY:F

.field private mThumbBackgroundShadowPaddingEnd:I

.field private mThumbBackgroundShadowPaddingTop:I

.field private final mThumbDrawableBackgroundScaleCenterX:I

.field private final mThumbDrawableBackgroundScaleCenterY:I

.field private mThumbInitBottomCenterY:I

.field private mThumbInitCenterY:I

.field private mThumbScaleAnimator:Landroid/animation/ValueAnimator;

.field private mThumbScaleAnimatorUpdateListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;

.field private mThumbTranslateXHolder:Landroid/animation/PropertyValuesHolder;

.field private mVerticalDragY:F

.field private final mVerticalRange:[I

.field private mVerticalThumbCenterY:I

.field private mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mWidthEndScale:F

.field private mWidthScaleHolder:Landroid/animation/PropertyValuesHolder;

.field private realShowMessage:Ljava/lang/String;

.field private thumbBottomMargin:I

.field private thumbTopMargin:I

.field private verticalThumbDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->Companion:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V
    .registers 11

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->context:Landroid/content/Context;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentWidthScale:F

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentHeightScale:F

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3  # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f  # 0.67f

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCommonInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->realShowMessage:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalRange:[I

    new-array v1, v0, [F

    fill-array-data v1, :array_222

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance v1, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mDataObserver$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mDataObserver$1;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070433

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070431

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070432

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalMarginEnd:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070443

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndVerticalThumbWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070442

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndVerticalThumbHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07042c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbDrawableBackgroundScaleCenterX:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070444

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070445

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbBackgroundShadowPaddingTop:I

    div-int/lit8 v5, v2, 0x2

    iput v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbDrawableBackgroundScaleCenterY:I

    int-to-float v3, v3

    int-to-float v5, v1

    div-float/2addr v3, v5

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mWidthEndScale:F

    int-to-float v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHeightEndScale:F

    const v3, 0x7f080578

    invoke-virtual {p2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->verticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_da

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_da
    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->verticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xff

    if-nez v3, :cond_e1

    goto :goto_e4

    :cond_e1
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_e4
    const v3, 0x7f080579

    invoke-virtual {p2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07042f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndThumbTranslateX:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070430

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndThumbTranslateY:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07042e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbShadowY:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07042d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbShadowX:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07044a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070449

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int/2addr v1, v3

    div-int/2addr v1, v0

    sub-int/2addr v2, v6

    div-int/2addr v2, v0

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_148

    add-int/2addr v3, v1

    add-int/2addr v6, v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_148
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14d

    goto :goto_150

    :cond_14d
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_150
    const v0, 0x7f080577

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_15c

    goto :goto_15f

    :cond_15c
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_15f
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageTextPadding:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070437

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundInternalPadding:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070438

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundTopOffset:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundShadowPaddingEnd:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundShadowPaddingTop:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageTextShadowPaddingY:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070435

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageMaximumWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageMinimumWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageMarginEnd:I

    const v0, 0x7f120256

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.fast_scroller_dots)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDots:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScrollbarMinimumRange:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->thumbTopMargin:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->thumbBottomMargin:I

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->initMessagePaint(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->initAnimators()V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    nop

    :array_222
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHideRunnable$lambda$0(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    return-void
.end method

.method public static final synthetic access$cancelHide(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->cancelHide()V

    return-void
.end method

.method public static final synthetic access$getMCurrentThumbTranslateScaleX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbTranslateScaleX:F

    return p0
.end method

.method public static final synthetic access$getMCurrentWidthScale$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentWidthScale:F

    return p0
.end method

.method public static final synthetic access$getMMessageAlphaAnimatedValue$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimatedValue:F

    return p0
.end method

.method public static final synthetic access$getMMessageBackgroundDrawable$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getMMessagePaint$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public static final synthetic access$getMRealDy$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRealDy:I

    return p0
.end method

.method public static final synthetic access$getMRecyclerView$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getMScaleEndThumbTranslateX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndThumbTranslateX:F

    return p0
.end method

.method public static final synthetic access$getMScaleEndThumbTranslateY$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndThumbTranslateY:F

    return p0
.end method

.method public static final synthetic access$getMShowHideAnimator$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getMState$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    return p0
.end method

.method public static final synthetic access$getMVerticalThumbDrawable$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getVerticalThumbDrawable$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->verticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$resetHideDelay(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->resetHideDelay(I)V

    return-void
.end method

.method public static final synthetic access$setMCurrentHeightScale$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentHeightScale:F

    return-void
.end method

.method public static final synthetic access$setMCurrentThumbTranslateScaleX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbTranslateScaleX:F

    return-void
.end method

.method public static final synthetic access$setMCurrentThumbTranslateX$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbTranslateX:F

    return-void
.end method

.method public static final synthetic access$setMCurrentThumbTranslateY$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbTranslateY:F

    return-void
.end method

.method public static final synthetic access$setMCurrentWidthScale$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentWidthScale:F

    return-void
.end method

.method public static final synthetic access$setMMessageAlphaAnimatedValue$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimatedValue:F

    return-void
.end method

.method public static final synthetic access$setMPressAnimatorState$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorState:I

    return-void
.end method

.method public static final synthetic access$setMRealDy$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRealDy:I

    return-void
.end method

.method private final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setupCallbacks()V

    return-void
.end method

.method private final calculateScrollerTouchFraction(F)F
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbInitCenterY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->getVerticalRange()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->getVerticalRange()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbHeight:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, p0

    return p1
.end method

.method private final cancelHide()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_a

    const-string v0, "mRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 16

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->verticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_7
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_e
    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbCenterY:I

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbBackgroundShadowPaddingTop:I

    add-int/2addr v2, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndVerticalThumbHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundTopOffset:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundShadowPaddingTop:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbTranslateY:F

    neg-float v3, v3

    iget v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbShadowY:F

    neg-float v4, v4

    iget v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageTextShadowPaddingY:F

    neg-float v5, v5

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->isLayoutRTL()Z

    move-result v6

    if-eqz v6, :cond_53

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalMarginEnd:I

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    sub-int v6, v0, v6

    iget v7, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndVerticalThumbWidth:I

    add-int/2addr v0, v7

    iget v7, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageMarginEnd:I

    sub-int/2addr v0, v7

    iget v7, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundShadowPaddingEnd:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    iget v7, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbTranslateX:F

    iget v8, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbShadowX:F

    neg-float v8, v8

    iget v9, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbDrawableBackgroundScaleCenterX:I

    sub-int/2addr v9, v6

    goto :goto_7d

    :cond_53
    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbWidth:I

    sub-int v6, v0, v6

    iget v7, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalMarginEnd:I

    sub-int/2addr v6, v7

    iget v8, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    add-int/2addr v6, v8

    int-to-float v8, v0

    iget v9, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageWidth:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageMarginEnd:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndVerticalThumbWidth:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v7, v7

    sub-float/2addr v8, v7

    iget v7, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundShadowPaddingEnd:I

    int-to-float v7, v7

    add-float/2addr v7, v8

    iget v8, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbTranslateX:F

    neg-float v8, v8

    iget v9, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbShadowX:F

    sub-int/2addr v0, v6

    iget v10, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbDrawableBackgroundScaleCenterX:I

    sub-int/2addr v0, v10

    move v13, v9

    move v9, v0

    move v0, v7

    move v7, v8

    move v8, v13

    :goto_7d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    int-to-float v6, v6

    int-to-float v2, v2

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentWidthScale:F

    iget v11, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentHeightScale:F

    int-to-float v9, v9

    iget v12, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbDrawableBackgroundScaleCenterY:I

    int-to-float v12, v12

    invoke-virtual {p1, v6, v11, v9, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->verticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9c

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9c
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentWidthScale:F

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentHeightScale:F

    iget v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbDrawableBackgroundScaleCenterY:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v9, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b6

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b6
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mNeedShowMessage:Z

    if-eqz v2, :cond_f0

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimatedValue:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_c6

    const/4 v2, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v2, 0x0

    :goto_c7
    if-nez v2, :cond_f0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d7
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->realShowMessage:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTextX:F

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTextY:F

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    if-nez p0, :cond_ea

    const-string p0, "mMessagePaint"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_ea
    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_f0
    return-void
.end method

.method private final executePressAnimator(Z)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mWidthScaleHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "mWidthScaleHolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentWidthScale:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz p1, :cond_1a

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mWidthEndScale:F

    goto :goto_1b

    :cond_1a
    move v6, v4

    :goto_1b
    const/4 v7, 0x1

    aput v6, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHeightScaleHolder:Landroid/animation/PropertyValuesHolder;

    if-nez v0, :cond_2b

    const-string v0, "mHeightScaleHolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2b
    new-array v3, v2, [F

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentHeightScale:F

    aput v6, v3, v5

    if-eqz p1, :cond_36

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHeightEndScale:F

    goto :goto_37

    :cond_36
    move v6, v4

    :goto_37
    aput v6, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbTranslateXHolder:Landroid/animation/PropertyValuesHolder;

    if-nez v0, :cond_46

    const-string v0, "mThumbTranslateXHolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_46
    new-array v3, v2, [F

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCurrentThumbTranslateScaleX:F

    aput v6, v3, v5

    const/4 v6, 0x0

    if-eqz p1, :cond_51

    move v8, v4

    goto :goto_52

    :cond_51
    move v8, v6

    :goto_52
    aput v8, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mNeedShowMessage:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_65

    const-string v0, "mMessageAlphaAnimator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_66

    :cond_65
    move-object v1, v0

    :goto_66
    new-array v0, v2, [F

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimatedValue:F

    aput v2, v0, v5

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    move v4, v6

    :goto_70
    aput v4, v0, v7

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :cond_75
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic getMAnimationState$annotations()V
    .registers 0

    return-void
.end method

.method private static synthetic getMDragState$annotations()V
    .registers 0

    return-void
.end method

.method private static synthetic getMState$annotations()V
    .registers 0

    return-void
.end method

.method private final getThumbInitBottomCenterY()Lh4/z;
    .registers 5

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->getVerticalRange()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    const-string v3, "mRecyclerView"

    if-nez v1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    if-nez v1, :cond_18

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_18
    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_20

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_21

    :cond_20
    move-object v2, v1

    :goto_21
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbInitBottomCenterY:I

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method private final getThumbInitCenterY()Lh4/z;
    .registers 5

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->getVerticalRange()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    const-string v3, "mRecyclerView"

    if-nez v1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    if-nez v1, :cond_18

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_18
    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_20

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_21

    :cond_20
    move-object v2, v1

    :goto_21
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    aget v0, v0, v2

    add-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbInitCenterY:I

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method private final getVerticalRange()[I
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalRange:[I

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->isDragging()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_d

    :cond_b
    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->thumbTopMargin:I

    :goto_d
    aput v1, v0, v2

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalRange:[I

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_28

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewHeight:I

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2c

    :cond_28
    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewHeight:I

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->thumbBottomMargin:I

    :goto_2c
    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalRange:[I

    return-object p0
.end method

.method private final hide(I)V
    .registers 11

    const-string v0, "COUIAppListFastScroller"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    const/4 v2, 0x0

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "hide, ANIMATION_STATE_IN"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_40

    if-eq v1, v7, :cond_17

    goto :goto_72

    :cond_17
    invoke-static {v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v7, [F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v4

    aput v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_72

    :cond_40
    const-string v1, "hide, ANIMATION_STATE_FADING_IN"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-static {v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v7, [F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v4

    aput v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_72
    return-void
.end method

.method private final initAnimators()V
    .registers 8

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorListener;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorUpdater;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$AnimatorUpdater;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCommonInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbScaleAnimatorUpdateListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAnimatorUpdateListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_fc

    const-string v2, "WIDTH_ANIM_HOLDER"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "ofFloat(WIDTH_ANIM_HOLDER, 0f, 0f)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mWidthScaleHolder:Landroid/animation/PropertyValuesHolder;

    new-array v1, v0, [F

    fill-array-data v1, :array_104

    const-string v2, "HEIGHT_ANIM_HOLDER"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "ofFloat(HEIGHT_ANIM_HOLDER, 0f, 0f)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHeightScaleHolder:Landroid/animation/PropertyValuesHolder;

    new-array v1, v0, [F

    fill-array-data v1, :array_10c

    const-string v2, "THUMB_TRANSLATE_X_HOLDER"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "ofFloat(THUMB_TRANSLATE_X_HOLDER, 0f, 0f)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbTranslateXHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mWidthScaleHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    if-nez v2, :cond_75

    const-string v2, "mWidthScaleHolder"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_75
    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHeightScaleHolder:Landroid/animation/PropertyValuesHolder;

    if-nez v5, :cond_83

    const-string v5, "mHeightScaleHolder"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_83
    aput-object v5, v1, v2

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbTranslateXHolder:Landroid/animation/PropertyValuesHolder;

    if-nez v2, :cond_8f

    const-string v2, "mThumbTranslateXHolder"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_8f
    aput-object v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "ofPropertyValuesHolder(\n…ranslateXHolder\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mThumbScaleAnimator"

    if-nez v0, :cond_a4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_a4
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_b1
    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCommonInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_be

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_be
    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbScaleAnimatorUpdateListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$ThumbScaleAnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [F

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "ofFloat()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mMessageAlphaAnimator"

    if-nez v0, :cond_d8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_d8
    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAnimatorUpdateListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$MessageAnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_e5
    const-wide/16 v5, 0xa0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_f3

    :cond_f2
    move-object v3, v0

    :goto_f3
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mCommonInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0, v4}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->resetPressAnimator(Z)V

    return-void

    :array_fc
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_104
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_10c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final initMessagePaint(Landroid/content/Context;)V
    .registers 7

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const-string v2, "mMessagePaint"

    if-nez v0, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070440

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_2d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2d
    const-string v3, "sans-serif-medium"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_3f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3f
    const v3, 0x7f04021d

    invoke-static {p1, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    if-nez p1, :cond_51

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_51
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    if-nez p1, :cond_5c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5d

    :cond_5c
    move-object v1, p1

    :goto_5d
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float p1, v0, p1

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScaleEndVerticalThumbHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTextY:F

    return-void
.end method

.method private final isLayoutRTL()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_a

    const-string p0, "mRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private final isPointInsideVerticalThumb(FF)Z
    .registers 12

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbWidth:I

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalMarginEnd:I

    add-int v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    int-to-float v4, v3

    const/high16 v5, 0x40200000  # 2.5f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    int-to-float v0, v4

    int-to-float v1, v3

    mul-float/2addr v1, v5

    add-float/2addr v1, v0

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbCenterY:I

    int-to-float v3, v0

    iget v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbHeight:I

    int-to-float v6, v4

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbBackgroundShadowPaddingTop:I

    int-to-float v8, v6

    mul-float/2addr v8, v5

    add-float/2addr v8, v3

    int-to-float v0, v0

    int-to-float v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    int-to-float v0, v6

    mul-float/2addr v0, v5

    sub-float/2addr v3, v0

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->isLayoutRTL()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_39

    cmpg-float p0, p1, v2

    if-gtz p0, :cond_3f

    goto :goto_3d

    :cond_39
    cmpl-float p0, p1, v1

    if-ltz p0, :cond_3f

    :goto_3d
    move p0, v0

    goto :goto_40

    :cond_3f
    move p0, v4

    :goto_40
    if-eqz p0, :cond_4b

    cmpl-float p0, p2, v8

    if-ltz p0, :cond_4b

    cmpg-float p0, p2, v3

    if-gtz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v4

    :goto_4c
    return v0
.end method

.method private final letGo()V
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_1b

    :cond_b
    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorState:I

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->executePressAnimator(Z)V

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorState:I

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->executePressAnimator(Z)V

    :goto_1b
    return-void
.end method

.method private static final mHideRunnable$lambda$0(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mIsThumbAlwaysShow:Z

    if-nez v0, :cond_e

    const/16 v0, 0xa0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->hide(I)V

    :cond_e
    return-void
.end method

.method private final press()V
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    goto :goto_19

    :cond_9
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorState:I

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->executePressAnimator(Z)V

    goto :goto_19

    :cond_14
    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorState:I

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->executePressAnimator(Z)V

    :goto_19
    return-void
.end method

.method private final resetHideDelay(I)V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->cancelHide()V

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mIsThumbAlwaysShow:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_11

    const-string v0, "mRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method

.method private final resetPressAnimator(Z)V
    .registers 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    const-string v1, "mThumbScaleAnimator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_12
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimatorListener:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$PressAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_2e

    const-string p0, "mMessageAlphaAnimator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move-object v2, p0

    :goto_2f
    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_34
    return-void
.end method

.method private final scrollTo(FF[II)I
    .registers 6

    const/4 p0, 0x1

    aget p0, p3, p0

    const/4 v0, 0x0

    aget p3, p3, v0

    sub-int/2addr p0, p3

    if-nez p0, :cond_a

    return v0

    :cond_a
    sub-float/2addr p2, p1

    int-to-float p0, p0

    div-float/2addr p2, p0

    int-to-float p0, p4

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method

.method private final setupCallbacks()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v2, "mRecyclerView"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_16
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_21
    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2e
    new-instance v3, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$setupCallbacks$1;

    invoke-direct {v3, p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$setupCallbacks$1;-><init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3e
    move-object v1, v0

    :goto_3f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_4a
    return-void
.end method

.method private final show()V
    .registers 12

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    const-wide/16 v1, 0xa0

    const/high16 v3, 0x3f800000  # 1.0f

    const-string v4, "null cannot be cast to non-null type kotlin.Float"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "show, ANIMATION_STATE_OUT"

    const-string v8, "COUIAppListFastScroller"

    const/4 v9, 0x1

    if-eqz v0, :cond_47

    const/4 v10, 0x3

    if-eq v0, v10, :cond_15

    goto :goto_6e

    :cond_15
    const-string v0, "show, ANIMATION_STATE_FADING_OUT"

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-static {v8, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v6, [F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v6, v5

    aput v3, v6, v9

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6e

    :cond_47
    invoke-static {v8, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v6, [F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v6, v5

    aput v3, v6, v9

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_6e
    return-void
.end method

.method private final updateScrollPositionInDragging(FF)V
    .registers 7

    const-string p1, "COUIAppListFastScroller"

    const-string v0, "updateScrollPositionInDragging"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->getVerticalRange()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDefaultVerticalThumbHeight:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    int-to-float v1, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbInitCenterY:I

    if-le p2, v0, :cond_41

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mThumbInitBottomCenterY:I

    if-lt p2, v0, :cond_2d

    goto :goto_41

    :cond_2d
    const-string v0, "updateScrollPositionInDragging, update mVerticalThumbCenterY"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbCenterY:I

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_3e

    const-string p0, "mRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_41
    :goto_41
    return-void
.end method

.method private final verticalScrollTo(F)V
    .registers 9

    const-string v0, "COUIAppListFastScroller"

    const-string v1, "verticalScrollTo"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->calculateScrollerTouchFraction(F)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAppList:Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;

    const-string v2, "mAppList"

    const/4 v3, 0x0

    if-nez v1, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_16
    invoke-virtual {v1}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->getFastScrollSectionInfoList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "fastScrollSections[0]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-virtual {v5}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->getTouchFraction()F

    move-result v6

    cmpl-float v6, v6, v0

    if-lez v6, :cond_3f

    goto :goto_46

    :cond_3f
    const-string v4, "info"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_2a

    :cond_46
    :goto_46
    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTargetPosition:I

    invoke-virtual {v4}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->getFastScrollToPos()I

    move-result v1

    if-eq v0, v1, :cond_ac

    invoke-virtual {v4}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->getFastScrollToPos()I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTargetPosition:I

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mRecyclerView"

    if-nez v0, :cond_5e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    invoke-virtual {v4}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->getTouchFraction()F

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_6c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-boolean v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->hasLockedAppEntry:Z

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAppList:Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;

    if-nez v1, :cond_7e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_7e
    invoke-virtual {v1}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->getMAppEntries()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8d

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTargetPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    :cond_8d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v1

    if-nez v1, :cond_98

    const/4 v1, 0x3

    goto :goto_99

    :cond_98
    const/4 v1, 0x2

    :goto_99
    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHeaderCount:I

    if-eqz v0, :cond_a5

    iget v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTargetPosition:I

    add-int/2addr v2, v1

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mOffsetY:I

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_a5
    invoke-virtual {v4}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->getSectionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setMessage(Ljava/lang/String;)V

    :cond_ac
    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalDragY:F

    return-void
.end method


# virtual methods
.method public final destroyCallbacks()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v2, "mRecyclerView"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_16
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_21
    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move-object v1, v0

    :goto_2f
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_3a
    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->cancelHide()V

    return-void
.end method

.method public final getAlphabeticalAppsList()Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAppList:Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;

    if-nez p0, :cond_a

    const-string p0, "mAppList"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    return-object p0
.end method

.method public final getMAnimationState()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final getNeedShowMessage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mNeedShowMessage:Z

    return p0
.end method

.method public final getThumbAlwaysShow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mIsThumbAlwaysShow:Z

    return p0
.end method

.method public final getThumbTopMargin()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->thumbTopMargin:I

    return p0
.end method

.method public final hide()V
    .registers 2

    const/16 v0, 0xa0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->hide(I)V

    return-void
.end method

.method public final isDragging()Z
    .registers 2

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isVisible()Z
    .registers 2

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "state"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const-string v1, "mRecyclerView"

    if-nez p3, :cond_1c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_1c
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_3f

    iget p2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p3, :cond_2c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_2c
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_33

    goto :goto_3f

    :cond_33
    iget p2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    if-eqz p2, :cond_3e

    iget-boolean p2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_3e

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    :cond_3e
    return-void

    :cond_3f
    :goto_3f
    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_47

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewWidth:I

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_55

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_56

    :cond_55
    move-object v0, p1

    :goto_56
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setState(I)V

    const-string p0, "COUIAppListFastScroller"

    const-string p1, "onDrawOver set state hidden"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 7

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ev"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_32

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_35

    if-eqz p1, :cond_35

    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalDragY:F

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setState(I)V

    :goto_30
    move v0, v2

    goto :goto_35

    :cond_32
    if-ne p1, v1, :cond_35

    goto :goto_30

    :cond_35
    :goto_35
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "me"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIAppListFastScroller"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    if-nez v0, :cond_29

    return-void

    :cond_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_50

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    if-eqz p1, :cond_8e

    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalDragY:F

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setState(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->getThumbInitCenterY()Lh4/z;

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->getThumbInitBottomCenterY()Lh4/z;

    goto :goto_8e

    :cond_50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_65

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    if-ne v0, v1, :cond_65

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalDragY:F

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setState(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDragState:I

    goto :goto_8e

    :cond_65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_8e

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    if-ne v0, v1, :cond_8e

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->show()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->updateScrollPositionInDragging(FF)V

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDragState:I

    if-ne v0, v1, :cond_88

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->verticalScrollTo(F)V

    :cond_88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRealDy:I

    :cond_8e
    :goto_8e
    return-void
.end method

.method public final reSetDy()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRealDy:I

    return-void
.end method

.method public final requestRedraw()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_a

    const-string p0, "mRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final setAlphabeticalAppsList(Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;)V
    .registers 4

    const-string v0, "appsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAppList:Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mListContentLength:I

    const/4 v1, 0x0

    if-nez p1, :cond_13

    const-string p1, "mAppList"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_13
    invoke-virtual {p1}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->getMAppEntries()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    :cond_20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->hasLockedAppEntry:Z

    return-void
.end method

.method public final setHeaderCount(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mHeaderCount:I

    return-void
.end method

.method public final setMAnimationState(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mAnimationState:I

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_e0

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_13
    if-gt v3, v0, :cond_38

    if-nez v4, :cond_19

    move v5, v3

    goto :goto_1a

    :cond_19
    move v5, v0

    :goto_1a
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_28

    move v5, v1

    goto :goto_29

    :cond_28
    move v5, v2

    :goto_29
    if-nez v4, :cond_32

    if-nez v5, :cond_2f

    move v4, v1

    goto :goto_13

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_32
    if-nez v5, :cond_35

    goto :goto_38

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_38
    :goto_38
    add-int/2addr v0, v1

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->realShowMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    const-string v4, "mMessagePaint"

    if-nez v0, :cond_58

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_58
    iget-object v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTextWidth:F

    iget v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageTextPadding:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundInternalPadding:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageWidth:F

    iget v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageMaximumWidth:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_bd

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_75
    if-ge v1, v0, :cond_c7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mDots:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->realShowMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    if-nez v5, :cond_a0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_a0
    iget-object v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->realShowMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTextWidth:F

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageTextPadding:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundInternalPadding:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageWidth:F

    iget v6, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageMaximumWidth:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_ba

    goto :goto_c7

    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    :cond_bd
    iget p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageMinimumWidth:I

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c7

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageWidth:F

    :cond_c7
    :goto_c7
    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_d3

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageBackgroundHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_d3
    iget p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mMessageWidth:F

    iget v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTextWidth:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mTextX:F

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->requestRedraw()V

    :cond_e0
    return-void
.end method

.method public final setNeedShowMessage(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mNeedShowMessage:Z

    if-eq v0, p1, :cond_c

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->resetPressAnimator(Z)V

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mNeedShowMessage:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->requestRedraw()V

    :cond_c
    return-void
.end method

.method public final setOffsetY(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mOffsetY:I

    return-void
.end method

.method public final setReadyToDraw(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mIsReadyDraw:Z

    if-nez p1, :cond_a

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mNeedVerticalScrollbar:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->requestRedraw()V

    :cond_a
    return-void
.end method

.method public final setState(I)V
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    if-eq v1, v0, :cond_d

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->press()V

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->cancelHide()V

    :cond_d
    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->requestRedraw()V

    goto :goto_16

    :cond_13
    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->show()V

    :goto_16
    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    const/16 v2, 0x7d0

    if-ne v1, v0, :cond_25

    if-eq p1, v0, :cond_25

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->resetHideDelay(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->letGo()V

    goto :goto_2b

    :cond_25
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->resetHideDelay(I)V

    :cond_2b
    :goto_2b
    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    return-void
.end method

.method public final setThumbAlwaysShow(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mIsThumbAlwaysShow:Z

    if-eq p1, v0, :cond_16

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mIsThumbAlwaysShow:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->cancelHide()V

    goto :goto_16

    :cond_c
    iget p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    const/16 p1, 0x7d0

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->resetHideDelay(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public final setThumbTopMargin(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->thumbTopMargin:I

    return-void
.end method

.method public final updateScrollPosition(II)V
    .registers 9

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->getVerticalRange()[I

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_e

    const-string v0, "mRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    sub-int/2addr v2, v4

    if-le v0, v2, :cond_23

    iget v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewHeight:I

    iget v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mScrollbarMinimumRange:I

    if-lt v4, v5, :cond_23

    move v4, v1

    goto :goto_24

    :cond_23
    move v4, v3

    :goto_24
    iput-boolean v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mNeedVerticalScrollbar:Z

    iget v5, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mListContentLength:I

    if-nez v5, :cond_2c

    iput v0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mListContentLength:I

    :cond_2c
    if-nez v4, :cond_36

    iget p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    if-eqz p1, :cond_35

    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setState(I)V

    :cond_35
    return-void

    :cond_36
    if-nez v0, :cond_39

    return-void

    :cond_39
    iget v4, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v0, v4

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_49

    aget p1, p1, v3

    add-int/2addr v2, p1

    goto :goto_50

    :cond_49
    int-to-float v0, v2

    mul-float/2addr p2, v0

    aget p1, p1, v3

    int-to-float p1, p1

    add-float/2addr p2, p1

    float-to-int v2, p2

    :goto_50
    iput v2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mVerticalThumbCenterY:I

    iget p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->mState:I

    if-eqz p1, :cond_58

    if-ne p1, v1, :cond_5b

    :cond_58
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->setState(I)V

    :cond_5b
    return-void
.end method
