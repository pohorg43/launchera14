.class public final Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/ISwipeUpHandlerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static enableInterruptAnimateToThumbnail(Lcom/android/quickstep/ISwipeUpHandlerExt;Lcom/android/quickstep/GestureState$GestureEndTarget;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static offsetZoomWindowRectBottom(Lcom/android/quickstep/ISwipeUpHandlerExt;Landroid/graphics/RectF;)V
    .registers 2

    const-string/jumbo p0, "tmpSrc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onAnimateToProgressInternal(Lcom/android/quickstep/ISwipeUpHandlerExt;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V
    .registers 11

    const-string/jumbo p0, "velocityPxPerMs"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onUpdateAnimToCurrentTargetRect(Lcom/android/quickstep/ISwipeUpHandlerExt;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 4

    return-void
.end method

.method public static onUpdateReverseInheritAnimTargetRect(Lcom/android/quickstep/ISwipeUpHandlerExt;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 4

    return-void
.end method

.method public static setTaskViewSimulatorScroll(Lcom/android/quickstep/ISwipeUpHandlerExt;)V
    .registers 1

    return-void
.end method
