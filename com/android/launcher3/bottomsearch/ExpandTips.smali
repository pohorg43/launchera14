.class public Lcom/android/launcher3/bottomsearch/ExpandTips;
.super Landroid/widget/PopupWindow;
.source ""


# static fields
.field public static final ALIGN_BOTTOM:I = 0x80

.field public static final ALIGN_END:I = 0x40

.field public static final ALIGN_LEFT:I = 0x10

.field public static final ALIGN_RIGHT:I = 0x8

.field public static final ALIGN_START:I = 0x20

.field public static final ANIMATION_DURATION:I = 0x12c

.field public static final DEFAULT_ALIGN_DIRECTION:I = 0x4

.field public static final MODE_INFO:I = 0x1

.field public static final MODE_TOOLTIPS:I = 0x0

.field private static final ONE:F = 1.0f

.field private static final POINT_EIGHT:F = 0.8f

.field private static final POINT_FIVE:F = 0.5f

.field private static final POINT_ONE:F = 0.1f

.field private static final POINT_THREE:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "ExpandTips"

.field private static final ZERO:F


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowOverflow:I

.field private mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowView:Landroid/widget/ImageView;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContentRectOnScreen:Landroid/graphics/Rect;

.field private mContentTv:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private mIsDismissing:Z

.field private mLeftOrTop:Z

.field private mMainPanel:Landroid/view/ViewGroup;

.field private mMode:I

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mParent:Landroid/view/View;

.field private mParentRectOnScreen:Landroid/graphics/Rect;

.field private mPivotX:F

.field private mPivotY:F

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowDirection:I

