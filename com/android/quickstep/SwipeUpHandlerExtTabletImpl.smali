.class public final Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl;
.super Lcom/android/quickstep/SwipeUpHandlerExtLargeScreenImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl$Companion;

.field private static final GO_HOME_REGION_BOTTOM_INSET_FRACTION:F = 0.15f

.field private static final GO_HOME_REGION_LEFT_INSET_FRACTION:F = 0.15f

.field private static final GO_HOME_REGION_RIGHT_INSET_FRACTION:F = 0.15f

.field private static final GO_HOME_REGION_TOP_INSET_FRACTION:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl;->Companion:Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl$Companion;

    return-void
.end method

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

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1, p2, p3, p4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;FI)V

    goto :goto_18

    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->applyIconRectOffset(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FI)V

    :goto_18
    return-void
.end method

.method public getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;
    .registers 5
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

    const-string/jumbo v0, "windRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "startRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl;->getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public getCropHeightInCreateAnimateMiniWindow()F
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f070ad2

    goto :goto_d

    :cond_a
    const v0, 0x7f070acf

    :goto_d
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getCropWidthInCreateAnimateMiniWindow()F
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f070acf

    goto :goto_d

    :cond_a
    const v0, 0x7f070ad2

    :goto_d
    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getGoHomeRegion(II)Landroid/graphics/RectF;
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtTabletImpl;->isLandscape()Z

    move-result p0

    const/4 v0, 0x0

    const v1, 0x3e19999a  # 0.15f

    const v2, 0x3f59999a  # 0.85f

    if-eqz p0, :cond_19

    new-instance p0, Landroid/graphics/RectF;

    int-to-float p1, p1

    mul-float/2addr v1, p1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    mul-float/2addr p1, v2

    mul-float/2addr p2, v2

    invoke-direct {p0, v1, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_24

    :cond_19
    new-instance p0, Landroid/graphics/RectF;

    int-to-float p2, p2

    mul-float/2addr v1, p2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr p2, v2

    mul-float/2addr p1, v2

    invoke-direct {p0, v1, v0, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_24
    return-object p0
.end method

.method public getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .registers 3

    const-string/jumbo v0, "startRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

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

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "mHost!!.mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSystemDensityDpi()I

    move-result v0

    const v1, 0x7f070ad1

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getDimensionPx(Landroid/content/Context;II)I

    move-result p0

    int-to-float p0, p0

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

    const v1, 0x7f070ad0

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getDimensionPx(Landroid/content/Context;II)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public isLandscape()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    move-result-object p0

    if-eqz p0, :cond_19

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    const/4 v0, 0x1

    if-nez p0, :cond_1e

    goto :goto_24

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_30

    :goto_24
    const/4 v1, 0x3

    if-nez p0, :cond_28

    goto :goto_2f

    :cond_28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2f

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    :cond_30
    :goto_30
    return v0
.end method

.method public updateIconRectCrop(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/Rect;FIZ)V
    .registers 15

    const-string/jumbo v0, "orientationHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowCropRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

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
    .registers 8

    const-string/jumbo p0, "targetBounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "closeWindowRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "angle"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    cmpg-float p0, p3, p4

    if-gez p0, :cond_1a

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p4, p0

    goto :goto_20

    :cond_1a
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float p4, p3, p0

    :goto_20
    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->scale(F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr p0, p3

    sub-float/2addr p0, p7

    invoke-virtual {p1, p0, p6}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 6

    const-string/jumbo p0, "targetCropRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "closeWindowRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    cmpg-float p0, p3, p4

    if-gez p0, :cond_21

    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p3, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr p2, p3

    sub-float/2addr v0, p2

    float-to-int p2, v0

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_32

    :cond_21
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p4, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float/2addr p2, p4

    sub-float/2addr v0, p2

    float-to-int p2, v0

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_32
    return-void
.end method

.method public updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FFFF)V
    .registers 10

    const-string/jumbo p0, "targetCropRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "targetBounds"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "zoomWindowRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "closeWindowRect"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    cmpg-float p5, p5, p6

    if-gez p5, :cond_2d

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p2

    goto :goto_36

    :cond_2d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p2

    :goto_36
    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->scale(F)V

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr p1, p2

    sub-float/2addr p1, p8

    invoke-virtual {p0, p1, p7}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0, p3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-void
.end method
