.class public Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;
.super Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "SwipeUpHandlerExtLargeScreenImpl"


# instance fields
.field private handlingInterruptAnimateToThumbnail:Z

.field private tempRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->Companion:Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->tempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static final synthetic access$onHandlingInterruptAnimateToThumbnailEnd(Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->onHandlingInterruptAnimateToThumbnailEnd()V

    return-void
.end method

.method private final handleUpdateAnimToCurrentTargetRect(Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->enableInterruptAnimateToThumbnail(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p2

    if-eqz p2, :cond_16

    iget-object p2, p2, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_31
    return-void
.end method

.method private final onHandlingInterruptAnimateToThumbnailEnd()V
    .registers 3

    const-string v0, "SwipeUpHandlerExtLargeScreenImpl"

    const-string v1, "animToCurrent end."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    :cond_17
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hideCurrentSurface()V

    :cond_20
    iput-boolean v1, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->handlingInterruptAnimateToThumbnail:Z

    return-void
.end method

.method private final onHandlingInterruptAnimateToThumbnailStart()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->handlingInterruptAnimateToThumbnail:Z

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    :cond_12
    return-void
.end method

.method private final supportInterruptAnimateToThumbnail(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z
    .registers 2

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public enableInterruptAnimateToThumbnail(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->supportInterruptAnimateToThumbnail(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->handlingInterruptAnimateToThumbnail:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onAnimateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V
    .registers 11

    const-string/jumbo p1, "velocityPxPerMs"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p6}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->supportInterruptAnimateToThumbnail(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p9, :cond_1e

    invoke-virtual {p9}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p3

    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p3

    if-ne p3, p1, :cond_1e

    move p3, p1

    goto :goto_1f

    :cond_1e
    move p3, p2

    :goto_1f
    const-string p4, "SwipeUpHandlerExtLargeScreenImpl"

    if-eqz p3, :cond_34

    const-string p1, "animToCurrent running, hide the running taskView"

    invoke-static {p4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->onHandlingInterruptAnimateToThumbnailStart()V

    new-instance p1, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$1;-><init>(Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;)V

    invoke-virtual {p9, p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_51

    :cond_34
    if-eqz p10, :cond_3d

    invoke-virtual {p10}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->isStarted()Z

    move-result p3

    if-ne p3, p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move p1, p2

    :goto_3e
    if-eqz p1, :cond_51

    const-string/jumbo p1, "reverseInheritAnim running, hide the running taskView"

    invoke-static {p4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->onHandlingInterruptAnimateToThumbnailStart()V

    new-instance p1, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl$onAnimateToProgressInternal$2;-><init>(Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;)V

    invoke-virtual {p10, p1}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->addAnimationListener(Lcom/oplus/quickstep/anim/SwipeSpringAnimation$IAnimationListener;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public onUpdateAnimToCurrentTargetRect(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->onUpdateAnimToCurrentTargetRect(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->handleUpdateAnimToCurrentTargetRect(Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    return-void
.end method

.method public onUpdateReverseInheritAnimTargetRect(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->onUpdateReverseInheritAnimTargetRect(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;->handleUpdateAnimToCurrentTargetRect(Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    return-void
.end method