.field private final mTmpCoords:[I

.field private mViewPortOnScreen:Landroid/graphics/Rect;

.field private mViewportOffset:Landroid/graphics/Rect;

.field private mWindowLocationOnScreen:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/bottomsearch/ExpandTips;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mLeftOrTop:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    new-instance v0, Lcom/android/launcher3/bottomsearch/ExpandTips$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bottomsearch/ExpandTips$1;-><init>(Lcom/android/launcher3/bottomsearch/ExpandTips;)V

    iput-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/launcher3/bottomsearch/ExpandTips$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bottomsearch/ExpandTips$2;-><init>(Lcom/android/launcher3/bottomsearch/ExpandTips;)V

    iput-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/bottomsearch/ExpandTips;->init(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/bottomsearch/ExpandTips;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mAnchor:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/bottomsearch/ExpandTips;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->dismissPopupWindow()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/bottomsearch/ExpandTips;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/bottomsearch/ExpandTips;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/launcher3/bottomsearch/ExpandTips;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mIsDismissing:Z

    return p1
.end method

.method private addIndicator(Landroid/graphics/Rect;)V
    .registers 8

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_c9

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1b

    goto/16 :goto_c9

    :cond_1b
    const/16 v3, 0x10

    if-ne v1, v3, :cond_75

    iput-boolean v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mLeftOrTop:Z

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowOverflow:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_154

    :cond_75
    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowOverflow:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_154

    :cond_c9
    :goto_c9
    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    aget v3, v4, v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lt v1, p1, :cond_137

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mLeftOrTop:Z

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowOverflow:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_154

    :cond_137
    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x50

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowOverflow:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_154
    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private animateEnter()V
    .registers 11

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotX:F

    iget v8, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotY:F

    const v1, 0x3f4ccccd  # 0.8f

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3f4ccccd  # 0.8f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/android/launcher3/bottomsearch/ExpandTips$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bottomsearch/ExpandTips$5;-><init>(Lcom/android/launcher3/bottomsearch/ExpandTips;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateExit()V
    .registers 13

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v9, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotX:F

    iget v11, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotY:F

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3f4ccccd  # 0.8f

    const/high16 v6, 0x3f800000  # 1.0f

    const v7, 0x3f4ccccd  # 0.8f

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/android/launcher3/bottomsearch/ExpandTips$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bottomsearch/ExpandTips$6;-><init>(Lcom/android/launcher3/bottomsearch/ExpandTips;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private calculatePivot()V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x4

    if-ne v0, v4, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportWidth()I

    move-result v4

    if-lt v0, v4, :cond_23

    iput v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotX:F

    goto :goto_4b

    :cond_23
    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportWidth()I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    if-lez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    neg-int v0, v0

    :goto_3d
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotX:F

    goto :goto_4b

    :cond_47
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotX:F

    :goto_4b
    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    aget v1, v5, v1

    sub-int/2addr v4, v1

    if-lt v0, v4, :cond_5d

    iput v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotY:F

    goto :goto_80

    :cond_5d
    iput v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotY:F

    goto :goto_80

    :cond_60
    const/16 v4, 0x10

    if-ne v0, v4, :cond_65

    move v2, v3

    :cond_65
    iput v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotX:F

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mPivotY:F

    :goto_80
    return-void
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private dismissPopupWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->unregisterOrientationHandler()V

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private getViewportHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getViewportWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method private offsetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private prepareContent(Landroid/graphics/Rect;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_11

    invoke-direct {p0, p1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->addIndicator(Landroid/graphics/Rect;)V

    :cond_11
    return-void
.end method

.method private refreshCoordinated(Landroid/graphics/Rect;)V
    .registers 10

    iget v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4b

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportHeight()I

    move-result v3

    if-lt v1, v3, :cond_34

    iget p1, p1, Landroid/graphics/Rect;->top:I

    :goto_31
    sub-int/2addr p1, v3

    goto/16 :goto_b8

    :cond_34
    if-lt v2, v3, :cond_3a

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b8

    :cond_3a
    if-le v1, v2, :cond_45

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_b8

    :cond_45
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b8

    :cond_4b
    const/16 v1, 0x80

    if-ne v0, v1, :cond_91

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportHeight()I

    move-result v3

    if-lt v2, v3, :cond_7c

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_b8

    :cond_7c
    if-lt v1, v3, :cond_81

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_31

    :cond_81
    if-le v1, v2, :cond_8b

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b8

    :cond_8b
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b8

    :cond_91
    const/16 v1, 0x10

    if-ne v0, v1, :cond_9d

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_9f

    :cond_9d
    iget v0, p1, Landroid/graphics/Rect;->right:I

    :goto_9f
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    :goto_b8
    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mTmpCoords:[I

    aget v6, v5, v2

    aget v5, v5, v4

    iget-object v7, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    sub-int/2addr v3, v6

    aput v3, v7, v2

    sub-int/2addr v1, v5

    aput v1, v7, v4

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    aget v3, v7, v2

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mWindowLocationOnScreen:[I

    aget v3, v3, v4

    sub-int/2addr p1, v3

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewportOffset:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private registerOrientationHandler()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->unregisterOrientationHandler()V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private sizePopupWindow()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d98

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_40

    :cond_2f
    const/16 v3, 0x10

    if-ne v2, v3, :cond_40

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->getViewportHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v3, :cond_10a

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v5

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_10a
    return-void
.end method

.method private unregisterOrientationHandler()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mIsDismissing:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->animateExit()V

    goto :goto_e

    :cond_8
    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->dismissPopupWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mIsDismissing:Z

    :goto_e
    return-void
.end method

.method public init(I)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMode:I

    if-nez v1, :cond_f

    const v2, 0x7f0403a4

    const v3, 0x7f130204

    goto :goto_15

    :cond_f
    const v2, 0x7f0403a2

    const v3, 0x7f130206

    :goto_15
    iget-object v4, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/R$styleable;->COUIToolTips:[I

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowOverflow:I

    const/16 v4, 0xc

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/4 v8, 0x6

    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {v2, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/16 v10, 0xa

    invoke-virtual {v2, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v11, 0x8

    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/4 v13, 0x7

    invoke-virtual {v2, v13, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    const/16 v14, 0xb

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    const/16 v15, 0xf

    invoke-virtual {v2, v15, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    const/16 v11, 0x10

    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    const/16 v5, 0xe

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iget-object v7, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v16, v5

    const v5, 0x7f07032c

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v7, 0x0

    move/from16 v17, v6

    const v6, 0x3dcccccd  # 0.1f

    move/from16 v18, v11

    const/high16 v11, 0x3f800000  # 1.0f

    move/from16 v19, v15

    const v15, 0x3e99999a  # 0.3f

    invoke-direct {v2, v15, v7, v6, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d00f4

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iget-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/bottomsearch/ExpandTips;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    const v3, 0x7f0a01be

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentTv:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    const v3, 0x7f0a0501

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v9, v10, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iget-object v3, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v1, :cond_11f

    const v4, 0x7f071078

    goto :goto_122

    :cond_11f
    const v4, 0x7f07076d

    :goto_122
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x4

    invoke-static {v3, v2, v4}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentTv:Landroid/widget/TextView;

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    const v3, 0x7f0a023d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v1, :cond_152

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lcom/android/launcher3/bottomsearch/ExpandTips$3;

    invoke-direct {v1, v0}, Lcom/android/launcher3/bottomsearch/ExpandTips$3;-><init>(Lcom/android/launcher3/bottomsearch/ExpandTips;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_157

    :cond_152
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_157
    new-instance v1, Lcom/android/launcher3/bottomsearch/ExpandTips$4;

    invoke-direct {v1, v0, v2, v5}, Lcom/android/launcher3/bottomsearch/ExpandTips$4;-><init>(Lcom/android/launcher3/bottomsearch/ExpandTips;Landroid/widget/ImageView;I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_177

    new-instance v1, Landroid/graphics/Rect;

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v3, v18

    move/from16 v2, v19

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewportOffset:Landroid/graphics/Rect;

    goto :goto_186

    :cond_177
    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v3, v18

    move/from16 v2, v19

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewportOffset:Landroid/graphics/Rect;

    :goto_186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public refresh()V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMode:I

    if-nez v0, :cond_b

    const v0, 0x7f0403a4

    const v1, 0x7f130204

    goto :goto_11

    :cond_b
    const v0, 0x7f0403a2

    const v1, 0x7f130206

    :goto_11
    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher3/R$styleable;->COUIToolTips:[I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowOverflow:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    if-eq v0, v3, :cond_70

    const/16 v1, 0x80

    if-ne v0, v1, :cond_61

    goto :goto_70

    :cond_61
    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mLeftOrTop:Z

    if-eqz v1, :cond_6a

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6c

    :cond_6a
    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    :goto_6c
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7e

    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mLeftOrTop:Z

    if-eqz v1, :cond_79

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7b

    :cond_79
    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    :goto_7b
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_7e
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDismissOnTouchOutside(Z)V
    .registers 2

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto :goto_14

    :cond_d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :goto_14
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->show(Landroid/view/View;Z)V

    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/bottomsearch/ExpandTips;->showWithDirection(Landroid/view/View;IZ)V

    return-void
.end method

.method public showWithDirection(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->showWithDirection(Landroid/view/View;IZ)V

    return-void
.end method

.method public showWithDirection(Landroid/view/View;IZ)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    iget p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    const/16 v0, 0x20

    if-eq p2, v0, :cond_19

    const/16 v1, 0x40

    if-ne p2, v1, :cond_33

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-eqz p2, :cond_2b

    iget p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    if-ne p2, v0, :cond_28

    move v1, v2

    :cond_28
    iput v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    goto :goto_33

    :cond_2b
    iget p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    if-ne p2, v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    iput v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mShowDirection:I

    :cond_33
    :goto_33
    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mAnchor:Landroid/view/View;

    iget-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->registerOrientationHandler()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    aget v1, p1, v0

    aget p1, p1, v2

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->sizePopupWindow()V

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/launcher3/bottomsearch/ExpandTips;->refreshCoordinated(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/bottomsearch/ExpandTips;->prepareContent(Landroid/graphics/Rect;Z)V

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->calculatePivot()V

    invoke-direct {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->animateEnter()V

    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mParent:Landroid/view/View;

    iget-object p2, p0, Lcom/android/launcher3/bottomsearch/ExpandTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, p3, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
