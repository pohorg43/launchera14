.class public Lcom/android/quickstep/views/FloatingWidgetView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/views/FloatingView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1f
.end annotation


# static fields
.field private static final sTmpMatrix:Landroid/graphics/Matrix;


# instance fields
.field private mAppTargetIsTranslucent:Z

.field private mAppWidgetBackgroundView:Landroid/view/View;

.field private mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private final mBackgroundOffset:Landroid/graphics/RectF;

.field private mBackgroundPosition:Landroid/graphics/RectF;

.field private final mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

.field private mEndRunnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFastFinishRunnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mForegroundOverlayView:Landroid/view/GhostView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIconOffsetY:F

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mListenerView:Lcom/android/launcher3/views/ListenerView;

.field private mOnTargetChangeRunnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/FloatingWidgetView;->sTmpMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/FloatingWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/FloatingWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundOffset:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Lcom/android/launcher3/views/ListenerView;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/views/ListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    new-instance v0, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/FloatingWidgetView;->lambda$init$0(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method

.method private finish(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->finish()V

    iget-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->endDeferringUpdates()V

    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->recycle()V

    iget-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p1

    const v0, 0x7f0d0127

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    return-void
.end method

.method public static getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getColorBackground(Landroid/content/Context;)I

    move-result p0

    :goto_11
    return p0
.end method

.method public static getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;
    .registers 16

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    const v2, 0x7f0d0127

    invoke-virtual {v0, v2, p0, v8}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->recycle()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/quickstep/views/FloatingWidgetView;->init(Lcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)V

    invoke-virtual {v8, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method private static getRelativePosition(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 9

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x2

    aput v2, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x3

    aput v2, v0, v5

    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    aget p0, v0, v1

    aget p1, v0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aget p1, v0, v3

    aget v2, v0, v5

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aget v1, v0, v1

    aget v2, v0, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aget v2, v0, v3

    aget v0, v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p2, p0, p1, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private init(Lcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)V
    .registers 8

    iput-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->beginDeferringUpdates()V

    iput-object p3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iput-boolean p6, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppTargetIsTranslucent:Z

    new-instance p2, Lcom/android/quickstep/views/d0;

    invoke-direct {p2, p0, p1}, Lcom/android/quickstep/views/d0;-><init>(Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/launcher3/dragndrop/DragLayer;)V

    iput-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-static {p2}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    if-nez p2, :cond_1e

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    :cond_1e
    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    iget-object p3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    invoke-static {p2, p1, p3}, Lcom/android/quickstep/views/FloatingWidgetView;->getRelativePosition(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    iget-object p3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object p6, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundOffset:Landroid/graphics/RectF;

    invoke-static {p2, p3, p6}, Lcom/android/quickstep/views/FloatingWidgetView;->getRelativePosition(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    iget-boolean p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppTargetIsTranslucent:Z

    if-nez p2, :cond_5c

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    iget-object p3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object p6, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    invoke-virtual {p2, p3, p6, p5, p7}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->init(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/view/View;FI)V

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p0, p4, p4, p2, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_5c

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-static {p2, p0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->positionViews()V

    :cond_5c
    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    new-instance p3, Lcom/android/quickstep/views/e0;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/e0;-><init>(Lcom/android/quickstep/views/FloatingWidgetView;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isUninitialized()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private synthetic lambda$init$0(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/FloatingWidgetView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void
.end method

.method private positionViews()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mIconOffsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    if-eqz v0, :cond_8d

    sget-object v0, Lcom/android/quickstep/views/FloatingWidgetView;->sTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundOffset:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundOffset:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mIconOffsetY:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    invoke-virtual {p0, v0}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_8d
    return-void
.end method

.method private recycle()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mIconOffsetY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mFastFinishRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mForegroundOverlayView:Landroid/view/GhostView;

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetBackgroundView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->recycle()V

    return-void
.end method


# virtual methods
.method public fastFinish()V
    .registers 3

    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mFastFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_18
    return-void
.end method

.method public getInitialCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->getMaximumRadius()F

    move-result p0

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->positionViews()V

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method

.method public setFastFinishRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mFastFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnTargetChangeListener(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setPositionOffsetY(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mIconOffsetY:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->onGlobalLayout()V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFF)V
    .registers 7

    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->isUninitialized()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppTargetIsTranslucent:Z

    if-eqz v0, :cond_b

    goto :goto_1d

    :cond_b
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundView:Lcom/android/quickstep/views/FloatingWidgetBackgroundView;

    invoke-virtual {p2, p5, p4}, Lcom/android/quickstep/views/FloatingWidgetBackgroundView;->update(FF)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAlpha(F)V

    iput-object p1, p0, Lcom/android/quickstep/views/FloatingWidgetView;->mBackgroundPosition:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->positionViews()V

    :cond_1d
    :goto_1d
    return-void
.end method
