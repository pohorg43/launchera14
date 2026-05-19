.class public final Lcom/android/quickstep/SwipeUpHandlerExtFoldScreenImpl;
.super Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public applyIconRectOffset(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FI)V
    .registers 6

    const-string/jumbo v0, "orientationHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1, p2, p3, p4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;FI)V

    goto :goto_18

    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->applyIconRectOffset(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FI)V

    :goto_18
    return-void
.end method

.method public getAngleInCreateAnimateMiniWindow()F
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-super {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getAngleInCreateAnimateMiniWindow()F

    move-result p0

    :goto_c
    return p0
.end method

.method public getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;
    .registers 4
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

    const-string/jumbo p0, "windRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "startRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "iconRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object p0

    const-string p1, "getAnimOrientationHandler(windRect, iconRect)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCropHeightInCreateAnimateMiniWindow()F
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtFoldScreenImpl;->isTaskLandscape()Z

    move-result p0

    if-eqz p0, :cond_1d

    const p0, 0x7f070acc

    goto :goto_20

    :cond_1d
    const p0, 0x7f070ac9

    :goto_20
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0

    :cond_25
    invoke-super {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getCropHeightInCreateAnimateMiniWindow()F

    move-result p0

    return p0
.end method

.method public getCropWidthInCreateAnimateMiniWindow()F
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtFoldScreenImpl;->isTaskLandscape()Z

    move-result p0

    if-eqz p0, :cond_1d

    const p0, 0x7f070ac9

    goto :goto_20

    :cond_1d
    const p0, 0x7f070acc

    :goto_20
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0

    :cond_25
    invoke-super {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getCropWidthInCreateAnimateMiniWindow()F

    move-result p0

    return p0
.end method

.method public getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .registers 3

    const-string/jumbo v0, "startRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1b

    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_1d

    :cond_1b
    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    :goto_1d
    const-string/jumbo p1, "{\n            if (startR…T\n            }\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_28

    :cond_24
    invoke-super {p0, p1}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    :goto_28
    return-object p0
.end method

.method public getRightOffsetInCreateAnimateMiniWindow()F
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "mHost!!.mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f070aca

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSystemDensityDpi()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getDimensionPx(Landroid/content/Context;II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_21
    invoke-super {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getRightOffsetInCreateAnimateMiniWindow()F

    move-result p0

    return p0
.end method

.method public getTopOffsetInCreateAnimateMiniWindow()F
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "mHost!!.mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSystemDensityDpi()I

    move-result v0

    const v1, 0x7f070acb

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getDimensionPx(Landroid/content/Context;II)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public isLandscape()Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-super {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isLandscape()Z

    move-result p0

    :goto_c
    return p0
.end method

.method public isTaskLandscape()Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_24

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_25

    :cond_24
    const/4 p0, -0x1

    :goto_25
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    return p0

    :cond_2a
    invoke-super {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result p0

    return p0
.end method

.method public offsetZoomWindowRectBottom(Landroid/graphics/RectF;)V
    .registers 3

    const-string/jumbo v0, "tmpSrc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070ac9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_22
    return-void
.end method

.method public setTaskViewSimulatorScroll()V
    .registers 1

    return-void
.end method

.method public updateIconRectCrop(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V
    .registers 15

    const-string/jumbo v0, "orientationHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowCropRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateIconRectCrop(Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    goto :goto_26

    :cond_1c
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-super/range {v1 .. v7}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->updateIconRectCrop(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V

    :goto_26
    return-void
.end method

.method public updateTargetBoundsInCreateAnimateMiniWindow(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[FFF)V
    .registers 9

    const-string/jumbo v0, "targetBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeWindowRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-super/range {p0 .. p7}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->updateTargetBoundsInCreateAnimateMiniWindow(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[FFF)V

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtFoldScreenImpl;->isTaskLandscape()Z

    move-result p0

    if-eqz p0, :cond_3a

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->scale(F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr p0, p2

    sub-float/2addr p0, p7

    invoke-virtual {p1, p0, p6}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    aput p1, p5, p0

    goto :goto_53

    :cond_3a
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p0, p4

    div-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->scale(F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, p4

    sub-float/2addr p0, p2

    sub-float/2addr p0, p7

    invoke-virtual {p1, p0, p6}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_53
    return-void
.end method

.method public updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 8

    const-string/jumbo v0, "targetCropRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeWindowRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V

    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtFoldScreenImpl;->isTaskLandscape()Z

    move-result p0

    if-eqz p0, :cond_2d

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, p3

    mul-float/2addr p2, p4

    sub-float/2addr v0, p2

    float-to-int p2, v0

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4c

    :cond_2d
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr p0, p3

    mul-float/2addr p0, p4

    sub-float/2addr v2, p0

    float-to-int p0, v2

    sub-int/2addr v1, p0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_4c
    return-void
.end method

.method public updateTmpSrc(Landroid/graphics/RectF;)V
    .registers 3

    const-string/jumbo v0, "tmpSrc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070acd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_22
    return-void
.end method

.method public updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FFFF)V
    .registers 10

    const-string/jumbo v0, "targetCropRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zoomWindowRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeWindowRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p8}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FFFF)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtFoldScreenImpl;->isTaskLandscape()Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-eqz p0, :cond_2d

    iget p0, p3, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, p5

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->right:I

    :cond_2d
    return-void
.end method
