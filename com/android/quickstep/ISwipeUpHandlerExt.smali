.class public interface abstract Lcom/android/quickstep/ISwipeUpHandlerExt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract applyIconRectOffset(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FI)V
.end method

.method public abstract enableInterruptAnimateToThumbnail(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z
.end method

.method public abstract getAngleInCreateAnimateMiniWindow()F
.end method

.method public abstract getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCropHeightInCreateAnimateMiniWindow()F
.end method

.method public abstract getCropWidthInCreateAnimateMiniWindow()F
.end method

.method public abstract getGoHomeRegion(II)Landroid/graphics/RectF;
.end method

.method public abstract getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;
.end method

.method public abstract getRightOffsetInCreateAnimateMiniWindow()F
.end method

.method public abstract getTopOffsetInCreateAnimateMiniWindow()F
.end method

.method public abstract getZoomWindowRectByZoomWindowManager(I)Landroid/graphics/RectF;
.end method

.method public abstract isLandscape()Z
.end method

.method public abstract isTaskLandscape()Z
.end method

.method public abstract offsetZoomWindowRectBottom(Landroid/graphics/RectF;)V
.end method

.method public abstract onAnimateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZLcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)V
.end method

.method public abstract onUpdateAnimToCurrentTargetRect(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
.end method

.method public abstract onUpdateReverseInheritAnimTargetRect(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Landroid/graphics/RectF;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
.end method

.method public abstract setTaskViewSimulatorScroll()V
.end method

.method public abstract updateIconRectCrop(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V
.end method

.method public abstract updateTargetBoundsInCreateAnimateMiniWindow(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[FFF)V
.end method

.method public abstract updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
.end method

.method public abstract updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FFFF)V
.end method
