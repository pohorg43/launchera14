.class public Landroidx/recyclerview/widget/COUIFastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/COUIFastScroller$AnimatorUpdater;,
        Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;,
        Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;,
        Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;,
        Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DIRECTION:I = 0x1

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final HEIGHT_ANIM_HOLDER:Ljava/lang/String; = "HEIGHT_ANIM_HOLDER"

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x7d0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x7d0

.field private static final HIDE_DURATION_MS:I = 0xa0

.field private static final MEDIUM_FONT:Ljava/lang/String; = "sans-serif-medium"

.field private static final MIN_VELOCITY_WEAK:I = 0xfa

.field private static final MIN_VELOCITY_WEAKEST:I = 0x46

.field public static final MIN_VIBRATOR_TIME:I = 0x64

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0xa0

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final THUMB_TRANSLATE_X_HOLDER:Ljava/lang/String; = "THUMB_TRANSLATE_X_HOLDER"

.field private static final TOUCH_SCALE_FACTOR:F = 2.5f

.field private static final WIDTH_ANIM_HOLDER:Ljava/lang/String; = "WIDTH_ANIM_HOLDER"


# instance fields
.field private lastVibratorTime:J

.field public mAnimationState:I

.field private final mCommonInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCurrentHeightScale:F

.field private mCurrentThumbShadowX:F

.field private mCurrentThumbShadowY:F

.field private mCurrentThumbTranslateScaleX:F

.field private mCurrentThumbTranslateX:F

.field private mCurrentThumbTranslateY:F

.field private mCurrentWidthScale:F

.field private final mDefaultVerticalMarginEnd:I

.field private final mDefaultVerticalThumbHeight:I

.field private final mDefaultVerticalThumbWidth:I

.field private final mDots:Ljava/lang/String;

.field private mDragState:I

.field private mEnableAdaptiveVibrator:Z

.field private mEnabled:Z

.field private mHasMotorVibrator:Z

.field private final mHeightEndScale:F

.field private mHeightScaleHolder:Landroid/animation/PropertyValuesHolder;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mIsThumbAlwaysShow:Z

.field private mLinearMotorVibrator:Ljava/lang/Object;

.field private mLowVelocityThreshold:I

.field private mMessage:Ljava/lang/String;

.field private mMessageAlphaAnimatedValue:F

.field private mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mMessageAnimatorUpdateListener:Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;

.field private final mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

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

.field private mMidVelocityThreshold:I

.field private mNeedShowMessage:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mPressAnimatorListener:Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;

.field private mPressAnimatorState:I

.field private mPressAnimators:Landroid/animation/AnimatorSet;

.field private mRealShowMessage:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScaleEndThumbTranslateX:I

.field private mScaleEndThumbTranslateY:F

.field private final mScaleEndVerticalThumbHeight:I

.field private final mScaleEndVerticalThumbWidth:I

.field private final mScrollbarMinimumRange:I

.field public final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field private mTextWidth:F

.field private mTextX:F

.field private mTextY:F

.field private mThumbBackgroundShadowPaddingEnd:I

.field private mThumbBackgroundShadowPaddingTop:I

.field private mThumbBottomMargin:I

.field private final mThumbDrawableBackgroundScaleCenterX:I

.field private final mThumbDrawableBackgroundScaleCenterY:I

.field private mThumbScaleAnimator:Landroid/animation/ValueAnimator;

.field private mThumbScaleAnimatorUpdateListener:Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;

.field private mThumbTopMargin:I

.field private mThumbTranslateXHolder:Landroid/animation/PropertyValuesHolder;

.field private mTrackerMaxVelocity:I

.field private mTrackerPeriod:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalDragY:F

