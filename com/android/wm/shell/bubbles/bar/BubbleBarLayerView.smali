.class public Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field private static final SCRIM_ALPHA:F = 0.2f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

.field private final mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

.field private mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field private mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

.field private mIsExpanded:Z

.field private mOnLeft:Z

.field private final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private final mScrimView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Region;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    const-string v0, "BubbleBarLayerView"

    sput-object v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mOnLeft:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mScrimView:Landroid/view/View;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/android/launcher/u;

    invoke-direct {p1, p0}, Lcom/android/launcher/u;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->lambda$collapse$1(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private getTouchableRegion(Landroid/graphics/Region;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTempRect:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_15
    return-void
.end method

.method private synthetic lambda$collapse$1(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    return-void
.end method

.method private showScrim(Z)V
    .registers 2

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mScrimView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3e4ccccd  # 0.2f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2d

    :cond_19
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mScrimView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2d
    return-void
.end method

.method private updateExpandedView()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBarExpandedViewPadding()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewWidthForBubbleBar()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForBubbleBar()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mOnLeft:Z

    if-eqz v2, :cond_3c

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setX(F)V

    goto :goto_4e

    :cond_3c
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    int-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setX(F)V

    :goto_4e
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->updateLocation()V

    return-void
.end method


# virtual methods
.method public collapse()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    new-instance v3, Lcom/android/wm/shell/animation/c;

    invoke-direct {v3, p0, v1}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->animateCollapse(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleController;->getSysuiProxy()Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->onStackExpandChanged(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showScrim(Z)V

    return-void
.end method

.method public isExpanded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    return p0
.end method

.method public isOnLeft()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mOnLeft:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    :cond_14
    return-void
.end method

.method public onDisplaySizeChanged()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->updateExpandedView()V

    :cond_b
    return-void
.end method

.method public showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .registers 5

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_23

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    :cond_23
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-nez v1, :cond_48

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewWidthForBubbleBar()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForBubbleBar()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_48
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->getSysuiProxy()Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->onStackExpandChanged(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->animateExpansion(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showScrim(Z)V

    return-void
.end method