.field private final mVerticalRange:[I

.field private mVerticalThumbCenterY:I

.field private final mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalThumbDrawableBackground:Landroid/graphics/drawable/Drawable;

.field private mVibrateIntensity:F

.field private mVibrateLevel:I

.field private final mWidthEndScale:F

.field private mWidthScaleHolder:Landroid/animation/PropertyValuesHolder;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V
    .registers 12

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentWidthScale:F

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentHeightScale:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateX:F

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateScaleX:F

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndThumbTranslateY:F

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateY:F

    new-instance v2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCommonInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimatorState:I

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimatedValue:F

    const-string v3, ""

    iput-object v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessage:Ljava/lang/String;

    iput-object v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRealShowMessage:Ljava/lang/String;

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mIsThumbAlwaysShow:Z

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewWidth:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewHeight:I

    const/16 v3, 0x1f40

    iput v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTrackerMaxVelocity:I

    const/16 v3, 0xbb8

    iput v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mLowVelocityThreshold:I

    const/16 v3, 0x1770

    iput v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMidVelocityThreshold:I

    const/16 v3, 0x3e8

    iput v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTrackerPeriod:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->lastVibratorTime:J

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHasMotorVibrator:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mEnableAdaptiveVibrator:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mEnabled:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mNeedVerticalScrollbar:Z

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDragState:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundHeight:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundShadowPaddingEnd:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundShadowPaddingTop:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingTop:I

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbShadowY:F

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbShadowX:F

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageTextShadowPaddingY:F

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVibrateIntensity:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalRange:[I

    new-array v1, v0, [F

    fill-array-data v1, :array_220

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mAnimationState:I

    new-instance v1, Landroidx/recyclerview/widget/COUIFastScroller$1;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/COUIFastScroller$1;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroidx/recyclerview/widget/COUIFastScroller$2;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/COUIFastScroller$2;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_default_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalThumbWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_default_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalThumbHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_default_vertical_margin_end:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalMarginEnd:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_scale_end_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndVerticalThumbWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_scale_end_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndVerticalThumbHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_bar_background_scale_x_offset:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbDrawableBackgroundScaleCenterX:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_scale_shadow_padding_end:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_scale_shadow_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingTop:I

    div-int/lit8 v6, v3, 0x2

    iput v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbDrawableBackgroundScaleCenterY:I

    int-to-float v4, v4

    int-to-float v6, v1

    div-float/2addr v4, v6

    iput v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mWidthEndScale:F

    int-to-float v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHeightEndScale:F

    sget v4, Lcom/support/appcompat/R$drawable;->coui_fast_scroller_slide_bar_background:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget v4, Lcom/support/appcompat/R$drawable;->coui_fast_scroller_union:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_bar_thumb_translate_x:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndThumbTranslateX:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_bar_thumb_translate_y:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndThumbTranslateY:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_bar_thumb_shadow_padding_y:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbShadowY:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_bar_thumb_shadow_padding_x:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbShadowX:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_union_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_union_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    sub-int/2addr v1, v6

    div-int/2addr v1, v0

    sub-int/2addr v3, v7

    div-int/2addr v3, v0

    add-int/2addr v6, v1

    add-int/2addr v7, v3

    invoke-virtual {v4, v1, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget v0, Lcom/support/appcompat/R$drawable;->coui_fast_scroller_message_background:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageTextPadding:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_background_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundInternalPadding:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_background_top_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundTopOffset:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_minimum_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_shadow_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundShadowPaddingEnd:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_shadow_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundShadowPaddingTop:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_text_shadow_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageTextShadowPaddingY:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_max_message_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageMaximumWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_minimum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageMinimumWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_margin_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageMarginEnd:I

    sget v0, Lcom/support/appcompat/R$string;->fast_scroller_dots:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDots:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_minimum_range:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScrollbarMinimumRange:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_thumb_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbTopMargin:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_thumb_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBottomMargin:I

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHasMotorVibrator:Z

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/COUIFastScroller;->initMessagePaint(Landroid/content/Context;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->initAnimators()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :array_220
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/COUIFastScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mIsThumbAlwaysShow:Z

    return p0
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/COUIFastScroller;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->hide(I)V

    return-void
.end method

.method public static synthetic access$1000(Landroidx/recyclerview/widget/COUIFastScroller;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateScaleX:F

    return p0
.end method

.method public static synthetic access$1002(Landroidx/recyclerview/widget/COUIFastScroller;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateScaleX:F

    return p1
.end method

.method public static synthetic access$1102(Landroidx/recyclerview/widget/COUIFastScroller;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateX:F

    return p1
.end method

.method public static synthetic access$1200(Landroidx/recyclerview/widget/COUIFastScroller;)I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndThumbTranslateX:I

    return p0
.end method

.method public static synthetic access$1302(Landroidx/recyclerview/widget/COUIFastScroller;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateY:F

    return p1
.end method

.method public static synthetic access$1400(Landroidx/recyclerview/widget/COUIFastScroller;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndThumbTranslateY:F

    return p0
.end method

.method public static synthetic access$1500(Landroidx/recyclerview/widget/COUIFastScroller;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimatedValue:F

    return p0
.end method

.method public static synthetic access$1502(Landroidx/recyclerview/widget/COUIFastScroller;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimatedValue:F

    return p1
.end method

.method public static synthetic access$1600(Landroidx/recyclerview/widget/COUIFastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$1700(Landroidx/recyclerview/widget/COUIFastScroller;)Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public static synthetic access$1802(Landroidx/recyclerview/widget/COUIFastScroller;I)I
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimatorState:I

    return p1
.end method

.method public static synthetic access$1900(Landroidx/recyclerview/widget/COUIFastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawableBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/COUIFastScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mEnabled:Z

    return p0
.end method

.method public static synthetic access$2000(Landroidx/recyclerview/widget/COUIFastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$300(Landroidx/recyclerview/widget/COUIFastScroller;)V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->performFeedback()V

    return-void
.end method

.method public static synthetic access$600(Landroidx/recyclerview/widget/COUIFastScroller;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$700(Landroidx/recyclerview/widget/COUIFastScroller;)V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->cancelHide()V

    return-void
.end method

.method public static synthetic access$802(Landroidx/recyclerview/widget/COUIFastScroller;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentHeightScale:F

    return p1
.end method

.method public static synthetic access$900(Landroidx/recyclerview/widget/COUIFastScroller;)F
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentWidthScale:F

    return p0
.end method

.method public static synthetic access$902(Landroidx/recyclerview/widget/COUIFastScroller;F)F
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentWidthScale:F

    return p1
.end method

.method private cancelHide()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private computeVelocityWithTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 p1, 0x3

    if-eq v0, p1, :cond_19

    goto :goto_25

    :cond_10
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->initVelocityTrackerIfNotExists()V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_25

    :cond_19
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->recycleVelocityTracker()V

    goto :goto_25

    :cond_1d
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->initOrResetVelocityTracker()V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_25
    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->cancelHide()V

    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 16

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbCenterY:I

    iget v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingTop:I

    add-int/2addr v2, v3

    int-to-float v1, v1

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndVerticalThumbHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundTopOffset:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundShadowPaddingTop:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateY:F

    neg-float v3, v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbShadowY:F

    neg-float v4, v4

    iget v5, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageTextShadowPaddingY:F

    neg-float v5, v5

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->isLayoutRTL()Z

    move-result v6

    if-eqz v6, :cond_4f

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalMarginEnd:I

    iget v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    sub-int v6, v0, v6

    iget v7, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndVerticalThumbWidth:I

    add-int/2addr v0, v7

    iget v7, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageMarginEnd:I

    sub-int/2addr v0, v7

    iget v7, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundShadowPaddingEnd:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    iget v7, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateX:F

    iget v8, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbShadowX:F

    neg-float v8, v8

    iget v9, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbDrawableBackgroundScaleCenterX:I

    sub-int/2addr v9, v6

    goto :goto_79

    :cond_4f
    iget v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalThumbWidth:I

    sub-int v6, v0, v6

    iget v7, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalMarginEnd:I

    sub-int/2addr v6, v7

    iget v8, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    add-int/2addr v6, v8

    int-to-float v8, v0

    iget v9, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageWidth:F

    sub-float/2addr v8, v9

    iget v9, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndVerticalThumbWidth:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v7, v7

    sub-float/2addr v8, v7

    iget v7, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageMarginEnd:I

    int-to-float v7, v7

    sub-float/2addr v8, v7

    iget v7, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundShadowPaddingEnd:I

    int-to-float v7, v7

    add-float/2addr v7, v8

    iget v8, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateX:F

    neg-float v8, v8

    iget v9, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbShadowX:F

    sub-int/2addr v0, v6

    iget v10, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbDrawableBackgroundScaleCenterX:I

    sub-int/2addr v0, v10

    move v13, v9

    move v9, v0

    move v0, v7

    move v7, v8

    move v8, v13

    :goto_79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    int-to-float v6, v6

    int-to-float v2, v2

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentWidthScale:F

    iget v11, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentHeightScale:F

    int-to-float v9, v9

    iget v12, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbDrawableBackgroundScaleCenterY:I

    int-to-float v12, v12

    invoke-virtual {p1, v6, v11, v9, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentWidthScale:F

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentHeightScale:F

    iget v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbDrawableBackgroundScaleCenterY:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v9, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mNeedShowMessage:Z

    if-eqz v2, :cond_d9

    iget v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimatedValue:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_d9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRealShowMessage:Ljava/lang/String;

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTextX:F

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTextY:F

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_d9
    return-void
.end method

.method private executePressAnimator(Z)V
    .registers 10

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mWidthScaleHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentWidthScale:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_11

    iget v5, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mWidthEndScale:F

    goto :goto_12

    :cond_11
    move v5, v3

    :goto_12
    const/4 v6, 0x1

    aput v5, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHeightScaleHolder:Landroid/animation/PropertyValuesHolder;

    new-array v2, v1, [F

    iget v5, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentHeightScale:F

    aput v5, v2, v4

    if-eqz p1, :cond_25

    iget v5, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHeightEndScale:F

    goto :goto_26

    :cond_25
    move v5, v3

    :goto_26
    aput v5, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbTranslateXHolder:Landroid/animation/PropertyValuesHolder;

    new-array v2, v1, [F

    iget v5, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCurrentThumbTranslateScaleX:F

    aput v5, v2, v4

    const/4 v5, 0x0

    if-eqz p1, :cond_38

    move v7, v3

    goto :goto_39

    :cond_38
    move v7, v5

    :goto_39
    aput v7, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mNeedShowMessage:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    iget v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimatedValue:F

    aput v2, v1, v4

    if-eqz p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v5

    :goto_4e
    aput v3, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :cond_53
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private filterVibrator()Z
    .registers 7

    iget-wide v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->lastVibratorTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->lastVibratorTime:J

    return v1

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->lastVibratorTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gez v0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->lastVibratorTime:J

    return v1
.end method

.method private getVerticalRange()[I
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalRange:[I

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbTopMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewHeight:I

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBottomMargin:I

    sub-int/2addr v1, p0

    const/4 p0, 0x1

    aput v1, v0, p0

    return-object v0
.end method

.method private hide(I)V
    .registers 7

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mAnimationState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_e

    goto :goto_33

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mAnimationState:I

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_33
    return-void
.end method

.method private initAnimators()V
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorUpdater;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCommonInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;Landroidx/recyclerview/widget/COUIFastScroller$1;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbScaleAnimatorUpdateListener:Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;

    new-instance v0, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimatorListener:Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;

    new-instance v0, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;Landroidx/recyclerview/widget/COUIFastScroller$1;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAnimatorUpdateListener:Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_a0

    const-string v2, "WIDTH_ANIM_HOLDER"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mWidthScaleHolder:Landroid/animation/PropertyValuesHolder;

    new-array v1, v0, [F

    fill-array-data v1, :array_a8

    const-string v2, "HEIGHT_ANIM_HOLDER"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHeightScaleHolder:Landroid/animation/PropertyValuesHolder;

    new-array v1, v0, [F

    fill-array-data v1, :array_b0

    const-string v2, "THUMB_TRANSLATE_X_HOLDER"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbTranslateXHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mWidthScaleHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHeightScaleHolder:Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCommonInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbScaleAnimatorUpdateListener:Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [F

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAnimatorUpdateListener:Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mCommonInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/COUIFastScroller;->resetPressAnimator(Z)V

    return-void

    :array_a0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_b0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initMessagePaint(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_fast_scroller_message_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float p1, v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScaleEndVerticalThumbHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTextY:F

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isLayoutRTL()Z
    .registers 2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private letGo()V
    .registers 3

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimatorState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_15

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimatorState:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/COUIFastScroller;->executePressAnimator(Z)V

    :goto_15
    return-void
.end method

.method private performAdaptiveFeedback()Z
    .registers 12

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mLinearMotorVibrator:Ljava/lang/Object;

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHasMotorVibrator:Z

    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mLinearMotorVibrator:Ljava/lang/Object;

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_22

    goto :goto_61

    :cond_22
    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTrackerPeriod:I

    iget v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTrackerMaxVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMidVelocityThreshold:I

    if-le v5, v0, :cond_3b

    move v4, v1

    goto :goto_3c

    :cond_3b
    move v4, v2

    :goto_3c
    const/16 v0, 0x46

    if-le v5, v0, :cond_4b

    const/16 v1, 0xfa

    if-ge v5, v1, :cond_4b

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->filterVibrator()Z

    move-result v1

    if-eqz v1, :cond_4b

    return v2

    :cond_4b
    if-ge v5, v0, :cond_4e

    return v2

    :cond_4e
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mLinearMotorVibrator:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/oplus/os/LinearmotorVibrator;

    iget v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTrackerMaxVelocity:I

    const/16 v7, 0x4b0

    const/16 v8, 0x640

    iget v9, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVibrateLevel:I

    iget v10, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVibrateIntensity:F

    invoke-static/range {v3 .. v10}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->f(Lcom/oplus/os/LinearmotorVibrator;IIIIIIF)V

    return v2

    :cond_61
    :goto_61
    return v1
.end method

.method private performFeedback()V
    .registers 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHasMotorVibrator:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mEnableAdaptiveVibrator:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->performAdaptiveFeedback()Z

    :cond_b
    return-void
.end method

.method private press()V
    .registers 3

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimatorState:I

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_13

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimatorState:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/COUIFastScroller;->executePressAnimator(Z)V

    :goto_13
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private resetHideDelay(I)V
    .registers 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->cancelHide()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mIsThumbAlwaysShow:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void
.end method

.method private resetPressAnimator(Z)V
    .registers 4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimatorListener:Landroidx/recyclerview/widget/COUIFastScroller$PressAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_22

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mPressAnimators:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_22
    return-void
.end method

.method private scrollTo(FF[II)I
    .registers 7

    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->getThumbBottomMargin()I

    move-result p3

    sub-int/2addr v0, p3

    if-nez v0, :cond_f

    return v1

    :cond_f
    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewHeight:I

    sub-int/2addr p4, p0

    sub-float/2addr p2, p1

    int-to-float p0, v0

    div-float/2addr p2, p0

    int-to-float p0, p4

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method

.method private setupCallbacks()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/COUIFastScroller$3;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/COUIFastScroller$3;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private show()V
    .registers 6

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mAnimationState:I

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_35

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mAnimationState:I

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_35
    return-void
.end method

.method private verticalScrollTo(F)V
    .registers 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->getVerticalRange()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    const/4 v3, 0x1

    if-lez v2, :cond_14

    aget v2, v0, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1d

    :cond_14
    iget-object v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1d

    return-void

    :cond_1d
    iget v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbCenterY:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2c

    return-void

    :cond_2c
    iget v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalDragY:F

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    invoke-direct {p0, v2, p1, v0, v3}, Landroidx/recyclerview/widget/COUIFastScroller;->scrollTo(FF[II)I

    move-result v0

    if-eqz v0, :cond_41

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalDragY:F

    :cond_41
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->destroyCallbacks()V

    :cond_a
    iput-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_11

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->setupCallbacks()V

    :cond_11
    return-void
.end method

.method public getEnable()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mEnabled:Z

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getNeedShowMessage()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mNeedShowMessage:Z

    return p0
.end method

.method public getRealShowMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRealShowMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbAlwaysShow()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mIsThumbAlwaysShow:Z

    return p0
.end method

.method public getThumbBottomMargin()I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBottomMargin:I

    return p0
.end method

.method public getThumbTopMargin()I
    .registers 1

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbTopMargin:I

    return p0
.end method

.method public getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbDrawableBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public isDragging()Z
    .registers 2

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isPointInsideVerticalThumb(FF)Z
    .registers 12

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalThumbWidth:I

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalMarginEnd:I

    add-int v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingEnd:I

    int-to-float v4, v3

    const/high16 v5, 0x40200000  # 2.5f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    int-to-float v0, v4

    int-to-float v1, v3

    mul-float/2addr v1, v5

    add-float/2addr v1, v0

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbCenterY:I

    int-to-float v3, v0

    iget v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDefaultVerticalThumbHeight:I

    int-to-float v6, v4

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    iget v6, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBackgroundShadowPaddingTop:I

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

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_37

    cmpg-float p0, p1, v2

    if-gtz p0, :cond_45

    goto :goto_3b

    :cond_37
    cmpl-float p0, p1, v1

    if-ltz p0, :cond_45

    :goto_3b
    cmpl-float p0, p2, v8

    if-ltz p0, :cond_45

    cmpg-float p0, p2, v3

    if-gtz p0, :cond_45

    const/4 p0, 0x1

    goto :goto_46

    :cond_45
    const/4 p0, 0x0

    :goto_46
    return p0
.end method

.method public isVisible()Z
    .registers 2

    iget p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_21

    iget p2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_15

    goto :goto_21

    :cond_15
    iget p2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mAnimationState:I

    if-eqz p2, :cond_20

    iget-boolean p2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_20

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    :cond_20
    return-void

    :cond_21
    :goto_21
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewWidth:I

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/COUIFastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2d

    if-eqz p1, :cond_2d

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalDragY:F

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIFastScroller;->setState(I)V

    :goto_28
    move v0, v2

    goto :goto_2d

    :cond_2a
    if-ne p1, v1, :cond_2d

    goto :goto_28

    :cond_2d
    :goto_2d
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mEnableAdaptiveVibrator:Z

    if-eqz p1, :cond_c

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/COUIFastScroller;->computeVelocityWithTouchEvent(Landroid/view/MotionEvent;)V

    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2f

    if-eq p1, v0, :cond_1c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2f

    goto :goto_58

    :cond_1c
    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    if-ne p1, v0, :cond_58

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->show()V

    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDragState:I

    if-ne p1, v0, :cond_58

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->verticalScrollTo(F)V

    goto :goto_58

    :cond_2f
    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    if-ne p1, v0, :cond_58

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalDragY:F

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIFastScroller;->setState(I)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDragState:I

    goto :goto_58

    :cond_3d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/COUIFastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    if-eqz p1, :cond_58

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalDragY:F

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIFastScroller;->setState(I)V

    :cond_58
    :goto_58
    return-void
.end method

.method public requestRedraw()V
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mEnabled:Z

    if-nez p1, :cond_d

    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    if-eqz p1, :cond_d

    const/16 p1, 0xa0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->hide(I)V

    :cond_d
    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mEnableAdaptiveVibrator:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_95

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessage:Ljava/lang/String;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRealShowMessage:Ljava/lang/String;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTextWidth:F

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageTextPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundInternalPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageWidth:F

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageMaximumWidth:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_74

    const/4 v0, 0x1

    :goto_35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mDots:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRealShowMessage:Ljava/lang/String;

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTextWidth:F

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageTextPadding:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundInternalPadding:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageWidth:F

    iget v3, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageMaximumWidth:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_71

    goto :goto_7e

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_74
    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageMinimumWidth:I

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7e

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageWidth:F

    :cond_7e
    :goto_7e
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageWidth:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageBackgroundHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mMessageWidth:F

    iget v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTextWidth:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mTextX:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->requestRedraw()V

    :cond_95
    return-void
.end method

.method public setNeedShowMessage(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mNeedShowMessage:Z

    if-eq v0, p1, :cond_c

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->resetPressAnimator(Z)V

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mNeedShowMessage:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->requestRedraw()V

    :cond_c
    return-void
.end method

.method public setState(I)V
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    if-eq v1, v0, :cond_d

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->press()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->cancelHide()V

    :cond_d
    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->requestRedraw()V

    goto :goto_16

    :cond_13
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->show()V

    :goto_16
    iget v1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    const/16 v2, 0x7d0

    if-ne v1, v0, :cond_25

    if-eq p1, v0, :cond_25

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/COUIFastScroller;->resetHideDelay(I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->letGo()V

    goto :goto_2b

    :cond_25
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/COUIFastScroller;->resetHideDelay(I)V

    :cond_2b
    :goto_2b
    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    return-void
.end method

.method public setThumbAlwaysShow(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mIsThumbAlwaysShow:Z

    if-eq p1, v0, :cond_16

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mIsThumbAlwaysShow:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->cancelHide()V

    goto :goto_16

    :cond_c
    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    const/16 p1, 0x7d0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->resetHideDelay(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public setThumbBottomMargin(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbBottomMargin:I

    return-void
.end method

.method public setThumbTopMargin(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mThumbTopMargin:I

    return-void
.end method

.method public setVibrateIntensity(F)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVibrateIntensity:F

    return-void
.end method

.method public setVibrateLevel(I)V
    .registers 2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVibrateLevel:I

    return-void
.end method

.method public updateScrollPosition(II)V
    .registers 9

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->getVerticalRange()[I

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    sub-int/2addr v2, v4

    sub-int v4, v0, v2

    if-lez v4, :cond_1d

    iget v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewHeight:I

    iget v5, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mScrollbarMinimumRange:I

    if-lt v4, v5, :cond_1d

    move v4, v1

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    iput-boolean v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mNeedVerticalScrollbar:Z

    if-nez v4, :cond_2a

    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    if-eqz p1, :cond_29

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/COUIFastScroller;->setState(I)V

    :cond_29
    return-void

    :cond_2a
    iget v4, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v0, v4

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3c

    aget p1, p1, v3

    add-int/2addr v2, p1

    iput v2, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbCenterY:I

    goto :goto_45

    :cond_3c
    int-to-float v0, v2

    mul-float/2addr p2, v0

    aget p1, p1, v3

    int-to-float p1, p1

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mVerticalThumbCenterY:I

    :goto_45
    iget p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mState:I

    if-eqz p1, :cond_4b

    if-ne p1, v1, :cond_4e

    :cond_4b
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIFastScroller;->setState(I)V

    :cond_4e
    return-void
.end method
